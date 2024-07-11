<?php

/**
 *
 */

class Page_jugarController extends Page_mainController
{

	public $botonactivo = 2;

	public $BtnActivoBotonera;


	public function init()
	{


		$this->BtnActivoBotonera;
		parent::init();
	}


	public function indexAction()
	{
		if ($_SESSION['kt_login_id'] == "" || $_SESSION['paso'] != '4') {
			header("Location:/page/inscribase");
		}
		$this->_view->contenido = $this->template->getContentseccion(8);
		$faseModel = new Administracion_Model_DbTable_Fases();

		$this->_view->BtnActivoBotonera = $this->_getSanitizedParam("f");


		$this->_view->fase = $fase = $faseModel->getById($this->_getSanitizedParam("f"));




		$contentModel = new Administracion_Model_DbTable_Partidos();
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
		$resultadosModel = new Administracion_Model_DbTable_Resultados();
		$configModel = new Administracion_Model_DbTable_Config();
		$config = $configModel->getById(1);
		$this->_view->horasminimo = $config->config_horasminimo;

		$partidos = $contentModel->getPartidos("", "fecha ASC, hora ASC");
		//Filtros
		$this->_view->fases = $contentModel->getFases("", "fase ASC");
		$this->_view->fechas = $contentModel->getFechas("", "fecha ASC");
		$this->_view->equipos = $equipoModel->getList("", "nombre ASC");
		$this->_view->grupos = $grupoModel->getList("", "");


		// Obtener parámetros sanitizados

		$fecha = $this->_getSanitizedParam("fecha");
		$grupo = $this->_getSanitizedParam("grupo");
		$equipo = $this->_getSanitizedParam("equipo");


		// Obtener grupos

		$grupos = $this->getGrupos();
		$this->_view->grupos = $grupos;



		// Construir la cláusula WHERE adicional según los filtros seleccionados
		$additionalConditions = "";
		if ($fecha != "") {
			$this->_view->fecha = $fecha;
			$additionalConditions .= " AND fecha = '$fecha' ";
		}
		if ($grupo != "") {
			$this->_view->grupo = $grupo;
			$additionalConditions .= " AND equipos.grupo = '$grupo' ";
		}
		if ($equipo != "") {
			$this->_view->equipo = $equipo;
			$additionalConditions  .= " AND (equipos.id = '$equipo' OR equipos2.id = '$equipo') ";
		}


		if ($additionalConditions != "") {
			$partidos = $contentModel->getPartidos(" 1=1 $additionalConditions ", "fecha ASC, hora ASC");
		}




		$fasesModel = new Administracion_Model_DbTable_Fases();
		$this->_view->fases = $fasesModel->getList("", "");

		$equipos = $equipoModel->getList("", "nombre ASC");

		foreach ($equipos as $equipo) {
			$equipo_array[$equipo->id] = $equipo->nombre;
		}
		$this->_view->equipo_array = $equipo_array;

		$usuario = $_SESSION['kt_login_id'];
		$hoy = date("Y-m-d H:i:s");
		//$hoy = "2018-07-01 07:00:00";

		foreach ($partidos as $partido) {
			$equipo_id = $partido->equipo1;
			$equipo = $equipoModel->getList(" id = '$equipo_id' ", "");
			$partido->grupo1 = $equipo[0]->grupo;

			$partido_id = $partido->id;
			$resultado = $resultadosModel->getList(" partido='$partido_id' AND usuario='$usuario' ", "");
			$partido->resultado_valor1 = $resultado[0]->valor1;
			$partido->resultado_valor2 = $resultado[0]->valor2;
			$partido->resultado_ganador = $resultado[0]->ganador;

			$partido->diferencia = $this->diferencia($partido->fecha . " " . $partido->hora, $hoy);
			 /* echo $partido->fecha . " " . $partido->hora;
			 echo "<br>";
			 echo $partido->diferencia;
			 echo "<br>"; */

		}
		$this->_view->partidos = $partidos;


		$partidos = $contentModel->getList(" fase='1' ", "");
		$existen[1] = count($partidos);
		$partidos = $contentModel->getList(" fase='2' ", "");
		$existen[2] = count($partidos);
		$partidos = $contentModel->getList(" fase='3' ", "");
		$existen[3] = count($partidos);
		$partidos = $contentModel->getList(" fase='4' ", "");
		$existen[4] = count($partidos);
		$partidos = $contentModel->getList(" fase='5' ", "");
		$existen[5] = count($partidos);
		$this->_view->existen = $existen;
	}

