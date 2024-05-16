<?php 

class Page_terminosController extends Page_mainController
{
  public $botonactivo = 8;

  public function indexAction()
  {
    $this->_view->contenido = $this->template->getContentseccion(4);
  }
}