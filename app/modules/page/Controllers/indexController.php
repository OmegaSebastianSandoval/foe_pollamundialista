<?php

/**
 *
 */

class Page_indexController extends Page_mainController
{

  public function indexAction()
  {
    $this->_view->banner = $this->template->bannerPrincipal(1);
    $this->_view->contenido = $this->template->getContentseccion("1");

    $partidosModel = new Administracion_Model_DbTable_Partidos();
    $resultados = $partidosModel->getPartidos(" ganador IS NOT NULL AND ganador!='' ", " fecha DESC, hora DESC LIMIT 3 ");

    $this->_view->resultados = $resultados;
  }

  public function logoutAction()
  {
    Session::getInstance()->set("kt_login_id", "");
    Session::getInstance()->set("kt_login_level", "");
    Session::getInstance()->set("kt_login_user", "");
    Session::getInstance()->set("kt_login_name", "");
    Session::getInstance()->set("puntos", "");
    header('Location: /');
  }
}
