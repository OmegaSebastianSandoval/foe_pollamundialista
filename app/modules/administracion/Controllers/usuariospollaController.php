<?php

/**
 * Controlador de Usuariospolla que permite la  creacion, edicion  y eliminacion de los usuario del Sistema
 */
class Administracion_usuariospollaController extends Administracion_mainController
{
	public $botonpanel = 8;

	/**
	 * $mainModel  instancia del modelo de  base de datos usuario
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
	protected $_csrf_section = "administracion_usuariospolla";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
	 * Inicializa las variables principales del controlador usuariospolla .
	 *
	 * @return void.
	 */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Usuariospolla();
		$this->namefilter = "parametersfilterusuariospolla";
		$this->route = "/administracion/usuariospolla";
		$this->namepages = "pages_usuariospolla";
		$this->namepageactual = "page_actual_usuariospolla";
		$this->_view->route = $this->route;
		if (Session::getInstance()->get($this->namepages)) {
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
	 * Recibe la informacion y  muestra un listado de  usuario con sus respectivos filtros.
	 *
	 * @return void.
	 */
	public function indexAction()
	{
		$title = "Administración de usuario";
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
	}

	/**
	 * Genera la Informacion necesaria para editar o crear un  usuario  y muestra su formulario
	 *
	 * @return void.
	 */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_usuariospolla_" . date("YmdHis");
		$this->_csrf->generateCode($this->_csrf_section);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$this->_view->list_user_city = $this->getUsercity();
		$this->_view->list_user_level = $this->getUserlevel();
		$id = $this->_getSanitizedParam("id");
		if ($id > 0) {
			$content = $this->mainModel->getById($id);
			if ($content->user_id) {
				$this->_view->content = $content;
				$this->_view->routeform = $this->route . "/update";
				$title = "Actualizar usuario";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			} else {
				$this->_view->routeform = $this->route . "/insert";
				$title = "Crear usuario";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route . "/insert";
			$title = "Crear usuario";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
	 * Inserta la informacion de un usuario  y redirecciona al listado de usuario.
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

			$data['user_id'] = $id;
			$data['log_log'] = print_r($data, true);
			$data['log_tipo'] = 'CREAR USUARIO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: ' . $this->route . '' . '');
	}

	/**
	 * Recibe un identificador  y Actualiza la informacion de un usuario  y redirecciona al listado de usuario.
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
			if ($content->user_id) {
				$data = $this->getData();
				$this->mainModel->update($data, $id);
			}
			$data['user_id'] = $id;
			$data['log_log'] = print_r($data, true);
			$data['log_tipo'] = 'EDITAR USUARIO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: ' . $this->route . '' . '');
	}

	/**
	 * Recibe un identificador  y elimina un usuario  y redirecciona al listado de usuario.
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
					$data['log_tipo'] = 'BORRAR USUARIO';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data);
				}
			}
		}
		header('Location: ' . $this->route . '' . '');
	}

	public function exportarAction()
	{


		// Envía las cabeceras apropiadas para la descarga si es necesario o solo para mostrar la página
		header('Content-Type: text/html; charset=ISO-8859-1');
		$hoy = date("YmdHis");
		header('Content-Type: application/vnd.ms-excel');
		header("Content-Disposition: attachment; filename=usuarios" . $hoy . ".xls");
		$this->setLayout('blanco');
		$this->getLayout()->setTitle("Listar Usuarios");
		$this->_view->csrf = Session::getInstance()->get('csrf');
		$this->_view->levels = $this->getLevels();
		$this->filters();
		$filters = (object)Session::getInstance()->get($this->namefilter);
		$this->_view->filters = $filters;
		$filters = $this->getFilter();
		$order = " user_id ASC ";
		$list = $this->mainModel->getList($filters, $order);
		$amount = $this->pages;
		$page = $this->_getSanitizedParam("page");
		if (!$page) {
			$start = 0;
			$page = 1;
		} else {
			$start = ($page - 1) * $amount;
		}
		$this->_view->register_number = count($list);
		$this->_view->pages = $this->pages;
		$this->_view->totalpages = ceil(count($list) / $amount);
		$this->_view->page = $page;
		//$this->_view->lists = $this->mainModel->getListPages($filters,$order,$start,$amount);
		$this->_view->lists = $this->mainModel->getList(" user_level='2' AND user_paso='4' ", $order);
	}



	/**
	 * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Usuariospolla.
	 *
	 * @return array con toda la informacion recibida del formulario.
	 */
	private function getData()
	{
		$data = array();
		$data['user_names'] = $this->_getSanitizedParam("user_names");
		$data['user_lastnames'] = $this->_getSanitizedParam("user_lastnames");
		$data['user_email'] = $this->_getSanitizedParam("user_email");
		$data['user_idnumber'] = $this->_getSanitizedParam("user_idnumber");
		$data['user_city'] = $this->_getSanitizedParam("user_city");
		$data['user_country'] = $this->_getSanitizedParam("user_country");
		$data['user_phone'] = $this->_getSanitizedParam("user_phone");
		$data['user_address'] = $this->_getSanitizedParam("user_address");
		if ($this->_getSanitizedParam("user_level") == '') {
			$data['user_level'] = '0';
		} else {
			$data['user_level'] = $this->_getSanitizedParam("user_level");
		}
		if ($this->_getSanitizedParam("user_state") == '') {
			$data['user_state'] = '0';
		} else {
			$data['user_state'] = $this->_getSanitizedParam("user_state");
		}
		$data['user_user'] = $this->_getSanitizedParam("user_user");
		$data['user_password'] = $this->_getSanitizedParam("user_password");
		if ($this->_getSanitizedParam("user_delete") == '') {
			$data['user_delete'] = '0';
		} else {
			$data['user_delete'] = $this->_getSanitizedParam("user_delete");
		}
		if ($this->_getSanitizedParam("user_current_user") == '') {
			$data['user_current_user'] = '0';
		} else {
			$data['user_current_user'] = $this->_getSanitizedParam("user_current_user");
		}
		$data['user_zona'] = $this->_getSanitizedParam("user_zona");
		$data['user_celular'] = $this->_getSanitizedParam("user_celular");
		if ($this->_getSanitizedParam("user_puntos") == '') {
			$data['user_puntos'] = '0';
		} else {
			$data['user_puntos'] = $this->_getSanitizedParam("user_puntos");
		}
		if ($this->_getSanitizedParam("user_marcadores") == '') {
			$data['user_marcadores'] = '0';
		} else {
			$data['user_marcadores'] = $this->_getSanitizedParam("user_marcadores");
		}
		if ($this->_getSanitizedParam("user_ganadores") == '') {
			$data['user_ganadores'] = '0';
		} else {
			$data['user_ganadores'] = $this->_getSanitizedParam("user_ganadores");
		}
		if ($this->_getSanitizedParam("user_otros") == '') {
			$data['user_otros'] = '0';
		} else {
			$data['user_otros'] = $this->_getSanitizedParam("user_otros");
		}
		if ($this->_getSanitizedParam("user_total") == '') {
			$data['user_total'] = '0';
		} else {
			$data['user_total'] = $this->_getSanitizedParam("user_total");
		}
		$data['user_cuotas'] = $this->_getSanitizedParam("user_cuotas");
		$data['user_paso'] = $this->_getSanitizedParam("user_paso");
		$data['user_fecha'] = $this->_getSanitizedParam("user_fecha");
		return $data;
	}

	/**
	 * Genera los valores del campo user_city.
	 *
	 * @return array cadena con los valores del campo user_city.
	 */
	private function getUsercity()
	{
		$array = array();
		$array['Data'] = 'Data';
		return $array;
	}


	/**
	 * Genera los valores del campo user_level.
	 *
	 * @return array cadena con los valores del campo user_level.
	 */
	private function getUserlevel()
	{
		$levels  = array();
		$levels[1] = "Administrador";
		$levels[2] = "Usuario";
		return $levels;
	}

	private function getLevels()
	{
		$levels  = array();
		$levels[1] = "Administrador";
		$levels[2] = "Usuario";
		return $levels;
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
			if ($filters->user_names != '') {
				$filtros = $filtros . " AND user_names LIKE '%" . $filters->user_names . "%'";
			}
			if ($filters->user_email != '') {
				$filtros = $filtros . " AND user_email LIKE '%" . $filters->user_email . "%'";
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
			$parramsfilter['user_names'] =  $this->_getSanitizedParam("user_names");
			$parramsfilter['user_email'] =  $this->_getSanitizedParam("user_email");
			Session::getInstance()->set($this->namefilter, $parramsfilter);
		}
		if ($this->_getSanitizedParam("cleanfilter") == 1) {
			Session::getInstance()->set($this->namefilter, '');
			Session::getInstance()->set($this->namepageactual, 1);
		}
	}
}
