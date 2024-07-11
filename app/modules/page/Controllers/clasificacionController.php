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
		if($_GET["prueba"]==1){
		    $this->_view->usuarios = $userModel1->getList(" user_level='2' AND user_paso='4' "," CONVERT(user_puntos, UNSIGNED) DESC, CONVERT(user_marcadores, UNSIGNED) DESC,CONVERT(user_ganadores, UNSIGNED) DESC ");
		}else{
		    $this->_view->usuarios = $userModel1->getList(" user_level='2' AND user_paso='4' "," CONVERT(user_puntos, UNSIGNED) DESC, CONVERT(user_marcadores, UNSIGNED) DESC,CONVERT(user_ganadores, UNSIGNED) DESC, user_names ASC ");
		    
		}	}

}