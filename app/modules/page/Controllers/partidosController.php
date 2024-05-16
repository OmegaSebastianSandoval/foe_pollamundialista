<?php

/**
 *
 */

class Page_partidosController extends Page_mainController
{
	public $botonactivo = 4;

	public function indexAction()
	{

		$this->_view->contenido = $this->template->getContentseccion(7);

		$contentModel = new Administracion_Model_DbTable_Partidos();
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();
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

		foreach ($partidos as $partido) {
			$equipo_id = $partido->equipo1;
			$equipo = $equipoModel->getList(" id = '$equipo_id' ", "");
			$partido->grupo1 = $equipo[0]->grupo;
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
}