	public function resumenAction()
	{
		// $this->setLayout("blanco");
		$this->_view->contenido = $this->template->getContentseccion(8);

		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Resultados();
		$partidosModel = new Administracion_Model_DbTable_Partidos();
		$equiposModel = new Administracion_Model_DbTable_Equipos();

		$configModel = new Administracion_Model_DbTable_Config();
		$config = $configModel->getById(1);
		$this->_view->horasminimo = $config->config_horasminimo;

		$partidosEnviados = $_POST['partidos_enviados'] ?? [];
		$hoy = date("Y-m-d H:i:s");

		// print_r($partidosEnviados);
		foreach ($partidosEnviados as $partidoId) {
			$valor1 = $this->_getSanitizedParam("valor1_" . $partidoId);
			$valor2 = $this->_getSanitizedParam("valor2_" . $partidoId);
			$partido = $partidosModel->getById($partidoId);
			if ($valor1 >= 0 && $valor2 >= 0) {
				$resultados[$partidoId]['partido'] = $partidoId;
				$resultados[$partidoId]['info'] = $partido;

				$resultados[$partidoId]['info']->diferencia = $this->diferencia($partido->fecha . " " . $partido->hora, $hoy );

				$resultados[$partidoId]['info']->equipo1 = $equiposModel->getById($partido->equipo1);
				$resultados[$partidoId]['info']->equipo2 = $equiposModel->getById($partido->equipo2);
				$resultados[$partidoId]['valor1'] = $this->_getSanitizedParam("valor1_" . $partidoId);
				$resultados[$partidoId]['valor2'] = $this->_getSanitizedParam("valor2_" . $partidoId);
			}
		}
		$this->_view->resultados = $resultados;
		// echo '<pre>';
		// print_r($resultados);
		// echo '</pre>';
	}
	public function guardarAction()
	{
		$this->setLayout("blanco");
		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Resultados();
		$partidosModel = new Administracion_Model_DbTable_Partidos();
		$logModel = new Administracion_Model_DbTable_Log();
		$configModel = new Administracion_Model_DbTable_Config();
		$config = $configModel->getById(1);
		$horasminimo = $config->config_horasminimo;
		$partidosEnviados = $_POST['partidos_enviados'] ?? [];

		foreach ($partidosEnviados as $partidoId) {
			$partido = $partidosModel->getById($partidoId);
			$data['usuario'] = $usuario;
			$data['partido'] = $partidoId;
			$data['valor1'] = $this->_getSanitizedParam("valor1_" . $partidoId);
			$data['valor2'] = $this->_getSanitizedParam("valor2_" . $partidoId);

			//calcular ganador
			if ($data['valor1'] >= 0 && $data['valor2'] >= 0) {
				if ($data['valor1'] > $data['valor2']) {
					$data['ganador'] = $partido->equipo1;
				} else if ($data['valor1'] < $data['valor2']) {
					$data['ganador'] = $partido->equipo2;
				} else {
					$data['ganador'] = -1;
				}
			}


			$data['fecha'] = date("Y-m-d H:i:s");



			$partido->diferencia = $this->diferencia($partido->fecha . " " . $partido->hora, $data['fecha']);

			if ($data['usuario'] != "" && $data['partido'] != "" && $data['valor1'] >= 0  &&  $data['valor2'] >= 0  && $partido->diferencia >= $horasminimo) {
				/* echo "<pre>";
			print_r($data);
			echo "/<pre>"; */

				$resultadosModel->agregar($data);
			}
			if ($data['usuario'] != "" && $data['partido'] != "") {
				//log
				$data['log_tipo'] = "resultados";
				$data['log_log'] = print_r($data, true);
      		

				$logModel->insert($data);
			}
		}

		header("Location:/page/jugar");
	}

