<?php

/**
 *
 */

class Page_inscribaseController extends Page_mainController
{

	public $botonactivo = 2;

	public function indexAction()
	{
	}

	


	public function validarAction()
	{
		$this->setLayout('blanco');

		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");


		if (!$existe) {
			header("Location:/page/inscribase/?cedula=" . $cedula . "&error=1");
			return;
		}
		$userModel1 = new Administracion_Model_DbTable_Usuariospolla();
		$existe2 = $userModel1->getList(" user_user='$cedula' AND user_paso='4' ", "")[0];
		if (!$existe2) {
			header("Location:/page/inscribase/registro?cedula=" . $cedula);
			return;
		} else {
			//iniciar sesion
			header("Location:/page/inscribase/login/?cedula=".$cedula);
			return;


			/* */
		}
	}



	public function registroAction()
	{
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$this->_view->existe = $existe[0];
	}





	public function guardarAction()
	{
		//error_reporting(E_ALL);

		$this->setLayout('blanco');

		$userModel1 = new Administracion_Model_DbTable_Usuariospolla();

		$data['user_names'] = $this->_getSanitizedParam("nombre");
		$data['user_email'] = $this->_getSanitizedParam("correo");
		$data['user_idnumber'] = $this->_getSanitizedParam("cedula");
		$data['user_city'] = $this->_getSanitizedParam("ciudad");
		$data['user_country'] = "";
		$data['user_phone'] = $this->_getSanitizedParam("telefono");
		$data['user_address'] = $this->_getSanitizedParam("direccion");
		$data['user_level'] = 2;
		$data['user_state'] = 1;
		$data['user_area'] = "";
		$data['user_user'] = $this->_getSanitizedParam("cedula");
		$data['user_password'] = $this->_getSanitizedParam("clave");
		$data['user_celular'] = $this->_getSanitizedParam("celular");

		$data['user_puntos'] = 0;
		$data['user_marcadores'] = 0;
		$data['user_ganadores'] = 0;
		$data['user_otros'] = 0;
		$data['user_total'] = 0;
		$data['user_cuotas'] = $this->_getSanitizedParam("cuotas");
		$data['user_paso'] = 4;
		$data['user_fecha'] = date("Y-m-d");

		$valor = '50.719';
		if ($data['user_cuotas'] == 2) {
			$valor = '25541';
		}


		if ($data['user_user'] != "" and $data['user_password'] != "") {
			$id = $userModel1->insert($data);
		}

	

		$user = $data['user_user'];
		$userModel1 = new Administracion_Model_DbTable_Usuariospolla();
		$existe2 = $userModel1->getList(" user_user='$user' AND user_paso='4' ", "")[0];


		Session::getInstance()->set("kt_login_id", $existe2->user_id);
		Session::getInstance()->set("kt_login_level", $existe2->user_level);
		Session::getInstance()->set("kt_login_user", $existe2->user_user);
		Session::getInstance()->set("kt_login_name", $existe2->user_names . " " . $existe2->user_lastnames);
		Session::getInstance()->set("ciudad", $data['city']);
		Session::getInstance()->set("cuotas", $data['cuotas']);
		Session::getInstance()->set("valor", $valor);
		Session::getInstance()->set("password", $data['password']);

		header("Location:/page/jugar");
	}
	public function loginAction()
	{
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$this->_view->existe = $existe[0];
	}

	
	public function login2Action()
	{
		
		$user = $this->_getSanitizedParam("cedula");
		$password = $this->_getSanitizedParam("clave");

		$userModel = new Administracion_Model_DbTable_Usuariospolla();
		if ($userModel->autenticateUser($user, $password) == true) {
			$existe2 = $userModel->getList(" user_user='$user' AND user_paso='4' ", "")[0];

			Session::getInstance()->set("kt_login_id", $existe2->user_id);
			Session::getInstance()->set("kt_login_level", $existe2->user_level);
			Session::getInstance()->set("kt_login_user", $existe2->user_user);
			Session::getInstance()->set("kt_login_name", $existe2->user_names . " " . $existe2->user_lastnames);
			Session::getInstance()->set("puntos", $existe2->user_puntos);

			header("Location:/page/jugar/"); 
			header("Location:/page/jugar");
		} else {
			header("Location:/page/inscribase/login/?cedula=" . $user . "&error=1");
		}
	}


}
