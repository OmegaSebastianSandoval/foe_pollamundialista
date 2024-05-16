<?php
/**
* Controlador de Equipos que permite la  creacion, edicion  y eliminacion de los equipo del Sistema
*/
class Administracion_equiposController extends Administracion_mainController
{
	public $botonpanel = 6;

	/**
	 * $mainModel  instancia del modelo de  base de datos equipo
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
	protected $_csrf_section = "administracion_equipos";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
     * Inicializa las variables principales del controlador equipos .
     *
     * @return void.
     */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Equipos();
		$this->namefilter = "parametersfilterequipos";
		$this->route = "/administracion/equipos";
		$this->namepages ="pages_equipos";
		$this->namepageactual ="page_actual_equipos";
		$this->_view->route = $this->route;
		if(Session::getInstance()->get($this->namepages)){
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
     * Recibe la informacion y  muestra un listado de  equipo con sus respectivos filtros.
     *
     * @return void.
     */
	public function indexAction()
	{
		$title = "Administración de equipo";
		$this->getLayout()->setTitle($title);
		$this->_view->titlesection = $title;
		$this->filters();
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$filters =(object)Session::getInstance()->get($this->namefilter);
        $this->_view->filters = $filters;
		$filters = $this->getFilter();
		$order = "orden ASC";
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
		$this->_view->list_grupo = $this->getGrupo();
	}

	/**
     * Genera la Informacion necesaria para editar o crear un  equipo  y muestra su formulario
     *
     * @return void.
     */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_equipos_".date("YmdHis");
		$this->_csrf->generateCode($this->_csrf_section);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$this->_view->list_grupo = $this->getGrupo();
		$id = $this->_getSanitizedParam("id");
		if ($id > 0) {
			$content = $this->mainModel->getById($id);
			if($content->id){
				$this->_view->content = $content;
				$this->_view->routeform = $this->route."/update";
				$title = "Actualizar equipo";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}else{
				$this->_view->routeform = $this->route."/insert";
				$title = "Crear equipo";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route."/insert";
			$title = "Crear equipo";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
     * Inserta la informacion de un equipo  y redirecciona al listado de equipo.
     *
     * @return void.
     */
	public function insertAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {	
			$data = $this->getData();
			$uploadImage =  new Core_Model_Upload_Image();
			if($_FILES['bandera']['name'] != ''){
				$data['bandera'] = $uploadImage->upload("bandera");
			}
			$id = $this->mainModel->insert($data);
			$this->mainModel->changeOrder($id,$id);
			$data['id']= $id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'CREAR EQUIPO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y Actualiza la informacion de un equipo  y redirecciona al listado de equipo.
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
				$uploadImage =  new Core_Model_Upload_Image();
				if($_FILES['bandera']['name'] != ''){
					if($content->bandera){
						$uploadImage->delete($content->bandera);
					}
					$data['bandera'] = $uploadImage->upload("bandera");
				} else {
					$data['bandera'] = $content->bandera;
				}
				$this->mainModel->update($data,$id);
			}
			$data['id']=$id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'EDITAR EQUIPO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y elimina un equipo  y redirecciona al listado de equipo.
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
					$uploadImage =  new Core_Model_Upload_Image();
					if (isset($content->bandera) && $content->bandera != '') {
						$uploadImage->delete($content->bandera);
					}
					$this->mainModel->deleteRegister($id);$data = (array)$content;
					$data['log_log'] = print_r($data,true);
					$data['log_tipo'] = 'BORRAR EQUIPO';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data); }
			}
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Equipos.
     *
     * @return array con toda la informacion recibida del formulario.
     */
	private function getData()
	{
		$data = array();
		$data['codigo'] = $this->_getSanitizedParam("codigo");
		$data['nombre'] = $this->_getSanitizedParam("nombre");
		$data['bandera'] = "";
		if($this->_getSanitizedParam("grupo") == '' ) {
			$data['grupo'] = '0';
		} else {
			$data['grupo'] = $this->_getSanitizedParam("grupo");
		}
		if($this->_getSanitizedParam("pj") == '' ) {
			$data['pj'] = '0';
		} else {
			$data['pj'] = $this->_getSanitizedParam("pj");
		}
		if($this->_getSanitizedParam("pg") == '' ) {
			$data['pg'] = '0';
		} else {
			$data['pg'] = $this->_getSanitizedParam("pg");
		}
		if($this->_getSanitizedParam("pe") == '' ) {
			$data['pe'] = '0';
		} else {
			$data['pe'] = $this->_getSanitizedParam("pe");
		}
		if($this->_getSanitizedParam("pp") == '' ) {
			$data['pp'] = '0';
		} else {
			$data['pp'] = $this->_getSanitizedParam("pp");
		}
		if($this->_getSanitizedParam("gf") == '' ) {
			$data['gf'] = '0';
		} else {
			$data['gf'] = $this->_getSanitizedParam("gf");
		}
		if($this->_getSanitizedParam("gc") == '' ) {
			$data['gc'] = '0';
		} else {
			$data['gc'] = $this->_getSanitizedParam("gc");
		}
		if($this->_getSanitizedParam("gd") == '' ) {
			$data['gd'] = '0';
		} else {
			$data['gd'] = $this->_getSanitizedParam("gd");
		}
		if($this->_getSanitizedParam("fp") == '' ) {
			$data['fp'] = '0';
		} else {
			$data['fp'] = $this->_getSanitizedParam("fp");
		}
		if($this->_getSanitizedParam("puntos") == '' ) {
			$data['puntos'] = '0';
		} else {
			$data['puntos'] = $this->_getSanitizedParam("puntos");
		}
		return $data;
	}

	/**
     * Genera los valores del campo grupo.
     *
     * @return array cadena con los valores del campo grupo.
     */
	private function getGrupo()
	{
		$modelData = new Administracion_Model_DbTable_Dependgrupos();
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
        if (Session::getInstance()->get($this->namefilter)!="") {
            $filters =(object)Session::getInstance()->get($this->namefilter);
            if ($filters->codigo != '') {
                $filtros = $filtros." AND codigo LIKE '%".$filters->codigo."%'";
            }
            if ($filters->nombre != '') {
                $filtros = $filtros." AND nombre LIKE '%".$filters->nombre."%'";
            }
            if ($filters->bandera != '') {
                $filtros = $filtros." AND bandera LIKE '%".$filters->bandera."%'";
            }
            if ($filters->grupo != '') {
                $filtros = $filtros." AND grupo LIKE '%".$filters->grupo."%'";
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
					$parramsfilter['codigo'] =  $this->_getSanitizedParam("codigo");
					$parramsfilter['nombre'] =  $this->_getSanitizedParam("nombre");
					$parramsfilter['bandera'] =  $this->_getSanitizedParam("bandera");
					$parramsfilter['grupo'] =  $this->_getSanitizedParam("grupo");Session::getInstance()->set($this->namefilter, $parramsfilter);
        }
        if ($this->_getSanitizedParam("cleanfilter") == 1) {
            Session::getInstance()->set($this->namefilter, '');
            Session::getInstance()->set($this->namepageactual,1);
        }
    }
}