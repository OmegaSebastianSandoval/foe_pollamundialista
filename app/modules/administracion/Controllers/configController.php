<?php
/**
* Controlador de Config que permite la  creacion, edicion  y eliminacion de los config del Sistema
*/
class Administracion_configController extends Administracion_mainController
{
	public $botonpanel = 12;

	/**
	 * $mainModel  instancia del modelo de  base de datos config
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
	protected $_csrf_section = "administracion_config";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
     * Inicializa las variables principales del controlador config .
     *
     * @return void.
     */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Config();
		$this->namefilter = "parametersfilterconfig";
		$this->route = "/administracion/config";
		$this->namepages ="pages_config";
		$this->namepageactual ="page_actual_config";
		$this->_view->route = $this->route;
		if(Session::getInstance()->get($this->namepages)){
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
     * Recibe la informacion y  muestra un listado de  config con sus respectivos filtros.
     *
     * @return void.
     */
	public function indexAction()
	{
		$title = "Administración de config";
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
	}

	/**
     * Genera la Informacion necesaria para editar o crear un  config  y muestra su formulario
     *
     * @return void.
     */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_config_".date("YmdHis");
		$this->_csrf->generateCode($this->_csrf_section);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$id = $this->_getSanitizedParam("id");
		if ($id > 0) {
			$content = $this->mainModel->getById($id);
			if($content->config_id){
				$this->_view->content = $content;
				$this->_view->routeform = $this->route."/update";
				$title = "Actualizar config";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}else{
				$this->_view->routeform = $this->route."/insert";
				$title = "Crear config";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route."/insert";
			$title = "Crear config";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
     * Inserta la informacion de un config  y redirecciona al listado de config.
     *
     * @return void.
     */
	public function insertAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {	
			$data = $this->getData();
			$id = $this->mainModel->insert($data);
			
			$data['config_id']= $id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'CREAR CONFIG';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y Actualiza la informacion de un config  y redirecciona al listado de config.
     *
     * @return void.
     */
	public function updateAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {
			$id = $this->_getSanitizedParam("id");
			$content = $this->mainModel->getById($id);
			if ($content->config_id) {
				$data = $this->getData();
					$this->mainModel->update($data,$id);
				$this->actualizarPuntos();

			}
			$data['config_id']=$id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'EDITAR CONFIG';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y elimina un config  y redirecciona al listado de config.
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
					$data['log_tipo'] = 'BORRAR CONFIG';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data); }
			}
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Config.
     *
     * @return array con toda la informacion recibida del formulario.
     */
	private function getData()
	{
		$data = array();
		$data['config_valorcuota'] = $this->_getSanitizedParam("config_valorcuota");
		$data['config_interes'] = $this->_getSanitizedParam("config_interes");
		$data['config_horasminimo'] = $this->_getSanitizedParam("config_horasminimo");

		if($this->_getSanitizedParam("config_gruposmarcador") == '' ) {
			$data['config_gruposmarcador'] = '0';
		} else {
			$data['config_gruposmarcador'] = $this->_getSanitizedParam("config_gruposmarcador");
		}
		if($this->_getSanitizedParam("config_gruposequipo") == '' ) {
			$data['config_gruposequipo'] = '0';
		} else {
			$data['config_gruposequipo'] = $this->_getSanitizedParam("config_gruposequipo");
		}
		if($this->_getSanitizedParam("config_gruposempate") == '' ) {
			$data['config_gruposempate'] = '0';
		} else {
			$data['config_gruposempate'] = $this->_getSanitizedParam("config_gruposempate");
		}
		if($this->_getSanitizedParam("config_1puestooctavos") == '' ) {
			$data['config_1puestooctavos'] = '0';
		} else {
			$data['config_1puestooctavos'] = $this->_getSanitizedParam("config_1puestooctavos");
		}
		if($this->_getSanitizedParam("config_2puestooctavos") == '' ) {
			$data['config_2puestooctavos'] = '0';
		} else {
			$data['config_2puestooctavos'] = $this->_getSanitizedParam("config_2puestooctavos");
		}
		if($this->_getSanitizedParam("config_octavosmarcador") == '' ) {
			$data['config_octavosmarcador'] = '0';
		} else {
			$data['config_octavosmarcador'] = $this->_getSanitizedParam("config_octavosmarcador");
		}
		if($this->_getSanitizedParam("config_octavosequipo") == '' ) {
			$data['config_octavosequipo'] = '0';
		} else {
			$data['config_octavosequipo'] = $this->_getSanitizedParam("config_octavosequipo");
		}
		if($this->_getSanitizedParam("config_cuartosclasificado") == '' ) {
			$data['config_cuartosclasificado'] = '0';
		} else {
			$data['config_cuartosclasificado'] = $this->_getSanitizedParam("config_cuartosclasificado");
		}
		if($this->_getSanitizedParam("config_cuartosmarcador") == '' ) {
			$data['config_cuartosmarcador'] = '0';
		} else {
			$data['config_cuartosmarcador'] = $this->_getSanitizedParam("config_cuartosmarcador");
		}
		if($this->_getSanitizedParam("config_cuartosganador") == '' ) {
			$data['config_cuartosganador'] = '0';
		} else {
			$data['config_cuartosganador'] = $this->_getSanitizedParam("config_cuartosganador");
		}
		if($this->_getSanitizedParam("config_semisclasificado") == '' ) {
			$data['config_semisclasificado'] = '0';
		} else {
			$data['config_semisclasificado'] = $this->_getSanitizedParam("config_semisclasificado");
		}
		if($this->_getSanitizedParam("config_semismarcador") == '' ) {
			$data['config_semismarcador'] = '0';
		} else {
			$data['config_semismarcador'] = $this->_getSanitizedParam("config_semismarcador");
		}
		if($this->_getSanitizedParam("config_semisequipo") == '' ) {
			$data['config_semisequipo'] = '0';
		} else {
			$data['config_semisequipo'] = $this->_getSanitizedParam("config_semisequipo");
		}
		if($this->_getSanitizedParam("config_finalesmarcadores") == '' ) {
			$data['config_finalesmarcadores'] = '0';
		} else {
			$data['config_finalesmarcadores'] = $this->_getSanitizedParam("config_finalesmarcadores");
		}
		if($this->_getSanitizedParam("config_campeon") == '' ) {
			$data['config_campeon'] = '0';
		} else {
			$data['config_campeon'] = $this->_getSanitizedParam("config_campeon");
		}
		if($this->_getSanitizedParam("config_subcampeon") == '' ) {
			$data['config_subcampeon'] = '0';
		} else {
			$data['config_subcampeon'] = $this->_getSanitizedParam("config_subcampeon");
		}
		if($this->_getSanitizedParam("config_tercero") == '' ) {
			$data['config_tercero'] = '0';
		} else {
			$data['config_tercero'] = $this->_getSanitizedParam("config_tercero");
		}
		if($this->_getSanitizedParam("config_cuarto") == '' ) {
			$data['config_cuarto'] = '0';
		} else {
			$data['config_cuarto'] = $this->_getSanitizedParam("config_cuarto");
		}
		if($this->_getSanitizedParam("config_goleador") == '' ) {
			$data['config_goleador'] = '0';
		} else {
			$data['config_goleador'] = $this->_getSanitizedParam("config_goleador");
		}
		if($this->_getSanitizedParam("config_valla") == '' ) {
			$data['config_valla'] = '0';
		} else {
			$data['config_valla'] = $this->_getSanitizedParam("config_valla");
		}
		return $data;
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
            if ($filters->config_valorcuota != '') {
                $filtros = $filtros." AND config_valorcuota LIKE '%".$filters->config_valorcuota."%'";
            }
            if ($filters->config_interes != '') {
                $filtros = $filtros." AND config_interes LIKE '%".$filters->config_interes."%'";
            }
            if ($filters->config_gruposmarcador != '') {
                $filtros = $filtros." AND config_gruposmarcador LIKE '%".$filters->config_gruposmarcador."%'";
            }
            if ($filters->config_gruposequipo != '') {
                $filtros = $filtros." AND config_gruposequipo LIKE '%".$filters->config_gruposequipo."%'";
            }
            if ($filters->config_gruposempate != '') {
                $filtros = $filtros." AND config_gruposempate LIKE '%".$filters->config_gruposempate."%'";
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
					$parramsfilter['config_valorcuota'] =  $this->_getSanitizedParam("config_valorcuota");
					$parramsfilter['config_interes'] =  $this->_getSanitizedParam("config_interes");
					$parramsfilter['config_gruposmarcador'] =  $this->_getSanitizedParam("config_gruposmarcador");
					$parramsfilter['config_gruposequipo'] =  $this->_getSanitizedParam("config_gruposequipo");
					$parramsfilter['config_gruposempate'] =  $this->_getSanitizedParam("config_gruposempate");Session::getInstance()->set($this->namefilter, $parramsfilter);
        }
        if ($this->_getSanitizedParam("cleanfilter") == 1) {
            Session::getInstance()->set($this->namefilter, '');
            Session::getInstance()->set($this->namepageactual,1);
        }
    }
}