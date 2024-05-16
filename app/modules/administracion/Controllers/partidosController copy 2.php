<?php

/**
 * Controlador de Partidos que permite la  creacion, edicion  y eliminacion de los partido del Sistema
 */
class Administracion_partidosController extends Administracion_mainController
{
	public $botonpanel = 11;

	/**
	 * $mainModel  instancia del modelo de  base de datos partido
	 * @var modeloContenidos
	 */
	public $mainModel;

	/**
	 * $route  url del controlador base
	 * @var string
	 */
	protected $route;

	/**
	 * $pages cantidad de registros a mostrar por pagina]
	 * @var integer
	 */
	protected $pages;

	/**
	 * $namefilter nombre de la variable a la fual se le van a guardar los filtros
	 * @var string
	 */
	protected $namefilter;

	/**
	 * $_csrf_section  nombre de la variable general csrf  que se va a almacenar en la session
	 * @var string
	 */
	protected $_csrf_section = "administracion_partidos";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
	 * Inicializa las variables principales del controlador partidos .
	 *
	 * @return void.
	 */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Partidos();
		$this->namefilter = "parametersfilterpartidos";
		$this->route = "/administracion/partidos";
		$this->namepages = "pages_partidos";
		$this->namepageactual = "page_actual_partidos";
		$this->_view->route = $this->route;
		if (Session::getInstance()->get($this->namepages)) {
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
	 * Recibe la informacion y  muestra un listado de  partido con sus respectivos filtros.
	 *
	 * @return void.
	 */
	public function indexAction()
	{
		$title = "Administración de partido";
		$this->getLayout()->setTitle($title);
		$this->_view->titlesection = $title;
		$this->filters();
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$filters = (object)Session::getInstance()->get($this->namefilter);
		$this->_view->filters = $filters;
		$filters = $this->getFilter();
		$order = "";
		$list = $this->mainModel->getList($filters, $order);
		$amount = $this->pages;
		$page = $this->_getSanitizedParam("page");
		if (!$page && Session::getInstance()->get($this->namepageactual)) {
			$page = Session::getInstance()->get($this->namepageactual);
			$start = ($page - 1) * $amount;
		} else if (!$page) {
			$start = 0;
			$page = 1;
			Session::getInstance()->set($this->namepageactual, $page);
		} else {
			Session::getInstance()->set($this->namepageactual, $page);
			$start = ($page - 1) * $amount;
		}
		$this->_view->register_number = count($list);
		$this->_view->pages = $this->pages;
		$this->_view->totalpages = ceil(count($list) / $amount);
		$this->_view->page = $page;
		$this->_view->lists = $this->mainModel->getListPages($filters, $order, $start, $amount);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->list_equipo1 = $this->getEquipo1();
		$this->_view->list_equipo2 = $this->getEquipo2();
		$this->_view->list_fase = $this->getFase();
		$this->_view->list_ganador = $this->getGanador();
	}

	/**
	 * Genera la Informacion necesaria para editar o crear un  partido  y muestra su formulario
	 *
	 * @return void.
	 */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_partidos_" . date("YmdHis");
		$this->_csrf->generateCode($this->_csrf_section);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$this->_view->list_equipo1 = $this->getEquipo1();
		$this->_view->list_equipo2 = $this->getEquipo2();
		$this->_view->list_fase = $this->getFase();
		$this->_view->list_ganador = $this->getGanador();
		$id = $this->_getSanitizedParam("id");
		if ($id > 0) {
			$content = $this->mainModel->getById($id);
			if ($content->id) {
				$this->_view->content = $content;
				$this->_view->routeform = $this->route . "/update";
				$title = "Actualizar partido";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			} else {
				$this->_view->routeform = $this->route . "/insert";
				$title = "Crear partido";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route . "/insert";
			$title = "Crear partido";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
	 * Inserta la informacion de un partido  y redirecciona al listado de partido.
	 *
	 * @return void.
	 */
	public function insertAction()
	{
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf) {
			$data = $this->getData();
			$id = $this->mainModel->insert($data);

			$data['id'] = $id;
			$data['log_log'] = print_r($data, true);
			$data['log_tipo'] = 'CREAR PARTIDO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: ' . $this->route . '' . '');
	}

	/**
	 * Recibe un identificador  y Actualiza la informacion de un partido  y redirecciona al listado de partido.
	 *
	 * @return void.
	 */
	public function updateAction()
	{
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf) {
			$id = $this->_getSanitizedParam("id");
			$content = $this->mainModel->getById($id);
			if ($content->id) {
				$data = $this->getData();

				if ($data["valor1"] == $data["valor2"]) {
					$data["ganador"] = -1;
				}

				$this->mainModel->update($data, $id);
			}
			$data['id'] = $id;
			$data['log_log'] = print_r($data, true);
			$data['log_tipo'] = 'EDITAR PARTIDO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: ' . $this->route . '' . '');
	}

	/**
	 * Recibe un identificador  y elimina un partido  y redirecciona al listado de partido.
	 *
	 * @return void.
	 */
	public function deleteAction()
	{
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_csrf_section] == $csrf) {
			$id =  $this->_getSanitizedParam("id");
			if (isset($id) && $id > 0) {
				$content = $this->mainModel->getById($id);
				if (isset($content)) {
					$this->mainModel->deleteRegister($id);
					$data = (array)$content;
					$data['log_log'] = print_r($data, true);
					$data['log_tipo'] = 'BORRAR PARTIDO';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data);
				}
			}
		}
		header('Location: ' . $this->route . '' . '');
	}

	public function actualizarmarcadorAction()
	{
		$id = $this->_getSanitizedParam("id");
		$marcador1 = $this->_getSanitizedParam("marcador1");
		$marcador2 = $this->_getSanitizedParam("marcador2");
		$ganador = $this->_getSanitizedParam("ganador");
		$this->mainModel->editField($id, "valor1", $marcador1);
		$this->mainModel->editField($id, "valor2", $marcador2);
		$this->mainModel->editField($id, "ganador", $ganador);
	}
	/**
	 * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Partidos.
	 *
	 * @return array con toda la informacion recibida del formulario.
	 */
	private function getData()
	{
		$data = array();
		if ($this->_getSanitizedParam("numero") == '') {
			$data['numero'] = '0';
		} else {
			$data['numero'] = $this->_getSanitizedParam("numero");
		}
		if ($this->_getSanitizedParam("equipo1") == '') {
			$data['equipo1'] = '0';
		} else {
			$data['equipo1'] = $this->_getSanitizedParam("equipo1");
		}
		if ($this->_getSanitizedParam("equipo2") == '') {
			$data['equipo2'] = '0';
		} else {
			$data['equipo2'] = $this->_getSanitizedParam("equipo2");
		}
		$data['fecha'] = $this->_getSanitizedParam("fecha");
		$data['hora'] = $this->_getSanitizedParam("hora");
		if ($this->_getSanitizedParam("fase") == '') {
			$data['fase'] = '0';
		} else {
			$data['fase'] = $this->_getSanitizedParam("fase");
		}
		if ($this->_getSanitizedParam("valor1") == '') {
			$data['valor1'] = '0';
		} else {
			$data['valor1'] = $this->_getSanitizedParam("valor1");
		}
		if ($this->_getSanitizedParam("valor2") == '') {
			$data['valor2'] = '0';
		} else {
			$data['valor2'] = $this->_getSanitizedParam("valor2");
		}
		if ($this->_getSanitizedParam("ganador") == '') {
			$data['ganador'] = '0';
		} else {
			$data['ganador'] = $this->_getSanitizedParam("ganador");
		}
		return $data;
	}



	public function actualizarPuntosAction()
	{
		$this->setLayout("blanco");
		$usuariosModel = new Administracion_Model_DbTable_Usuariospolla();
		$resultadosModel = new Administracion_Model_DbTable_Resultados();
		$configModel = new Administracion_Model_DbTable_Config();
		$partidosModel = new Administracion_Model_DbTable_Partidos();
		$octavosModel = new Administracion_Model_DbTable_Octavos();
		$cuartosModel = new Administracion_Model_DbTable_Cuartos();
		$semisModel = new Administracion_Model_DbTable_Semis();
		$finalModel = new Administracion_Model_DbTable_Final();
		$otrosModel = new Administracion_Model_DbTable_Otros();
		$clasificacionModel = new Administracion_Model_DbTable_Clasificados();
		$config = $configModel->getById(1);

		$resultados = $resultadosModel->getAllResults();
print_r($resultados);
		$clasificacion = $clasificacionModel->getById(1);
		$clasificado_octavos_a1 = $clasificacion->clasificado_octavos_a1;
		$clasificado_octavos_a2 = $clasificacion->clasificado_octavos_a2;
		$clasificado_octavos_b1 = $clasificacion->clasificado_octavos_b1;
		$clasificado_octavos_b2 = $clasificacion->clasificado_octavos_b2;
		$clasificado_octavos_c1 = $clasificacion->clasificado_octavos_c1;
		$clasificado_octavos_c2 = $clasificacion->clasificado_octavos_c2;
		$clasificado_octavos_d1 = $clasificacion->clasificado_octavos_d1;
		$clasificado_octavos_d2 = $clasificacion->clasificado_octavos_d2;
		$clasificado_octavos_e1 = $clasificacion->clasificado_octavos_e1;
		$clasificado_octavos_e2 = $clasificacion->clasificado_octavos_e2;
		$clasificado_octavos_f1 = $clasificacion->clasificado_octavos_f1;
		$clasificado_octavos_f2 = $clasificacion->clasificado_octavos_f2;
		$clasificado_octavos_g1 = $clasificacion->clasificado_octavos_g1;
		$clasificado_octavos_g2 = $clasificacion->clasificado_octavos_g2;
		$clasificado_octavos_h1 = $clasificacion->clasificado_octavos_h1;
		$clasificado_octavos_h2 = $clasificacion->clasificado_octavos_h2;
		$clasificado_cuartos_e1 = $clasificacion->clasificado_cuartos_e1;
		$clasificado_cuartos_e2 = $clasificacion->clasificado_cuartos_e2;
		$clasificado_cuartos_e3 = $clasificacion->clasificado_cuartos_e3;
		$clasificado_cuartos_e4 = $clasificacion->clasificado_cuartos_e4;
		$clasificado_cuartos_e5 = $clasificacion->clasificado_cuartos_e5;
		$clasificado_cuartos_e6 = $clasificacion->clasificado_cuartos_e6;
		$clasificado_cuartos_e7 = $clasificacion->clasificado_cuartos_e7;
		$clasificado_cuartos_e8 = $clasificacion->clasificado_cuartos_e8;

		$clasificado_semis_e1 = $clasificacion->clasificado_semis_e1;
		$clasificado_semis_e2 = $clasificacion->clasificado_semis_e2;
		$clasificado_semis_e3 = $clasificacion->clasificado_semis_e3;
		$clasificado_semis_e4 = $clasificacion->clasificado_semis_e4;

		$clasificado_cuarto = $clasificacion->clasificado_cuarto;
		$clasificado_tercero = $clasificacion->clasificado_tercero;
		$clasificado_subcampeon = $clasificacion->clasificado_subcampeon;
		$clasificado_campeon = $clasificacion->clasificado_campeon;
		$clasificado_jugador = $clasificacion->clasificado_jugador;
		$clasificado_valla = $clasificacion->clasificado_valla;




		//PUNTOS FASE DE GRUPOS
		$acertarMarcador1Fase = (int)$config->config_gruposmarcador;
		$acertarEquipo1Fase = (int)$config->config_gruposequipo;
		$empate1Fase = (int)$config->config_gruposempate;



		//PUNTOS OCTAVOS
		$acertarMarcadorOctavos = (int)$config->config_octavosmarcador;
		$acertarEquipoOctavos = (int)$config->config_octavosequipo;


		//PUNTOS CUARTOS
		$acertarMarcadorCuartos = (int)$config->config_cuartosmarcador;
		$acertarEquipoCuartos = (int)$config->config_cuartosganador;

		//PUNTOS SEMIS
		$acertarMarcadorSemis = (int)$config->config_semismarcador;
		$acertarEquipoSemis = (int)$config->config_semisequipo;

		//PUNTOS FINALES
		$acertarMarcadorFinales = (int)$config->config_finalesmarcadores;


		//PUNTOS OTROS
		$primerPuestoOctavos = (int)$config->config_1puestooctavos;
		$segundoPuestoOctavos = (int)$config->config_2puestooctavos;


		$clasificadoCuartos = (int)$config->config_cuartosclasificado;
		$clasificadoSemis = (int)$config->config_semisclasificado;








		$acertarCampeon = (int)$config->config_campeon;
		$acertarSubcampeon = (int)$config->config_subcampeon;
		$acertarTercero = (int)$config->config_tercero;
		$acertarCuarto = (int)$config->config_cuarto;
		$acertarGoleador = (int)$config->config_goleador;
		$acertarValla = (int)$config->config_valla;











		foreach ($resultados as $key => $resultado) {
			$puntos = 0;
			$marcadores = 0;
			$ganadores = 0;
			$otros = 0;
			$aciertos = 0;
			$usuarioId = $resultado->user_id;


			$partidoId = $resultado->partido;

			$partido = $partidosModel->getById($partidoId);
			$fase = $partido->fase;

			$marcador1Partido = $partido->valor1;
			$marcador2Partido = $partido->valor2;
			$ganadorPartido = $partido->ganador;

			$marcador1Resultado = $resultado->valor1;
			$marcador2Resultado = $resultado->valor2;
			$ganadorResultado = $resultado->ganador;

			/* echo "partido : ".$partidoId.  "equipo1: ".$marcador1Partido ." usuario".$usuarioId;

			echo "<br>";

			echo "partido : ".$partidoId.  "equipo1usuario: ".$marcador1Resultado." usuario".$usuarioId;

			echo "<br>"; */


			//FASE DE GRUPOS
			if ($fase == 1) {

				// Validación inicial: asegurar que no hay valores vacíos
				if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {
					// Comprobando acierto de marcador exacto
					if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {
						$marcadores++;
						$puntos += $acertarMarcador1Fase;  // Puntos por acertar al marcador exacto

						// Comprobando ganador o empate además del marcador
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {
							$ganadores++;
							$puntos += $acertarEquipo1Fase;  // Puntos adicionales por acertar al ganador
						} else if ($marcador1Partido == $marcador2Partido && $ganadorResultado == -1) {
							$ganadores++;
							$puntos += $empate1Fase;  // Puntos adicionales por acertar un empate
						}
					} else {
						// Comprobando ganador o empate si no acertó el marcador exacto
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {
							$ganadores++;
							$puntos += $acertarEquipo1Fase;  // Puntos por acertar solo al ganador
						} else if ($marcador1Partido == $marcador2Partido && $ganadorResultado == -1) {
							$ganadores++;
							$puntos += $empate1Fase;  // Puntos por acertar un empate
						}
					}
				}
			}



			//OCTAVOS DE FINAL
			if ($fase == 2) {

				// Validación inicial: asegurar que no hay valores vacíos
				if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

					// Comprobando acierto de marcador exacto
					if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

						$marcadores++;
						$puntos += $acertarMarcadorOctavos;  // Puntos por acertar al marcador exacto

						// Comprobando acierto del ganador
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

							$ganadores++;
							$puntos += $acertarEquipoOctavos;  // Puntos adicionales por acertar al ganador
						}
					} else {

						// Comprobando ganador si no acertó el marcador exacto
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

							echo "entro 2";

							$ganadores++;
							$puntos += $acertarEquipoOctavos;  // Puntos por acertar solo al ganador

						}
					}
				}
			}


			//CUARTOS DE FINAL
			if ($fase == 3) {

				// Validación inicial: asegurar que no hay valores vacíos
				if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

					// Comprobando acierto de marcador exacto
					if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

						$marcadores++;
						$puntos += $acertarMarcadorCuartos;  // Puntos por acertar al marcador exacto

						// Comprobando acierto del ganador
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

							$ganadores++;
							$puntos += $acertarEquipoCuartos;  // Puntos adicionales por acertar al ganador
						}
					} else {

						// Comprobando ganador si no acertó el marcador exacto
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {


							$ganadores++;
							$puntos += $acertarEquipoCuartos;  // Puntos por acertar solo al ganador
						}
					}
				}
			}

			//SEMIFINAL
			if ($fase == 4) {

				// Validación inicial: asegurar que no hay valores vacíos
				if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

					// Comprobando acierto de marcador exacto
					if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

						$marcadores++;
						$puntos += $acertarMarcadorSemis;  // Puntos por acertar al marcador exacto

						// Comprobando acierto del ganador
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

							$ganadores++;
							$puntos += $acertarEquipoSemis;  // Puntos adicionales por acertar al ganador
						}
					} else {

						// Comprobando ganador si no acertó el marcador exacto
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {


							$ganadores++;
							$puntos += $acertarEquipoSemis;  // Puntos por acertar solo al ganador
						}
					}
				}
			}

			//FINALES
			if ($fase == 5) {

				// Validación inicial: asegurar que no hay valores vacíos
				if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

					// Comprobando acierto de marcador exacto
					if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

						$marcadores++;
						$puntos += $acertarMarcadorFinales;  // Puntos por acertar al marcador exacto

						// Comprobando acierto del ganador
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

							$ganadores++;
							//$puntos += $acertarEquipoFinales;  // Puntos adicionales por acertar al ganador
						}
					} else {

						// Comprobando ganador si no acertó el marcador exacto
						if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {


							$ganadores++;
							//$puntos += $acertarEquipoFinales;  // Puntos por acertar solo al ganador
						}
					}
				}
			}




			//CLASIFICADOS A OCTAVOS
			$octavos = $octavosModel->getList("usuario = $usuarioId", "")[0];
			$a1 = $octavos->a1;
			if ($a1 == $clasificado_octavos_a1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$a2 = $octavos->a2;
			if ($a2 == $clasificado_octavos_a2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$b1 = $octavos->b1;
			if ($b1 == $clasificado_octavos_b1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$b2 = $octavos->b2;
			if ($b2 == $clasificado_octavos_b2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$c1 = $octavos->c1;
			if ($c1 == $clasificado_octavos_c1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$c2 = $octavos->c2;
			if ($c2 == $clasificado_octavos_c2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$d1 = $octavos->d1;
			if ($d1 == $clasificado_octavos_d1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$d2 = $octavos->d2;
			if ($d2 == $clasificado_octavos_d2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$e1 = $octavos->e1;
			if ($e1 == $clasificado_octavos_e1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$e2 = $octavos->e2;
			if ($e2 == $clasificado_octavos_e2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$f1 = $octavos->f1;
			if ($f1 == $clasificado_octavos_f1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$f2 = $octavos->f2;
			if ($f2 == $clasificado_octavos_f2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$g1 = $octavos->g1;
			if ($g1 == $clasificado_octavos_g1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$g2 = $octavos->g2;
			if ($g2 == $clasificado_octavos_g2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			$h1 = $octavos->h1;
			if ($h1 == $clasificado_octavos_h1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$h2 = $octavos->h2;
			if ($h2 == $clasificado_octavos_h2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}




			//CLASIFICADOS A CUARTOS
			$cuartos = $cuartosModel->getList("usuario = $usuarioId", "")[0];
			$clasificadosCuartos = [
				$clasificado_cuartos_e1, $clasificado_cuartos_e2, $clasificado_cuartos_e3, $clasificado_cuartos_e4,
				$clasificado_cuartos_e5, $clasificado_cuartos_e6, $clasificado_cuartos_e7, $clasificado_cuartos_e8
			];



			// Iterar sobre los equipos de cuartos de final
			for ($i = 1; $i <= 8; $i++) {
				$equipoCuartos = $cuartos->{'e' . $i};
				if (in_array($equipoCuartos, $clasificadosCuartos)) {
					$puntos += $clasificadoCuartos;
					$otros++;
				}
			}



			//CLASIFICADOS A SEMIS
			$semis = $semisModel->getList("usuario = $usuarioId", "")[0];

			$clasificados = [$clasificado_semis_e1, $clasificado_semis_e2, $clasificado_semis_e3, $clasificado_semis_e4];
			// Iterar sobre los equipos de semifinales
			for ($i = 1; $i <= 4; $i++) {
				$equipoSemis = $semis->{'e' . $i};
				if (in_array($equipoSemis, $clasificados)) {
					$puntos += $clasificadoSemis;
					$otros++;
				}
			}





			//FINALES
			$final = $finalModel->getList("usuario = $usuarioId", "")[0];
			$campeon = $final->campeon;
			if ($campeon == $clasificado_campeon) {
				$puntos += $acertarCampeon;
				$otros++;
			}
			$subcamperon = $final->subcampeon;
			if ($subcamperon == $clasificado_subcampeon) {
				$puntos += $acertarSubcampeon;
				$otros++;
			}
			$tercero = $final->tercero;
			if ($tercero == $clasificado_tercero) {
				$puntos += $acertarTercero;
				$otros++;
			}
			$cuarto = $final->cuarto;
			if ($cuarto == $clasificado_cuarto) {
				$puntos += $acertarCuarto;
				$otros++;
			}



			//OTROS
			$getOtros = $otrosModel->getList("usuario = $usuarioId", "")[0];
			$goleador = $getOtros->goleador;
			if ($goleador == $clasificado_jugador) {
				$puntos += $acertarGoleador;
				$otros++;
			}
			$valla = $getOtros->valla;
			if ($valla == $clasificado_valla) {
				$puntos += $acertarValla;
				$otros++;
			}
			$aciertos = $marcadores + $ganadores + $otros;
			$usuariosModel->editField($usuarioId, "user_puntos", $puntos);
			$usuariosModel->editField($usuarioId, "user_marcadores", $marcadores);
			$usuariosModel->editField($usuarioId, "user_ganadores", $ganadores);
			$usuariosModel->editField($usuarioId, "user_otros", $otros);
			$usuariosModel->editField($usuarioId, "user_total", $aciertos);


			if ($_GET['debug'] == 1) {
				echo "usuario : " . $usuarioId .  "puntos: " . $puntos;
				echo "<br>";
			}
		}
	}


	/**
	 * Genera los valores del campo equipo1.
	 *
	 * @return array cadena con los valores del campo equipo1.
	 */
	private function getEquipo1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList();
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
	 * Genera los valores del campo equipo2.
	 *
	 * @return array cadena con los valores del campo equipo2.
	 */
	private function getEquipo2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList();
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
	 * Genera los valores del campo fase.
	 *
	 * @return array cadena con los valores del campo fase.
	 */
	private function getFase()
	{
		$modelData = new Administracion_Model_DbTable_Dependfases();
		$data = $modelData->getList();
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->titulo;
		}
		return $array;
	}


	/**
	 * Genera los valores del campo ganador.
	 *
	 * @return array cadena con los valores del campo ganador.
	 */
	private function getGanador()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList();
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}

	/**
	 * Genera la consulta con los filtros de este controlador.
	 *
	 * @return array cadena con los filtros que se van a asignar a la base de datos
	 */
	protected function getFilter()
	{
		$filtros = " 1 = 1 ";
		if (Session::getInstance()->get($this->namefilter) != "") {
			$filters = (object)Session::getInstance()->get($this->namefilter);
			if ($filters->numero != '') {
				$filtros = $filtros . " AND numero LIKE '%" . $filters->numero . "%'";
			}
			if ($filters->equipo1 != '') {
				$filtros = $filtros . " AND equipo1 LIKE '%" . $filters->equipo1 . "%'";
			}
			if ($filters->equipo2 != '') {
				$filtros = $filtros . " AND equipo2 LIKE '%" . $filters->equipo2 . "%'";
			}
			if ($filters->fecha != '') {
				$filtros = $filtros . " AND fecha LIKE '%" . $filters->fecha . "%'";
			}
			if ($filters->fase != '') {
				$filtros = $filtros . " AND fase LIKE '%" . $filters->fase . "%'";
			}
			if ($filters->ganador != '') {
				$filtros = $filtros . " AND ganador LIKE '%" . $filters->ganador . "%'";
			}
		}
		return $filtros;
	}

	/**
	 * Recibe y asigna los filtros de este controlador
	 *
	 * @return void
	 */
	protected function filters()
	{
		if ($this->getRequest()->isPost() == true) {
			Session::getInstance()->set($this->namepageactual, 1);
			$parramsfilter = array();
			$parramsfilter['numero'] =  $this->_getSanitizedParam("numero");
			$parramsfilter['equipo1'] =  $this->_getSanitizedParam("equipo1");
			$parramsfilter['equipo2'] =  $this->_getSanitizedParam("equipo2");
			$parramsfilter['fecha'] =  $this->_getSanitizedParam("fecha");
			$parramsfilter['fase'] =  $this->_getSanitizedParam("fase");
			$parramsfilter['ganador'] =  $this->_getSanitizedParam("ganador");
			Session::getInstance()->set($this->namefilter, $parramsfilter);
		}
		if ($this->_getSanitizedParam("cleanfilter") == 1) {
			Session::getInstance()->set($this->namefilter, '');
			Session::getInstance()->set($this->namepageactual, 1);
		}
	}
}
