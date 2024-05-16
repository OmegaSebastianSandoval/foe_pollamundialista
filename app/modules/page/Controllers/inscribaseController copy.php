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

	public function recordarAction()
	{
	}

	public function recordar2Action()
	{
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$userModel1 = new Administracion_Model_DbTable_User();
		$existe2 = $userModel1->getList(" user_user='$cedula' AND user_paso='4' ", "");
		$this->_view->mensaje = "";
		$correo = $existe2[0]->user_email;
		if (count($existe2) == 0) {
			$this->_view->mensaje = "No se encuentra registrado";
		} else {
			$this->_view->mensaje = "Su contraseña fue enviada al correo: " . $correo;
		}

		if ($correo != "") {

			$usuario = $existe2[0]->user_user;
			$id = $existe2[0]->user_id;
			$password = mt_rand(1000, 9999);
			$user_password = password_hash($password, PASSWORD_DEFAULT);
			$userModel1->editField($id, "user_password", $user_password);

			$mensaje = "Recordar contraseña Polla mundialista FOE <br /><br />
			Información de acceso:<br />
			<strong>URL</strong>: http://pollamundialista.foebbva.com/<br />
			<strong>USUARIO</strong>: " . $usuario . "<br />
			<strong>CLAVE</strong>: " . $password . "<br /><br /><br />
			";
			$asunto = "Recordar contraseña Polla mundialista FOEBBVA";
			$content = $mensaje . $content;

			$emailModel = new Core_Model_Mail();
			$error = true;
			$emailModel->getMail()->addAddress("" . $correo);
			$emailModel->getMail()->addCC("pollamundialistafoe@foebbva.com", "");
			$emailModel->getMail()->addBCC("soporteomega@omegawebsystems.com", "");
			$emailModel->getMail()->Subject = $asunto;
			$emailModel->getMail()->msgHTML($content);
			$emailModel->getMail()->AltBody = $content;
			if ($emailModel->sed() == true) {
				$error = false;
				//echo "Mensaje enviado";
			} else {
				//echo "Error mensaje";
			}
		}
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

			Session::getInstance()->set("kt_login_id", $existe2->user_id);
			Session::getInstance()->set("kt_login_level", $existe2->user_level);
			Session::getInstance()->set("kt_login_user", $existe2->user_user);
			Session::getInstance()->set("kt_login_name", $existe2->user_names . " " . $existe2->user_lastnames);
			Session::getInstance()->set("puntos", $existe2->user_puntos);

			header("Location:/page/jugar/");
		}
	}

	public function validar2Action()
	{
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$userModel1 = new Administracion_Model_DbTable_Usuariospolla();
		$existe2 = $userModel1->getList(" user_user='$cedula' AND user_paso='4' ", "");

		if (count($existe) > 0) {

			//si no existe insertar
			if (count($existe2) == 0) {

				$userModel1 = new Administracion_Model_DbTable_Usuariospolla();
				$data['names'] = $existe[0]->nombre;
				$data['email'] = $this->_getSanitizedParam("correo");
				$data['idnumber'] = $cedula;
				$data['city'] = $this->_getSanitizedParam("ciudad");
				$data['country'] = "";
				$data['phone'] = $this->_getSanitizedParam("telefono");
				$data['address'] = $this->_getSanitizedParam("direccion");
				$data['level'] = 2;
				$data['state'] = 1;
				$data['area'] = "";
				$data['user'] = $cedula;
				$data['password'] = $cedula;
				$data['celular'] = $this->_getSanitizedParam("celular");
				$data['current_user'] = 0;
				$data['puntos'] = 0;
				$data['marcadores'] = 0;
				$data['ganadores'] = 0;
				$data['otros'] = 0;
				$data['total'] = 0;
				$data['cuotas'] = (int)$this->_getSanitizedParam("cuotas");
				$data['fecha'] = date("Y-m-d");

				if ($data['user'] != "" and $data['password'] != "") {
					$id = $userModel1->insert($data);
				}
			}

			//iniciar sesion
			$user = $cedula;
			$userModel = new Core_Model_DbTable_User();
			$resUser = $userModel->searchUserByUser($user);
			Session::getInstance()->set("kt_login_id", $resUser->user_id);
			Session::getInstance()->set("kt_login_level", $resUser->user_level);
			Session::getInstance()->set("kt_login_user", $resUser->user_user);
			Session::getInstance()->set("kt_login_name", $resUser->user_names . " " . $resUser->user_lastnames);
			Session::getInstance()->set("puntos", $resUser->user_puntos);

			header("Location:/page/jugar/");
		} else {
			header("Location:/page/inscribase/?cedula=" . $cedula . "&error=1");
		}
	}


	public function registroAction()
	{
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$this->_view->existe = $existe[0];
	}

	public function loginAction()
	{
		$contentModel = new Page_Model_DbTable_Content();
		$this->_view->contenido = $contentModel->getList("content_section = 'Inscribase'", "orden ASC");
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$this->_view->existe = $existe[0];
	}

	public function login2Action()
	{
		$contentModel = new Page_Model_DbTable_Content();
		$this->_view->contenido = $contentModel->getList("content_section = 'Inscribase'", "orden ASC");

		$user = $this->_getSanitizedParam("cedula");
		$password = $this->_getSanitizedParam("clave");

		$userModel = new Core_Model_DbTable_User();
		if ($userModel->autenticateUser($user, $password) == true) {
			$resUser = $userModel->searchUserByUser($user);
			Session::getInstance()->set("kt_login_id", $resUser->user_id);
			Session::getInstance()->set("kt_login_level", $resUser->user_level);
			Session::getInstance()->set("kt_login_user", $resUser->user_user);
			Session::getInstance()->set("kt_login_name", $resUser->user_names . " " . $resUser->user_lastnames);
			Session::getInstance()->set("puntos", $resUser->user_puntos);
			header("Location:/page/jugar");
		} else {
			header("Location:/page/inscribase/login/?cedula=" . $user . "&error=1");
		}
	}



	public function guardarAction()
	{
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
		$data['user_paso'] =4;
		$data['user_fecha']= date("Y-m-d");

		$valor = '50.719';
		if ($data['user_cuotas'] == 2) {
			$valor = '25541';
		}
	

		if ($data['user'] != "" and $data['password'] != "") {
			$userModel1->insert($data);
		}

		$user = $data['user'];
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

	public function confirmarAction()
	{
	}

	public function confirmar2Action()
	{
		$this->setLayout('blanco');
		$id = $_SESSION['kt_login_id'];
		$userModel = new Administracion_Model_DbTable_User();
		$userModel->editField($id, "user_paso", "4");

		$emailModel = new Core_Model_Mail();
		$error = true;
		$usuario = $userModel->getList(" user_id='$id' ", "");
		$nombres = $usuario[0]->user_names . " " . $usuario[0]->user_lastnames;
		$cedula = $usuario[0]->user_user;
		$ciudad = $usuario[0]->city;
		$cuotas = $usuario[0]->user_cuotas;
		$valor = '50.719';
		if ($cuotas == 2) {
			$valor = '25.541';
		}
		$correo = $usuario[0]->user_email;

		$password = $_SESSION['password'];

		$content = '
		    <table width="100%" border="0" cellspacing="0" cellpadding="0" >
		      <tr>
		        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td><img src="http://pollamundialista.omegasolucionesweb.com/corte/logo-login.png" /></td>
		            <td class="textoNegro"><div align="center"><strong>BONO DE PARTICIPACI&Oacute;N POLLA MUNDIALISTA</strong></div></td>
		          </tr>
		        </table></td>
		      </tr>
		      <tr>
		        <td><div align="center"><span class="textoNegro"><strong>La participaci&oacute;n en la polla mundialista virtual del Fondo de Empleados BBVA, tiene un costo de $ 50.719, que se cargaran por la L&iacute;nea de Menor Cuant&iacute;a a un inter&eacute;s mensual de 1.4 %, los cuales ser&aacute;n descontados en 1 o 2 cuotas seg&uacute;n su solicitud.</strong></span></div></td>
		      </tr>
		      <tr>
		        <td><p align="justify" class="textoNegro">Yo <span style="text-decoration:underline;">' . $nombres . '</span> identificado (a) con cedula de ciudadan&iacute;a n&uacute;mero <span style="text-decoration:underline;">' . $cedula . '</span> de <span style="text-decoration:underline;">' . $ciudad . '</span>, autorizo al pagador de la empresa donde laboro y que determina mi vinculo de asociaci&oacute;n con el Fondo de Empleados BBVA, a  descontar por n&oacute;mina o d&eacute;bito autom&aacute;tico el valor de <span style="text-decoration:underline;">' . $valor . '</span> en ( <span style="text-decoration:underline;">' . $cuotas . '</span> ) cuotas mensuales. En caso de m&iacute; desvinculaci&oacute;n laboral, autorizo descontar de mi liquidaci&oacute;n final de prestaciones sociales y dem&aacute;s beneficios que me liquiden a mi favor. As&iacute; mismo en caso de no presentarse el descuento en mi desprendible de n&oacute;mina autorizo descontar el saldo de mi cuenta de n&oacute;mina registrada en el FOE. En el caso de asociados independientes se cargara en su pr&oacute;xima cuenta de cobro.</p>
		        </td>
		      </tr>
		    </table>
    	';

		$mensaje = "Felicitaciones, su registro de inscripción ha sido satisfactorio y ha sido asignado el número <strong>" . $id . "</strong><br /><br />
		Información de acceso:<br />
		<strong>URL</strong>: http://pollamundialista.foebbva.com/<br />
		<strong>USUARIO</strong>: " . $cedula . "<br />
		<strong>CLAVE</strong>: " . $password . "<br /><br /><br />
		";
		$asunto = "Inscripción Nº " . $id . " Polla mundialista FOEBBVA";
		$content = $mensaje . $content;

		$emailModel->getMail()->addAddress("" . $correo);
		$emailModel->getMail()->addCC("soporteomega@omegawebsystems.com", "");
		$emailModel->getMail()->Subject = $asunto;
		$emailModel->getMail()->msgHTML($content);
		$emailModel->getMail()->AltBody = $content;
		if ($emailModel->sed() == true) {
			$error = false;
			//echo "Mensaje enviado";
		} else {
			//echo "Error mensaje";
		}
		header("Location: /page/jugar");
	}
}
