<?php
/**
* Controlador de Octavos que permite la  creacion, edicion  y eliminacion de los octavos del Sistema
*/
class Administracion_octavosController extends Administracion_mainController
{
	/**
	 * $mainModel  instancia del modelo de  base de datos octavos
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
	protected $_csrf_section = "administracion_octavos";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
     * Inicializa las variables principales del controlador octavos .
     *
     * @return void.
     */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Octavos();
		$this->namefilter = "parametersfilteroctavos";
		$this->route = "/administracion/octavos";
		$this->namepages ="pages_octavos";
		$this->namepageactual ="page_actual_octavos";
		$this->_view->route = $this->route;
		if(Session::getInstance()->get($this->namepages)){
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
     * Recibe la informacion y  muestra un listado de  octavos con sus respectivos filtros.
     *
     * @return void.
     */
	public function indexAction()
	{
		$title = "Administración de octavos";
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
     * Genera la Informacion necesaria para editar o crear un  octavos  y muestra su formulario
     *
     * @return void.
     */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_octavos_".date("YmdHis");
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
				$title = "Actualizar octavos";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}else{
				$this->_view->routeform = $this->route."/insert";
				$title = "Crear octavos";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route."/insert";
			$title = "Crear octavos";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
     * Inserta la informacion de un octavos  y redirecciona al listado de octavos.
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
			$data['log_tipo'] = 'CREAR OCTAVOS';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y Actualiza la informacion de un octavos  y redirecciona al listado de octavos.
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
			$data['log_tipo'] = 'EDITAR OCTAVOS';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y elimina un octavos  y redirecciona al listado de octavos.
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
					$data['log_tipo'] = 'BORRAR OCTAVOS';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data); }
			}
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Octavos.
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
		if($this->_getSanitizedParam("a1") == '' ) {
			$data['a1'] = '0';
		} else {
			$data['a1'] = $this->_getSanitizedParam("a1");
		}
		if($this->_getSanitizedParam("a2") == '' ) {
			$data['a2'] = '0';
		} else {
			$data['a2'] = $this->_getSanitizedParam("a2");
		}
		if($this->_getSanitizedParam("b1") == '' ) {
			$data['b1'] = '0';
		} else {
			$data['b1'] = $this->_getSanitizedParam("b1");
		}
		if($this->_getSanitizedParam("b2") == '' ) {
			$data['b2'] = '0';
		} else {
			$data['b2'] = $this->_getSanitizedParam("b2");
		}
		if($this->_getSanitizedParam("c1") == '' ) {
			$data['c1'] = '0';
		} else {
			$data['c1'] = $this->_getSanitizedParam("c1");
		}
		if($this->_getSanitizedParam("c2") == '' ) {
			$data['c2'] = '0';
		} else {
			$data['c2'] = $this->_getSanitizedParam("c2");
		}
		if($this->_getSanitizedParam("d1") == '' ) {
			$data['d1'] = '0';
		} else {
			$data['d1'] = $this->_getSanitizedParam("d1");
		}
		if($this->_getSanitizedParam("d2") == '' ) {
			$data['d2'] = '0';
		} else {
			$data['d2'] = $this->_getSanitizedParam("d2");
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
		if($this->_getSanitizedParam("f1") == '' ) {
			$data['f1'] = '0';
		} else {
			$data['f1'] = $this->_getSanitizedParam("f1");
		}
		if($this->_getSanitizedParam("f2") == '' ) {
			$data['f2'] = '0';
		} else {
			$data['f2'] = $this->_getSanitizedParam("f2");
		}
		if($this->_getSanitizedParam("g1") == '' ) {
			$data['g1'] = '0';
		} else {
			$data['g1'] = $this->_getSanitizedParam("g1");
		}
		if($this->_getSanitizedParam("g2") == '' ) {
			$data['g2'] = '0';
		} else {
			$data['g2'] = $this->_getSanitizedParam("g2");
		}
		if($this->_getSanitizedParam("h1") == '' ) {
			$data['h1'] = '0';
		} else {
			$data['h1'] = $this->_getSanitizedParam("h1");
		}
		if($this->_getSanitizedParam("h2") == '' ) {
			$data['h2'] = '0';
		} else {
			$data['h2'] = $this->_getSanitizedParam("h2");
		}
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
            if ($filters->a1 != '') {
                $filtros = $filtros." AND a1 LIKE '%".$filters->a1."%'";
            }
            if ($filters->a2 != '') {
                $filtros = $filtros." AND a2 LIKE '%".$filters->a2."%'";
            }
            if ($filters->b1 != '') {
                $filtros = $filtros." AND b1 LIKE '%".$filters->b1."%'";
            }
            if ($filters->b2 != '') {
                $filtros = $filtros." AND b2 LIKE '%".$filters->b2."%'";
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
					$parramsfilter['a1'] =  $this->_getSanitizedParam("a1");
					$parramsfilter['a2'] =  $this->_getSanitizedParam("a2");
					$parramsfilter['b1'] =  $this->_getSanitizedParam("b1");
					$parramsfilter['b2'] =  $this->_getSanitizedParam("b2");Session::getInstance()->set($this->namefilter, $parramsfilter);
        }
        if ($this->_getSanitizedParam("cleanfilter") == 1) {
            Session::getInstance()->set($this->namefilter, '');
            Session::getInstance()->set($this->namepageactual,1);
        }
    }
}