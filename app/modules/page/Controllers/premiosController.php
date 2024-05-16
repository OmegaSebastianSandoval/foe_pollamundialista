<?php 

class Page_premiosController extends Page_mainController
{
  public $botonactivo = 7;

  public function indexAction()
  {
    $this->_view->contenido = $this->template->getContentseccion(3);
  }
}