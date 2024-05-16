<?php
/**
* Controlador de Cuartos que permite la  creacion, edicion  y eliminacion de los cuartos del Sistema
*/
class Administracion_cuartosController extends Administracion_mainController
{
	/**
	 * $mainModel  instancia del modelo de  base de datos cuartos
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
	protected $pages ;

	/**
	 * $namefilter nombre de la variable a la fual se le van a guardar los filtros
	 * @var string
	 */
	protected $namefilter;

	/**
	 * $_csrf_section  nombre de la variable general csrf  que se va a almacenar en la session
	 * @var string
	 */
	protected $_csrf_section = "administracion_cuartos";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
     * Inicializa las variables principales del controlador cuartos .
     *
     * @return void.
     */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Cuartos();
		$this->namefilter = "parametersfiltercuartos";
		$this->route = "/administracion/cuartos";
		$this->namepages ="pages_cuartos";
		$this->namepageactual ="page_actual_cuartos";
		$this->_view->route = $this->route;
		if(Session::getInstance()->get($this->namepages)){
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
     * Recibe la informacion y  muestra un listado de  cuartos con sus respectivos filtros.
     *
     * @return void.
     */
	public function indexAction()
	{
		$title = "Administración de cuartos";
		$this->getLayout()->setTitle($title);
		$this->_view->titlesection = $title;
		$this->filters();
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$filters =(object)Session::getInstance()->get($this->namefilter);
        $this->_view->filters = $filters;
		$filters = $this->getFilter();
		$order = "";
		$list = $this->mainModel->getList($filters,$order);
		$amount = $this->pages;
		$page = $this->_getSanitizedParam("page");
		if (!$page && Session::getInstance()->get($this->namepageactual)) {
		   	$page = Session::getInstance()->get($this->namepageactual);
		   	$start = ($page - 1) * $amount;
		} else if(!$page){
			$start = 0;
		   	$page=1;
			Session::getInstance()->set($this->namepageactual,$page);
		} else {
			Session::getInstance()->set($this->namepageactual,$page);
		   	$start = ($page - 1) * $amount;
		}
		$this->_view->register_number = count($list);
		$this->_view->pages = $this->pages;
		$this->_view->totalpages = ceil(count($list)/$amount);
		$this->_view->page = $page;
		$this->_view->lists = $this->mainModel->getListPages($filters,$order,$start,$amount);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->list_usuario = $this->getUsuario();
	}

	/**
     * Genera la Informacion necesaria para editar o crear un  cuartos  y muestra su formulario
     *
     * @return void.
     */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_cuartos_".date("YmdHis");
		$this->_csrf->generateCode($this->_csrf_section);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$this->_view->list_usuario = $this->getUsuario();
		$id = $this->_getSanitizedParam("id");
		if ($id > 0) {
			$content = $this->mainModel->getById($id);
			if($content->id){
				$this->_view->content = $content;
				$this->_view->routeform = $this->route."/update";
				$title = "Actualizar cuartos";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}else{
				$this->_view->routeform = $this->route."/insert";
				$title = "Crear cuartos";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route."/insert";
			$title = "Crear cuartos";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
     * Inserta la informacion de un cuartos  y redirecciona al listado de cuartos.
     *
     * @return void.
     */
	public function insertAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {	
			$data = $this->getData();
			$id = $this->mainModel->insert($data);
			
			$data['id']= $id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'CREAR CUARTOS';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y Actualiza la informacion de un cuartos  y redirecciona al listado de cuartos.
     *
     * @return void.
     */
	public function updateAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {
			$id = $this->_getSanitizedParam("id");
			$content = $this->mainModel->getById($id);
			if ($content->id) {
				$data = $this->getData();
					$this->mainModel->update($data,$id);
			}
			$data['id']=$id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'EDITAR CUARTOS';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y elimina un cuartos  y redirecciona al listado de cuartos.
     *
     * @return void.
     */
	public function deleteAction()
	{
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_csrf_section] == $csrf ) {
			$id =  $this->_getSanitizedParam("id");
			if (isset($id) && $id > 0) {
				$content = $this->mainModel->getById($id);
				if (isset($content)) {
					$this->mainModel->deleteRegister($id);$data = (array)$content;
					$data['log_log'] = print_r($data,true);
					$data['log_tipo'] = 'BORRAR CUARTOS';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data); }
			}
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Cuartos.
     *
     * @return array con toda la informacion recibida del formulario.
     */
	private function getData()
	{
		$data = array();
		if($this->_getSanitizedParam("usuario") == '' ) {
			$data['usuario'] = '0';
		} else {
			$data['usuario'] = $this->_getSanitizedParam("usuario");
		}
		if($this->_getSanitizedParam("e1") == '' ) {
			$data['e1'] = '0';
		} else {
			$data['e1'] = $this->_getSanitizedParam("e1");
		}
		if($this->_getSanitizedParam("e2") == '' ) {
			$data['e2'] = '0';
		} else {
			$data['e2'] = $this->_getSanitizedParam("e2");
		}
		if($this->_getSanitizedParam("e3") == '' ) {
			$data['e3'] = '0';
		} else {
			$data['e3'] = $this->_getSanitizedParam("e3");
		}
		if($this->_getSanitizedParam("e4") == '' ) {
			$data['e4'] = '0';
		} else {
			$data['e4'] = $this->_getSanitizedParam("e4");
		}
		if($this->_getSanitizedParam("e5") == '' ) {
			$data['e5'] = '0';
		} else {
			$data['e5'] = $this->_getSanitizedParam("e5");
		}
		if($this->_getSanitizedParam("e6") == '' ) {
			$data['e6'] = '0';
		} else {
			$data['e6'] = $this->_getSanitizedParam("e6");
		}
		if($this->_getSanitizedParam("e7") == '' ) {
			$data['e7'] = '0';
		} else {
			$data['e7'] = $this->_getSanitizedParam("e7");
		}
		$data['e8'] = $this->_getSanitizedParamHtml("e8");
		$data['fecha'] = $this->_getSanitizedParam("fecha");
		return $data;
	}

	/**
     * Genera los valores del campo usuario.
     *
     * @return array cadena con los valores del campo usuario.
     */
	private function getUsuario()
	{
		$modelData = new Administracion_Model_DbTable_Dependuserpolla();
		$data = $modelData->getList();
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->user_id] = $value->user_names;
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
        if (Session::getInstance()->get($this->namefilter)!="") {
            $filters =(object)Session::getInstance()->get($this->namefilter);
            if ($filters->usuario != '') {
                $filtros = $filtros." AND usuario LIKE '%".$filters->usuario."%'";
            }
            if ($filters->e1 != '') {
                $filtros = $filtros." AND e1 LIKE '%".$filters->e1."%'";
            }
            if ($filters->e2 != '') {
                $filtros = $filtros." AND e2 LIKE '%".$filters->e2."%'";
            }
            if ($filters->e3 != '') {
                $filtros = $filtros." AND e3 LIKE '%".$filters->e3."%'";
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
        if ($this->getRequest()->isPost()== true) {
        	Session::getInstance()->set($this->namepageactual,1);
            $parramsfilter = array();
					$parramsfilter['usuario'] =  $this->_getSanitizedParam("usuario");
					$parramsfilter['e1'] =  $this->_getSanitizedParam("e1");
					$parramsfilter['e2'] =  $this->_getSanitizedParam("e2");
					$parramsfilter['e3'] =  $this->_getSanitizedParam("e3");Session::getInstance()->set($this->namefilter, $parramsfilter);
        }
        if ($this->_getSanitizedParam("cleanfilter") == 1) {
            Session::getInstance()->set($this->namefilter, '');
            Session::getInstance()->set($this->namepageactual,1);
        }
    }
}