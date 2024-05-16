<?php
/**
* Controlador de Clasificados que permite la  creacion, edicion  y eliminacion de los clasificado del Sistema
*/
class Administracion_clasificadosController extends Administracion_mainController
{
	public $botonpanel = 14;

	/**
	 * $mainModel  instancia del modelo de  base de datos clasificado
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
	protected $_csrf_section = "administracion_clasificados";

	/**
	 * $namepages nombre de la pvariable en la cual se va a guardar  el numero de seccion en la paginacion del controlador
	 * @var string
	 */
	protected $namepages;



	/**
     * Inicializa las variables principales del controlador clasificados .
     *
     * @return void.
     */
	public function init()
	{
		$this->mainModel = new Administracion_Model_DbTable_Clasificados();
		$this->namefilter = "parametersfilterclasificados";
		$this->route = "/administracion/clasificados";
		$this->namepages ="pages_clasificados";
		$this->namepageactual ="page_actual_clasificados";
		$this->_view->route = $this->route;
		if(Session::getInstance()->get($this->namepages)){
			$this->pages = Session::getInstance()->get($this->namepages);
		} else {
			$this->pages = 20;
		}
		parent::init();
	}


	/**
     * Recibe la informacion y  muestra un listado de  clasificado con sus respectivos filtros.
     *
     * @return void.
     */
	public function indexAction()
	{
		$title = "Administración de clasificado";
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
		$this->_view->list_clasificado_cuartos_e1 = $this->getClasificadocuartose1();
		$this->_view->list_clasificado_cuartos_e2 = $this->getClasificadocuartose2();
		$this->_view->list_clasificado_cuartos_e3 = $this->getClasificadocuartose3();
		$this->_view->list_clasificado_cuartos_e4 = $this->getClasificadocuartose4();
		$this->_view->list_clasificado_cuartos_e5 = $this->getClasificadocuartose5();
		$this->_view->list_clasificado_cuartos_e6 = $this->getClasificadocuartose6();
		$this->_view->list_clasificado_cuartos_e7 = $this->getClasificadocuartose7();
		$this->_view->list_clasificado_cuartos_e8 = $this->getClasificadocuartose8();
	}

	/**
     * Genera la Informacion necesaria para editar o crear un  clasificado  y muestra su formulario
     *
     * @return void.
     */
	public function manageAction()
	{
		$this->_view->route = $this->route;
		$this->_csrf_section = "manage_clasificados_".date("YmdHis");
		$this->_csrf->generateCode($this->_csrf_section);
		$this->_view->csrf_section = $this->_csrf_section;
		$this->_view->csrf = Session::getInstance()->get('csrf')[$this->_csrf_section];
		$this->_view->list_clasificado_octavos_a1 = $this->getClasificadooctavosa1();
		$this->_view->list_clasificado_octavos_a2 = $this->getClasificadooctavosa2();
		$this->_view->list_clasificado_octavos_b1 = $this->getClasificadooctavosb1();
		$this->_view->list_clasificado_octavos_b2 = $this->getClasificadooctavosb2();
		$this->_view->list_clasificado_octavos_c1 = $this->getClasificadooctavosc1();
		$this->_view->list_clasificado_octavos_c2 = $this->getClasificadooctavosc2();
		$this->_view->list_clasificado_octavos_d1 = $this->getClasificadooctavosd1();
		$this->_view->list_clasificado_octavos_d2 = $this->getClasificadooctavosd2();
		$this->_view->list_clasificado_octavos_e1 = $this->getClasificadooctavose1();
		$this->_view->list_clasificado_octavos_e2 = $this->getClasificadooctavose2();
		$this->_view->list_clasificado_octavos_f1 = $this->getClasificadooctavosf1();
		$this->_view->list_clasificado_octavos_f2 = $this->getClasificadooctavosf2();
		$this->_view->list_clasificado_octavos_g1 = $this->getClasificadooctavosg1();
		$this->_view->list_clasificado_octavos_g2 = $this->getClasificadooctavosg2();
		$this->_view->list_clasificado_octavos_h1 = $this->getClasificadooctavosh1();
		$this->_view->list_clasificado_octavos_h2 = $this->getClasificadooctavosh2();
		$this->_view->list_clasificado_cuartos_e1 = $this->getClasificadocuartose1();
		$this->_view->list_clasificado_cuartos_e2 = $this->getClasificadocuartose2();
		$this->_view->list_clasificado_cuartos_e3 = $this->getClasificadocuartose3();
		$this->_view->list_clasificado_cuartos_e4 = $this->getClasificadocuartose4();
		$this->_view->list_clasificado_cuartos_e5 = $this->getClasificadocuartose5();
		$this->_view->list_clasificado_cuartos_e6 = $this->getClasificadocuartose6();
		$this->_view->list_clasificado_cuartos_e7 = $this->getClasificadocuartose7();
		$this->_view->list_clasificado_cuartos_e8 = $this->getClasificadocuartose8();
		$this->_view->list_clasificado_semis_e1 = $this->getClasificadosemise1();
		$this->_view->list_clasificado_semis_e2 = $this->getClasificadosemise2();
		$this->_view->list_clasificado_semis_e3 = $this->getClasificadosemise3();
		$this->_view->list_clasificado_semis_e4 = $this->getClasificadosemise4();
		$this->_view->list_clasificado_cuarto = $this->getClasificadocuarto();
		$this->_view->list_clasificado_tercero = $this->getClasificadotercero();
		$this->_view->list_clasificado_subcampeon = $this->getClasificadosubcampeon();
		$this->_view->list_clasificado_campeon = $this->getClasificadocampeon();
		$this->_view->list_clasificado_jugador = $this->getClasificadojugador();
		$this->_view->list_clasificado_valla = $this->getClasificadovalla();
		$id = $this->_getSanitizedParam("id");
		if ($id > 0) {
			$content = $this->mainModel->getById($id);
			if($content->clasificado_id){
				$this->_view->content = $content;
				$this->_view->routeform = $this->route."/update";
				$title = "Actualizar clasificado";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}else{
				$this->_view->routeform = $this->route."/insert";
				$title = "Crear clasificado";
				$this->getLayout()->setTitle($title);
				$this->_view->titlesection = $title;
			}
		} else {
			$this->_view->routeform = $this->route."/insert";
			$title = "Crear clasificado";
			$this->getLayout()->setTitle($title);
			$this->_view->titlesection = $title;
		}
	}

