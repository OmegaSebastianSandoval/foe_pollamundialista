<?php

/**
 *
 */

class Page_mainController extends Controllers_Abstract
{

	public $template;

	public function init()
	{
		$this->setLayout('page_page');
		$this->template = new Page_Model_Template_Template($this->_view);
		$infopageModel = new Page_Model_DbTable_Informacion();
		$fasesModel = new Administracion_Model_DbTable_Fases();
		$this->_view->fasesBotonera = $fasesModel->getList("estado = 1", "orden ASC");



		$user_user = Session::getInstance()->get("kt_login_user");
		if (!empty($user_user)) {

			$userModel = new Administracion_Model_DbTable_Usuariospolla();
			$existe2 = $userModel->getList(" user_user='$user_user' AND user_paso ='4'", "")[0];

			$puntos = $existe2->user_puntos ?? 0;
			Session::getInstance()->set("puntos", $puntos);
		}

		$informacion = $infopageModel->getById(1);
		$this->_view->infopage = $informacion;
		$this->_view->botonactivo = $this->botonactivo;
		$this->_view->BtnActivoBotonera = $this->BtnActivoBotonera;


		$this->getLayout()->setData("meta_description", "$informacion->info_pagina_descripcion");
		$this->getLayout()->setData("meta_keywords", "$informacion->info_pagina_tags");
		$this->getLayout()->setData("scripts", "$informacion->info_pagina_scripts");
		$botonesModel = new Page_Model_DbTable_Publicidad();
		$this->_view->botones = $botonesModel->getList("publicidad_seccion='3' AND publicidad_estado='1'", "orden ASC");

		$header = $this->_view->getRoutPHP('modules/page/Views/partials/header.php');
		$this->getLayout()->setData("header", $header);
		$subheader = $this->_view->getRoutPHP('modules/page/Views/partials/subheader.php');
		$this->getLayout()->setData("subheader", $subheader);
		$enlaceModel = new Page_Model_DbTable_Enlace();
		$this->_view->enlaces = $enlaceModel->getList("", "orden ASC");
		$footer = $this->_view->getRoutPHP('modules/page/Views/partials/footer.php');
		$this->getLayout()->setData("footer", $footer);
		$adicionales = $this->_view->getRoutPHP('modules/page/Views/partials/adicionales.php');
		$this->getLayout()->setData("adicionales", $adicionales);
		$this->usuario();
	}


	public function usuario()
	{
		$userModel = new Core_Model_DbTable_User();
		$user = $userModel->getById(Session::getInstance()->get("kt_login_id"));
		if ($user->user_id == 1) {
			$this->editarpage = 1;
		}
	}

	function conectar2()
	{


		$url = "http://notify-it.com/notify/services/checkAccount?u=comercial@foebbva.notify-it.com&p=9864912c-77e8-4a0b-aed0-e009489aca2d";

		$data = array();

		$ch = curl_init($url);
		# Setup request to send json via POST.
		$payload = json_encode($data);
		curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json'));
		# Return response instead of printing.
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

		# Send request.
		$result = curl_exec($ch);
		curl_close($ch);
		# Print response.
		//echo "<pre>$result</pre>";

		return $result;
	}



	function enviar($data, $token)
	{


		$url = "http://notify-it.com/notify/services/sendImmediateEmailNotification?login=comercial@foebbva.notify-it.com&password=9864912c-77e8-4a0b-aed0-e009489aca2d";

		$authorization = "Authorization: Bearer " . $token; // Prepare the authorisation token

		$ch = curl_init($url);
		# Setup request to send json via POST.
		$payload = json_encode($data);

		//echo $payload;

		curl_setopt($ch, CURLOPT_POSTFIELDS, $payload);
		curl_setopt($ch, CURLOPT_HTTPHEADER, array('Content-Type:application/json', $authorization));
		# Return response instead of printing.
		curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

		curl_setopt($ch, CURLOPT_SSL_VERIFYHOST, false);
		curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, false);

		# Send request.
		$result = curl_exec($ch);
		//echo 'Curl error: ' . curl_error($ch).'<br>';
		curl_close($ch);
		# Print response.
		//echo "<pre>$result</pre>";

		return $result;
	}
}
