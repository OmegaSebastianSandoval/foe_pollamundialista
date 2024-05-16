<?php 

/**
*
*/

class Page_clasificacionController extends Page_mainController
{

	public $botonactivo = 5;

	public function indexAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(6);
		
		$userModel1 = new Administracion_Model_DbTable_Usuariospolla();
		$this->_view->usuarios = $userModel1->getList(" user_level='2' AND user_paso='4' "," user_puntos DESC, user_marcadores DESC, user_ganadores DESC, user_names ASC ");
	}

}