	/**
     * Inserta la informacion de un clasificado  y redirecciona al listado de clasificado.
     *
     * @return void.
     */
	public function insertAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {	
			$data = $this->getData();
			$id = $this->mainModel->insert($data);
			
			$data['clasificado_id']= $id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'CREAR CLASIFICADO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y Actualiza la informacion de un clasificado  y redirecciona al listado de clasificado.
     *
     * @return void.
     */
	public function updateAction(){
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf ) {
			$id = $this->_getSanitizedParam("id");
			$content = $this->mainModel->getById($id);
			if ($content->clasificado_id) {
				$data = $this->getData();
					$this->mainModel->update($data,$id);
				$this->actualizarPuntos();

			}
			$data['clasificado_id']=$id;
			$data['log_log'] = print_r($data,true);
			$data['log_tipo'] = 'EDITAR CLASIFICADO';
			$logModel = new Administracion_Model_DbTable_Log();
			$logModel->insert($data);}
		//header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe un identificador  y elimina un clasificado  y redirecciona al listado de clasificado.
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
					$data['log_tipo'] = 'BORRAR CLASIFICADO';
					$logModel = new Administracion_Model_DbTable_Log();
					$logModel->insert($data); }
			}
		}
		header('Location: '.$this->route.''.'');
	}

	/**
     * Recibe la informacion del formulario y la retorna en forma de array para la edicion y creacion de Clasificados.
     *
     * @return array con toda la informacion recibida del formulario.
     */
	private function getData()
	{
		$data = array();
		if($this->_getSanitizedParam("clasificado_octavos_a1") == '' ) {
			$data['clasificado_octavos_a1'] = '';
		} else {
			$data['clasificado_octavos_a1'] = $this->_getSanitizedParam("clasificado_octavos_a1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_a2") == '' ) {
			$data['clasificado_octavos_a2'] = '';
		} else {
			$data['clasificado_octavos_a2'] = $this->_getSanitizedParam("clasificado_octavos_a2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_b1") == '' ) {
			$data['clasificado_octavos_b1'] = '';
		} else {
			$data['clasificado_octavos_b1'] = $this->_getSanitizedParam("clasificado_octavos_b1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_b2") == '' ) {
			$data['clasificado_octavos_b2'] = '';
		} else {
			$data['clasificado_octavos_b2'] = $this->_getSanitizedParam("clasificado_octavos_b2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_c1") == '' ) {
			$data['clasificado_octavos_c1'] = '';
		} else {
			$data['clasificado_octavos_c1'] = $this->_getSanitizedParam("clasificado_octavos_c1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_c2") == '' ) {
			$data['clasificado_octavos_c2'] = '';
		} else {
			$data['clasificado_octavos_c2'] = $this->_getSanitizedParam("clasificado_octavos_c2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_d1") == '' ) {
			$data['clasificado_octavos_d1'] = '';
		} else {
			$data['clasificado_octavos_d1'] = $this->_getSanitizedParam("clasificado_octavos_d1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_d2") == '' ) {
			$data['clasificado_octavos_d2'] = '';
		} else {
			$data['clasificado_octavos_d2'] = $this->_getSanitizedParam("clasificado_octavos_d2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_e1") == '' ) {
			$data['clasificado_octavos_e1'] = '';
		} else {
			$data['clasificado_octavos_e1'] = $this->_getSanitizedParam("clasificado_octavos_e1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_e2") == '' ) {
			$data['clasificado_octavos_e2'] = '';
		} else {
			$data['clasificado_octavos_e2'] = $this->_getSanitizedParam("clasificado_octavos_e2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_f1") == '' ) {
			$data['clasificado_octavos_f1'] = '';
		} else {
			$data['clasificado_octavos_f1'] = $this->_getSanitizedParam("clasificado_octavos_f1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_f2") == '' ) {
			$data['clasificado_octavos_f2'] = '';
		} else {
			$data['clasificado_octavos_f2'] = $this->_getSanitizedParam("clasificado_octavos_f2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_g1") == '' ) {
			$data['clasificado_octavos_g1'] = '';
		} else {
			$data['clasificado_octavos_g1'] = $this->_getSanitizedParam("clasificado_octavos_g1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_g2") == '' ) {
			$data['clasificado_octavos_g2'] = '';
		} else {
			$data['clasificado_octavos_g2'] = $this->_getSanitizedParam("clasificado_octavos_g2");
		}
		if($this->_getSanitizedParam("clasificado_octavos_h1") == '' ) {
			$data['clasificado_octavos_h1'] = '';
		} else {
			$data['clasificado_octavos_h1'] = $this->_getSanitizedParam("clasificado_octavos_h1");
		}
		if($this->_getSanitizedParam("clasificado_octavos_h2") == '' ) {
			$data['clasificado_octavos_h2'] = '';
		} else {
			$data['clasificado_octavos_h2'] = $this->_getSanitizedParam("clasificado_octavos_h2");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e1") == '' ) {
			$data['clasificado_cuartos_e1'] = '';
		} else {
			$data['clasificado_cuartos_e1'] = $this->_getSanitizedParam("clasificado_cuartos_e1");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e2") == '' ) {
			$data['clasificado_cuartos_e2'] = '';
		} else {
			$data['clasificado_cuartos_e2'] = $this->_getSanitizedParam("clasificado_cuartos_e2");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e3") == '' ) {
			$data['clasificado_cuartos_e3'] = '';
		} else {
			$data['clasificado_cuartos_e3'] = $this->_getSanitizedParam("clasificado_cuartos_e3");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e4") == '' ) {
			$data['clasificado_cuartos_e4'] = '';
		} else {
			$data['clasificado_cuartos_e4'] = $this->_getSanitizedParam("clasificado_cuartos_e4");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e5") == '' ) {
			$data['clasificado_cuartos_e5'] = '';
		} else {
			$data['clasificado_cuartos_e5'] = $this->_getSanitizedParam("clasificado_cuartos_e5");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e6") == '' ) {
			$data['clasificado_cuartos_e6'] = '';
		} else {
			$data['clasificado_cuartos_e6'] = $this->_getSanitizedParam("clasificado_cuartos_e6");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e7") == '' ) {
			$data['clasificado_cuartos_e7'] = '';
		} else {
			$data['clasificado_cuartos_e7'] = $this->_getSanitizedParam("clasificado_cuartos_e7");
		}
		if($this->_getSanitizedParam("clasificado_cuartos_e8") == '' ) {
			$data['clasificado_cuartos_e8'] = '';
		} else {
			$data['clasificado_cuartos_e8'] = $this->_getSanitizedParam("clasificado_cuartos_e8");
		}
		if($this->_getSanitizedParam("clasificado_semis_e1") == '' ) {
			$data['clasificado_semis_e1'] = '';
		} else {
			$data['clasificado_semis_e1'] = $this->_getSanitizedParam("clasificado_semis_e1");
		}
		if($this->_getSanitizedParam("clasificado_semis_e2") == '' ) {
			$data['clasificado_semis_e2'] = '';
		} else {
			$data['clasificado_semis_e2'] = $this->_getSanitizedParam("clasificado_semis_e2");
		}
		if($this->_getSanitizedParam("clasificado_semis_e3") == '' ) {
			$data['clasificado_semis_e3'] = '';
		} else {
			$data['clasificado_semis_e3'] = $this->_getSanitizedParam("clasificado_semis_e3");
		}
		if($this->_getSanitizedParam("clasificado_semis_e4") == '' ) {
			$data['clasificado_semis_e4'] = '';
		} else {
			$data['clasificado_semis_e4'] = $this->_getSanitizedParam("clasificado_semis_e4");
		}
		if($this->_getSanitizedParam("clasificado_cuarto") == '' ) {
			$data['clasificado_cuarto'] = '';
		} else {
			$data['clasificado_cuarto'] = $this->_getSanitizedParam("clasificado_cuarto");
		}
		if($this->_getSanitizedParam("clasificado_tercero") == '' ) {
			$data['clasificado_tercero'] = '';
		} else {
			$data['clasificado_tercero'] = $this->_getSanitizedParam("clasificado_tercero");
		}
		if($this->_getSanitizedParam("clasificado_subcampeon") == '' ) {
			$data['clasificado_subcampeon'] = '';
		} else {
			$data['clasificado_subcampeon'] = $this->_getSanitizedParam("clasificado_subcampeon");
		}
		if($this->_getSanitizedParam("clasificado_campeon") == '' ) {
			$data['clasificado_campeon'] = '';
		} else {
			$data['clasificado_campeon'] = $this->_getSanitizedParam("clasificado_campeon");
		}
		if($this->_getSanitizedParam("clasificado_jugador") == '' ) {
			$data['clasificado_jugador'] = '';
		} else {
			$data['clasificado_jugador'] = $this->_getSanitizedParam("clasificado_jugador");
		}
		if($this->_getSanitizedParam("clasificado_valla") == '' ) {
			$data['clasificado_valla'] = '';
		} else {
			$data['clasificado_valla'] = $this->_getSanitizedParam("clasificado_valla");
		}
		return $data;
	}

	/**
     * Genera los valores del campo clasificado octavos a1.
     *
     * @return array cadena con los valores del campo clasificado octavos a1.
     */
	private function getClasificadooctavosa1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 1");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos a2.
     *
     * @return array cadena con los valores del campo clasificado octavos a2.
     */
	private function getClasificadooctavosa2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 1");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos b1.
     *
     * @return array cadena con los valores del campo clasificado octavos b1.
     */
	private function getClasificadooctavosb1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 2");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->codigo;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos b2.
     *
     * @return array cadena con los valores del campo clasificado octavos b2.
     */
	private function getClasificadooctavosb2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 2");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos c1.
     *
     * @return array cadena con los valores del campo clasificado octavos c1.
     */
	private function getClasificadooctavosc1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 3");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->codigo;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos c2.
     *
     * @return array cadena con los valores del campo clasificado octavos c2.
     */
	private function getClasificadooctavosc2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 3");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos d1.
     *
     * @return array cadena con los valores del campo clasificado octavos d1.
     */
	private function getClasificadooctavosd1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 4");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos d2.
     *
     * @return array cadena con los valores del campo clasificado octavos d2.
     */
	private function getClasificadooctavosd2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 4");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos e1.
     *
     * @return array cadena con los valores del campo clasificado octavos e1.
     */
	private function getClasificadooctavose1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 5");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos e2.
     *
     * @return array cadena con los valores del campo clasificado octavos e2.
     */
	private function getClasificadooctavose2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 5");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos f1.
     *
     * @return array cadena con los valores del campo clasificado octavos f1.
     */
	private function getClasificadooctavosf1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 6");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos f2.
     *
     * @return array cadena con los valores del campo clasificado octavos f2.
     */
	private function getClasificadooctavosf2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 6");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos g1.
     *
     * @return array cadena con los valores del campo clasificado octavos g1.
     */
	private function getClasificadooctavosg1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 7");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->bandera;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos g2.
     *
     * @return array cadena con los valores del campo clasificado octavos g2.
     */
	private function getClasificadooctavosg2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 7");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos h1.
     *
     * @return array cadena con los valores del campo clasificado octavos h1.
     */
	private function getClasificadooctavosh1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 8");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado octavos h2.
     *
     * @return array cadena con los valores del campo clasificado octavos h2.
     */
	private function getClasificadooctavosh2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("grupo = 8");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e1.
     *
     * @return array cadena con los valores del campo clasificado cuartos e1.
     */
	private function getClasificadocuartose1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e2.
     *
     * @return array cadena con los valores del campo clasificado cuartos e2.
     */
	private function getClasificadocuartose2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e3.
     *
     * @return array cadena con los valores del campo clasificado cuartos e3.
     */
	private function getClasificadocuartose3()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e4.
     *
     * @return array cadena con los valores del campo clasificado cuartos e4.
     */
	private function getClasificadocuartose4()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e5.
     *
     * @return array cadena con los valores del campo clasificado cuartos e5.
     */
	private function getClasificadocuartose5()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e6.
     *
     * @return array cadena con los valores del campo clasificado cuartos e6.
     */
	private function getClasificadocuartose6()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e7.
     *
     * @return array cadena con los valores del campo clasificado cuartos e7.
     */
	private function getClasificadocuartose7()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado cuartos e8.
     *
     * @return array cadena con los valores del campo clasificado cuartos e8.
     */
	private function getClasificadocuartose8()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado semis e1.
     *
     * @return array cadena con los valores del campo clasificado semis e1.
     */
	private function getClasificadosemise1()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado semis e2.
     *
     * @return array cadena con los valores del campo clasificado semis e2.
     */
	private function getClasificadosemise2()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado semis e3.
     *
     * @return array cadena con los valores del campo clasificado semis e3.
     */
	private function getClasificadosemise3()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo clasificado semis e4.
     *
     * @return array cadena con los valores del campo clasificado semis e4.
     */
	private function getClasificadosemise4()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo cuarto puesto.
     *
     * @return array cadena con los valores del campo cuarto puesto.
     */
	private function getClasificadocuarto()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo tercer puesto.
     *
     * @return array cadena con los valores del campo tercer puesto.
     */
	private function getClasificadotercero()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo subcampeon.
     *
     * @return array cadena con los valores del campo subcampeon.
     */
	private function getClasificadosubcampeon()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo ccampeon.
     *
     * @return array cadena con los valores del campo ccampeon.
     */
	private function getClasificadocampeon()
	{
		$modelData = new Administracion_Model_DbTable_Dependequipos();
		$data = $modelData->getList("","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo jugador.
     *
     * @return array cadena con los valores del campo jugador.
     */
	private function getClasificadojugador()
	{
		$modelDataj = new Administracion_Model_DbTable_Dependjugadores();
		$data = $modelDataj->getList("tipo ='1' ","nombre ASC");
		$array = array();
		foreach ($data as $key => $value) {
			$array[$value->id] = $value->nombre;
		}
		return $array;
	}


	/**
     * Genera los valores del campo valla.
     *
     * @return array cadena con los valores del campo valla.
     */
	private function getClasificadovalla()
	{
		$modelDataj = new Administracion_Model_DbTable_Dependjugadores();
		$data = $modelDataj->getList("tipo ='2' ","nombre ASC");
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
            if ($filters->clasificado_octavos_a1 != '') {
                $filtros = $filtros." AND clasificado_octavos_a1 LIKE '%".$filters->clasificado_octavos_a1."%'";
            }
            if ($filters->clasificado_octavos_a2 != '') {
                $filtros = $filtros." AND clasificado_octavos_a2 LIKE '%".$filters->clasificado_octavos_a2."%'";
            }
            if ($filters->clasificado_octavos_b1 != '') {
                $filtros = $filtros." AND clasificado_octavos_b1 LIKE '%".$filters->clasificado_octavos_b1."%'";
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
					$parramsfilter['clasificado_octavos_a1'] =  $this->_getSanitizedParam("clasificado_octavos_a1");
					$parramsfilter['clasificado_octavos_a2'] =  $this->_getSanitizedParam("clasificado_octavos_a2");
					$parramsfilter['clasificado_octavos_b1'] =  $this->_getSanitizedParam("clasificado_octavos_b1");Session::getInstance()->set($this->namefilter, $parramsfilter);
        }
        if ($this->_getSanitizedParam("cleanfilter") == 1) {
            Session::getInstance()->set($this->namefilter, '');
            Session::getInstance()->set($this->namepageactual,1);
        }
    }
}