	public function octavosAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(9);
		$faseModel = new Administracion_Model_DbTable_Fases();

		$this->_view->BtnActivoBotonera = $this->_getSanitizedParam("f");


		$this->_view->fase = $fase = $faseModel->getById($this->_getSanitizedParam("f"));


		$usuario = $_SESSION['kt_login_id'];
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
		$this->_view->grupos = $grupoModel->getList("", " nombre ASC ");
		$this->_view->equipos = $equipoModel->getList("", " nombre ASC ");

		$resultadosModel = new Administracion_Model_DbTable_Octavos();
		$resultados = $resultadosModel->getList(" usuario='$usuario' ", "");
		$primero[1] = $resultados[0]->a1;
		$primero[2] = $resultados[0]->b1;
		$primero[3] = $resultados[0]->c1;
		$primero[4] = $resultados[0]->d1;
		$primero[5] = $resultados[0]->e1;
		$primero[6] = $resultados[0]->f1;
		$primero[7] = $resultados[0]->g1;
		$primero[8] = $resultados[0]->h1;
		$segundo[1] = $resultados[0]->a2;
		$segundo[2] = $resultados[0]->b2;
		$segundo[3] = $resultados[0]->c2;
		$segundo[4] = $resultados[0]->d2;
		$segundo[5] = $resultados[0]->e2;
		$segundo[6] = $resultados[0]->f2;
		$segundo[7] = $resultados[0]->g2;
		$segundo[8] = $resultados[0]->h2;
		$this->_view->primero = $primero;
		$this->_view->segundo = $segundo;
	}

	public function guardaroctavosAction()
	{
		$this->setLayout("blanco");

		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Octavos();
		$logModel = new Administracion_Model_DbTable_Log();
		$data['usuario'] = $usuario;
		$data['a1'] = $this->_getSanitizedParam("primero1");
		$data['a2'] = $this->_getSanitizedParam("segundo1");
		$data['b1'] = $this->_getSanitizedParam("primero2");
		$data['b2'] = $this->_getSanitizedParam("segundo2");
		$data['c1'] = $this->_getSanitizedParam("primero3");
		$data['c2'] = $this->_getSanitizedParam("segundo3");
		$data['d1'] = $this->_getSanitizedParam("primero4");
		$data['d2'] = $this->_getSanitizedParam("segundo4");
		$data['e1'] = $this->_getSanitizedParam("primero5");
		$data['e2'] = $this->_getSanitizedParam("segundo5");
		$data['f1'] = $this->_getSanitizedParam("primero6");
		$data['f2'] = $this->_getSanitizedParam("segundo6");
		$data['g1'] = $this->_getSanitizedParam("primero7");
		$data['g2'] = $this->_getSanitizedParam("segundo7");
		$data['h1'] = $this->_getSanitizedParam("primero8");
		$data['h2'] = $this->_getSanitizedParam("segundo8");
		$data['fecha'] = date("Y-m-d H:i:s");
		//print_r($data);
		if ($data['usuario'] != "") {
			$resultadosModel->agregar($data);
			//log
			$data['log_tabla'] = "octavos";
			$logModel->insert($data);
		}

		//se reenvia a la fase con el id de la fase, para obtener los datos de las fechas de apertura y cierre
		$fase = $this->_getSanitizedParam("f");

		header("Location:/page/jugar/octavos/?f=" . $fase);
	}

	public function cuartosAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(10);
		$faseModel = new Administracion_Model_DbTable_Fases();

		$this->_view->BtnActivoBotonera = $this->_getSanitizedParam("f");

		$this->_view->fase = $fase = $faseModel->getById($this->_getSanitizedParam("f"));

		$usuario = $_SESSION['kt_login_id'];
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
		$this->_view->grupos = $grupoModel->getList("", " nombre ASC ");
		$this->_view->equipos = $equipoModel->getList("", " nombre ASC ");

		$resultadosModel = new Administracion_Model_DbTable_Cuartos();
		$resultados = $resultadosModel->getList(" usuario='$usuario' ", "");
		$e[1] = $resultados[0]->e1;
		$e[2] = $resultados[0]->e2;
		$e[3] = $resultados[0]->e3;
		$e[4] = $resultados[0]->e4;
		$e[5] = $resultados[0]->e5;
		$e[6] = $resultados[0]->e6;
		$e[7] = $resultados[0]->e7;
		$e[8] = $resultados[0]->e8;
		$this->_view->e = $e;
	}

	public function guardarcuartosAction()
	{
		$this->setLayout("blanco");

		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Cuartos();
		$logModel = new Administracion_Model_DbTable_Log();
		$data['usuario'] = $usuario;
		$data['e1'] = $this->_getSanitizedParam("e1");
		$data['e2'] = $this->_getSanitizedParam("e2");
		$data['e3'] = $this->_getSanitizedParam("e3");
		$data['e4'] = $this->_getSanitizedParam("e4");
		$data['e5'] = $this->_getSanitizedParam("e5");
		$data['e6'] = $this->_getSanitizedParam("e6");
		$data['e7'] = $this->_getSanitizedParam("e7");
		$data['e8'] = $this->_getSanitizedParam("e8");
		$data['fecha'] = date("Y-m-d H:i:s");
		//print_r($data);
		if ($data['usuario'] != "") {
			$resultadosModel->agregar($data);
			//log
			$data['log_tabla'] = "cuartos";
			$logModel->insert($data);
		}

		//se reenvia a la fase con el id de la fase, para obtener los datos de las fechas de apertura y cierre
		$fase = $this->_getSanitizedParam("f");
		header("Location:/page/jugar/cuartos/?f=" . $fase);
	}

	public function semifinalAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(11);
		$faseModel = new Administracion_Model_DbTable_Fases();
		$this->_view->BtnActivoBotonera = $this->_getSanitizedParam("f");


		$this->_view->fase = $fase = $faseModel->getById($this->_getSanitizedParam("f"));
		$usuario = $_SESSION['kt_login_id'];
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
		$this->_view->grupos = $grupoModel->getList("", " nombre ASC ");
		$this->_view->equipos = $equipoModel->getList("", " nombre ASC ");

		$resultadosModel = new Administracion_Model_DbTable_Semis();
		$resultados = $resultadosModel->getList(" usuario='$usuario' ", "");
		$e[1] = $resultados[0]->e1;
		$e[2] = $resultados[0]->e2;
		$e[3] = $resultados[0]->e3;
		$e[4] = $resultados[0]->e4;

		$this->_view->e = $e;
	}

	public function guardarsemifinalAction()
	{
		$this->setLayout("blanco");

		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Semis();
		$logModel = new Administracion_Model_DbTable_Log();
		$data['usuario'] = $usuario;
		$data['e1'] = $this->_getSanitizedParam("e1");
		$data['e2'] = $this->_getSanitizedParam("e2");
		$data['e3'] = $this->_getSanitizedParam("e3");
		$data['e4'] = $this->_getSanitizedParam("e4");

		$data['fecha'] = date("Y-m-d H:i:s");
		//print_r($data);
		if ($data['usuario'] != "") {
			$resultadosModel->agregar($data);
			//log
			$data['log_tabla'] = "semis";
			$logModel->insert($data);
		}

		//se reenvia a la fase con el id de la fase, para obtener los datos de las fechas de apertura y cierre
		$fase = $this->_getSanitizedParam("f");
		header("Location:/page/jugar/semifinal/?f=" . $fase);
	}

	public function finalAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(12);
		$this->_view->BtnActivoBotonera = $this->_getSanitizedParam("f");

		$faseModel = new Administracion_Model_DbTable_Fases();

		$this->_view->fase = $fase = $faseModel->getById($this->_getSanitizedParam("f"));

		$usuario = $_SESSION['kt_login_id'];
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
		$this->_view->grupos = $grupoModel->getList("", " nombre ASC ");
		$this->_view->equipos = $equipoModel->getList("", " nombre ASC ");

		$resultadosModel = new Administracion_Model_DbTable_Final();
		$resultados = $resultadosModel->getList(" usuario='$usuario' ", "");
		$this->_view->resultado = $resultados[0];
	}

	public function guardarfinalAction()
	{
		$this->setLayout("blanco");

		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Final();
		$logModel = new Administracion_Model_DbTable_Log();
		$data['usuario'] = $usuario;
		$data['campeon'] = $this->_getSanitizedParam("campeon");
		$data['subcampeon'] = $this->_getSanitizedParam("subcampeon");
		$data['tercero'] = $this->_getSanitizedParam("tercero");
		$data['cuarto'] = $this->_getSanitizedParam("cuarto");
		$data['fecha'] = date("Y-m-d H:i:s");
		//print_r($data);
		if ($data['usuario'] != "") {
			$resultadosModel->agregar($data);
			//log
			$data['log_tabla'] = "final";
			$logModel->insert($data);
		}
		//se reenvia a la fase con el id de la fase, para obtener los datos de las fechas de apertura y cierre
		$fase = $this->_getSanitizedParam("f");
		header("Location:/page/jugar/final/?f=" . $fase);
	}

	public function otrosAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(13);
		$faseModel = new Administracion_Model_DbTable_Fases();
		$this->_view->BtnActivoBotonera = $this->_getSanitizedParam("f");

		$this->_view->fase = $fase = $faseModel->getById($this->_getSanitizedParam("f"));

		$usuario = $_SESSION['kt_login_id'];
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
		$this->_view->grupos = $grupoModel->getList("", " nombre ASC ");
		$this->_view->equipos = $equipoModel->getList("", " nombre ASC ");

		$resultadosModel = new Administracion_Model_DbTable_Otros();
		$resultados = $resultadosModel->getList(" usuario='$usuario' ", "");
		$this->_view->resultado = $resultados[0];

		$jugadorModel = new Administracion_Model_DbTable_Jugadores();
		$this->_view->jugadores = $jugadorModel->getList(" tipo='1' ", " nombre ASC ");
		$this->_view->jugadores2 = $jugadorModel->getList(" tipo='2' ", " nombre ASC ");
	}

	public function guardarotrosAction()
	{
		$this->setLayout("blanco");

		$usuario = $_SESSION['kt_login_id'];
		$resultadosModel = new Administracion_Model_DbTable_Otros();
		$logModel = new Administracion_Model_DbTable_Log();
		$data['usuario'] = $usuario;
		$data['goleador'] = $this->_getSanitizedParam("goleador");
		$data['valla'] = $this->_getSanitizedParam("valla");
		$data['fecha'] = date("Y-m-d H:i:s");
		// print_r($data);
		if ($data['usuario'] != "") {
			$resultadosModel->agregar($data);
			//log
			$data['log_tabla'] = "otros";
			$logModel->insert($data);
		}

		//se reenvia a la fase con el id de la fase, para obtener los datos de las fechas de apertura y cierre
		$fase = $this->_getSanitizedParam("f");
		header("Location:/page/jugar/otros/?f=" . $fase);
	}

	public function diferencia($fecha, $hoy)
	{
		$segundos = strtotime($fecha) - strtotime($hoy);
		$diferencia1 = round($segundos / 60 / 60, 2);
		return $diferencia1;
	}

	private function getGrupos()
	{
		$modelData = new Administracion_Model_DbTable_Grupos();
		$data = $modelData->getList("");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	function diferenciaHoras($fecha)
	{
		// Crear objetos DateTime para las fechas
		$fechaDada = new DateTime($fecha);
		$fechaActual = new DateTime("now");

		// Calcular la diferencia usando el método diff
		$diferencia = $fechaActual->diff($fechaDada);

		// Convertir la diferencia a horas totales (incluyendo días)
		$horas = $diferencia->days * 24 + $diferencia->h + $diferencia->i / 60 + $diferencia->s / 3600;

		// Retornar la diferencia de horas redondeada a dos decimales
		return round($horas, 2);
	}
}
