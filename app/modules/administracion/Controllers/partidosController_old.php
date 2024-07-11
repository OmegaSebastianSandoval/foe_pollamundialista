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
		/* 	foreach ($list as $key => $value) {

			$this->mainModel->editField($value->id, "valor1", "");
			$this->mainModel->editField($value->id, "valor2", "");
			$this->mainModel->editField($value->id, "ganador", "");
		} */

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
			$ultimoRegistro = $this->mainModel->getList("", "id DESC");
			$this->_view->numero = ($ultimoRegistro[0]->numero + 1) ?? 1;

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
		// error_reporting(E_ALL);

		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf) {
		
			$data = $this->getData();
			print_r($data);
			$id = $this->mainModel->insert($data);
			if ((!empty($data["valor1"]) && !empty($data["valor2"])) && $data["valor1"] == $data["valor2"]) {
				$data["ganador"] = -1;
			}

			// $this->actualizarPuntos();


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

				if ((!empty($data["valor1"]) && !empty($data["valor2"])) && $data["valor1"] == $data["valor2"] || $data["valor1"] ==0 &&  $data["valor2"]==0 ) {
					$data["ganador"] = -1;
				}

				$this->mainModel->update($data, $id);
				$this->actualizarPuntos();
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
			$data['valor1'] = '';
		} else {
			$data['valor1'] = $this->_getSanitizedParam("valor1");
		}
		if ($this->_getSanitizedParam("valor2") == '') {
			$data['valor2'] = '';
		} else {
			$data['valor2'] = $this->_getSanitizedParam("valor2");
		}
		if ($this->_getSanitizedParam("ganador") == '') {
			$data['ganador'] = '';
		} else {
			$data['ganador'] = $this->_getSanitizedParam("ganador");
		}
		return $data;
	}





	/**
	 * Genera los valores del campo equipo1.
	 *
	 * @return array cadena con los valores del campo equipo1.
	 */
	private function getEquipo1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("", "nombre ASC");
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
		$data = $modelData->getList("", "nombre ASC");
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
