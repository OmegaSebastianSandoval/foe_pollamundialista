<?php

/**
 *
 */

class Page_inscribaseController extends Page_mainController
{

	public $botonactivo = 2;

	public function indexAction()
	{
		$this->_view->error = $this->_getSanitizedParam("error");
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
			$dateTime = date("Y-m-d H:i:s");
			if ($dateTime <= '2024-06-19 13:00:00') {
				header("Location:/page/inscribase/registro?cedula=" . $cedula);
				return;
			} else {
				header("Location:/page/inscribase/?cedula=" . $cedula . "&error=2");
				return;
			}
		} else {
			//iniciar sesion
			header("Location:/page/inscribase/login/?cedula=" . $cedula);
			return;
		}
	}



	public function registroAction()
	{
		$cedula = $this->_getSanitizedParam("cedula");
		$cedulasModel = new Administracion_Model_DbTable_Cedulas();
		$existe = $cedulasModel->getList(" cedula='$cedula' ", "");
		$this->_view->existe = $existe[0];

		$configModel = new Administracion_Model_DbTable_Config();
		$configuracion = $configModel->getById(1);
		$cuota = $configuracion->config_valorcuota;
		$this->_view->cuota = $cuota;
		$this->_view->dosCuotas = $cuota / 2;
	}

	public function olvidoAction()
	{
		$this->_view->error = $this->_getSanitizedParam("error");
		$this->_view->email = $this->_getSanitizedParam("email");
		$this->_view->usuario = $this->_getSanitizedParam("usuario");
	}


	public function recuperarAction()
	{
		$this->setLayout('blanco');
		$email = $this->_getSanitizedParam("correo");
		$emailEnvio = $this->_getSanitizedParam("correo");
		$userModel = new Administracion_Model_DbTable_Usuariospolla();
		$infoPaginaModel = new Administracion_Model_DbTable_Informacion();
		$infoPagina = $infoPaginaModel->getById(1);
		$existe = $userModel->getList(" user_email='$email' ", "");

		if (count($existe) > 0) {

			$usuario = $existe[0]->user_user;
			$aux = explode("@", $email);
			$clave = $aux[0] . (rand(1000, 9999));

			$user_id = $existe[0]->user_id;
			$clave_codificada = password_hash($clave, PASSWORD_DEFAULT);
			$userModel->editField($user_id, "user_password", $clave_codificada);

			$this->_view->usuario = $usuario;
			$this->_view->clave = $clave;
			$mensaje = $this->_view->getRoutPHP('/../app/modules/core/Views/templatesemail/recuperar.php');

			$data["mailTo"] = "" . $email;
			$token = $this->conectar2();
			$data["mailCc"] = $infoPagina->info_pagina_correos_contacto;
			$data["subject"] = "Recuperar contraseña FOE Pollamundialista";
			$data["certimail"] = "CNC";
			$data["richContent"] = "" . $mensaje;
			$data["bcc"] = "desarrollo8@omegawebsystems.com";
			//print_r($data);
			$result = $this->enviar($data, $token);
			$email = explode('@', $email);
			$email[0] = substr($email[0], 0, 5) . '***';
			$email = implode('@', $email);

			if ($result == "-1" or $result == "" or $result == NULL) {
				$mail = new Core_Model_Sendingemail($this->_view);

				$mail_response = $mail->sendMailRecuperar($usuario, $clave, $emailEnvio);
				if ($mail_response == 1) {
					header("Location: /page/inscribase/olvido/?error=2&email=" . $email . "&usuario=" . $usuario);
				} else {
					header("Location: /page/inscribase/olvido/?error=3&email=" . $email . "&usuario=" . $usuario);
				}
			}
			header("Location: /page/inscribase/olvido/?error=2&email=" . $email . "&usuario=" . $usuario);
		} else {

			header("Location: /page/inscribase/olvido/?error=1");
		}
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


		$data['user_password'] =  $this->_getSanitizedParam("clave");

		$data['user_celular'] = $this->_getSanitizedParam("celular");

		$data['user_puntos'] = 0;
		$data['user_marcadores'] = 0;
		$data['user_ganadores'] = 0;
		$data['user_otros'] = 0;
		$data['user_total'] = 0;
		$data['user_cuotas'] = $this->_getSanitizedParam("cuotas");
		$data['user_paso'] = 0;
		$data['user_fecha'] = date("Y-m-d H:m:s");


		$configModel = new Administracion_Model_DbTable_Config();
		$configuracion = $configModel->getById(1);
		$valor = $configuracion->config_valorcuota;

		$data['user_cuotas'] == 2 ? $valor = $valor / 2  : '';



		if ($data['user_user'] != "" and $data['user_password'] != "") {
			$id = $userModel1->insert($data);
		}



		$user = $data['user_user'];
		$userModel1 = new Administracion_Model_DbTable_Usuariospolla();
		$existe2 = $userModel1->getList(" user_user='$user' AND user_paso='0' ", "")[0];


		Session::getInstance()->set("kt_login_id", $existe2->user_id);
		Session::getInstance()->set("kt_login_level", $existe2->user_level);
		Session::getInstance()->set("kt_login_user", $existe2->user_user);
		Session::getInstance()->set("kt_login_name", $existe2->user_names . " " . $existe2->user_lastnames);
		Session::getInstance()->set("ciudad", $data['user_city']);
		Session::getInstance()->set("cuotas", $data['user_cuotas']);
		Session::getInstance()->set("valor", $valor);
		Session::getInstance()->set("password", $data['user_password']);
		Session::getInstance()->set("paso", $data['user_paso']);


		header("Location:/page/inscribase/confirmar/?id=" . $id);
	}
	public function confirmarAction()
	{
	}

	public function confirmar2Action()
	{
		$this->setLayout('blanco');
		$id = Session::getInstance()->get("kt_login_id");
		$userModel = new Administracion_Model_DbTable_Usuariospolla();
		$userModel->editField($id, "user_paso", "4");
		Session::getInstance()->set("paso", '4');


		$emailModel = new Core_Model_Mail();
		$error = true;
		$usuario = $userModel->getList(" user_id='$id' ", "");
		$nombres = $usuario[0]->user_names . " " . $usuario[0]->user_lastnames;
		$cedula = $usuario[0]->user_user;
		$ciudad = $usuario[0]->user_city;
		$cuotas = $usuario[0]->user_cuotas;
		$correo = $usuario[0]->user_email;
		$user = $usuario[0]->user_user;



		$configModel = new Administracion_Model_DbTable_Config();
		$configuracion = $configModel->getById(1);
		$valor = $configuracion->config_valorcuota;
		$interes = $configuracion->config_interes;


		if ($cuotas == 2) {
			$valor = $valor / 2;
		}
		$correo = $usuario[0]->user_email;

		$password = $_SESSION['password'];

		$content = '
		    <table width="100%" border="0" cellspacing="0" cellpadding="0" >
		      <tr>
		        <td><table width="100%" border="0" cellspacing="0" cellpadding="0">
		          <tr>
		            <td><img src="https://www.foebbva.com/skins/page/images/header/logo.png" style="width:250px"/></td>
		            <td class="textoNegro"><div align="center"><strong>BONO DE PARTICIPACI&Oacute;N POLLA MUNDIALISTA</strong></div></td>
		          </tr>
		        </table></td>
		      </tr>
		      <tr>
		        <td><div align="center"><span class="textoNegro"><strong>La participaci&oacute;n en la polla mundialista virtual del Fondo de Empleados BBVA, tiene un costo de $ ' . number_format($valor) . ', que se cargaran por la L&iacute;nea de Menor Cuant&iacute;a a un inter&eacute;s mensual de ' . $interes . ' %, los cuales ser&aacute;n descontados en 1 o 2 cuotas seg&uacute;n su solicitud.</strong></span></div></td>
		      </tr>
		      <tr>
		        <td><p align="justify" class="textoNegro">Yo <span style="text-decoration:underline;">' . $nombres . '</span> identificado (a) con cedula de ciudadan&iacute;a n&uacute;mero <span style="text-decoration:underline;">' . $cedula . '</span> de <span style="text-decoration:underline;">' . $ciudad . '</span>, autorizo al pagador de la empresa donde laboro y que determina mi vinculo de asociaci&oacute;n con el Fondo de Empleados BBVA, a  descontar por n&oacute;mina o d&eacute;bito autom&aacute;tico el valor de <span style="text-decoration:underline;">' . number_format($valor) . '</span> en ( <span style="text-decoration:underline;">' . $cuotas . '</span> ) cuotas mensuales. En caso de m&iacute; desvinculaci&oacute;n laboral, autorizo descontar de mi liquidaci&oacute;n final de prestaciones sociales y dem&aacute;s beneficios que me liquiden a mi favor. As&iacute; mismo en caso de no presentarse el descuento en mi desprendible de n&oacute;mina autorizo descontar el saldo de mi cuenta de n&oacute;mina registrada en el FOE. En el caso de asociados independientes se cargara en su pr&oacute;xima cuenta de cobro.</p>
		        </td>
		      </tr>
			  
				<tr>		

				<td>
					<br>

					<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="autorizaciondescuento" required checked disabled>
					<label class="form-check-label" for="autorizaciondescuento">
						Autorización de descuento de nómina
					</label>

					</div>
					<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="autorizacionhabeas" required checked disabled>

					<label class="form-check-label" for="autorizacionhabeas">
						<a href="https://www.foebbva.com/page/proteccion" target="_blank">
						Autorización de habeas data
						</a>
					</label>

					</div>
					<div class="form-check">
					<input class="form-check-input" type="checkbox" value="" id="autorizacionreglamento" required checked disabled>
					<label class="form-check-label" for="autorizacionreglamento">
						<a href="/page/terminos" target="_blank">
						Autorización del reglamento de la polla COPA AMÉRICA
						</a>

					</label>
					</div>
				</td>

				</tr>
		    </table>
    	';

		/* $mensaje = "Felicitaciones, su registro de inscripción ha sido satisfactorio y ha sido asignado el número <strong>".$id."</strong><br /><br />
		Información de acceso:<br />
		<strong>URL</strong>: http://pollamundialista.foebbva.com/<br />
		<strong>USUARIO</strong>: ".$cedula."<br />
		<strong>CLAVE</strong>: ".$password."<br /><br /><br />
		"; */
		//$content = $mensaje.$content;

		$asunto = "Inscripción Nº " . $id . " Polla mundialista FOEBBVA";

		//Enviar Correo
		if ($id) {
			$infoPaginaModel = new Administracion_Model_DbTable_Informacion();
			$infoPagina = $infoPaginaModel->getById(1);




			$data2["mailTo"] = $correo;
			$token = $this->conectar2();
			$data2["mailCc"] = $infoPagina->info_pagina_correos_contacto;
			$data2["subject"] = $asunto;
			$data2["certimail"] = "CNC";
			$data2["richContent"] = $content;
			$data2["bcc"] = "soporteomega@omegawebsystems.com";
			$result = $this->enviar($data2, $token);



			// Establecer el tiempo de duración de la sesión a 30 minutos (1800 segundos)
			$session_timeout = 1800;

			// Si la sesión es nueva, guardar el tiempo de inicio
			if (!isset($_SESSION['session_start_time'])) {
				$_SESSION['session_start_time'] = time();
			}
			if ($result == "-1" or $result == "" or $result == NULL) {
				$emailModel->getMail()->addAddress("" . $correo);
				$emailModel->getMail()->addCC("soporteomega@omegawebsystems.com", "");
				$emailModel->getMail()->Subject = $asunto;
				$emailModel->getMail()->msgHTML($content);
				$emailModel->getMail()->AltBody = $content;
				if ($emailModel->sed() == true) {
					$error = false;

					header("Location: /page/jugar");
				} else {
					header("Location: /page/jugar");
				}
			}
		}


		$registrosImcompletos = $userModel->getList(" user_user='$user' AND user_id!='$id' AND user_paso!=4 ", "");
		if ($registrosImcompletos) {
			foreach ($registrosImcompletos as $registro) {
				$userModel->deleteRegister($registro->user_id);
			}
		}
		// Establecer el tiempo de duración de la sesión a 30 minutos (1800 segundos)
		$session_timeout = 1800;

		// Si la sesión es nueva, guardar el tiempo de inicio
		if (!isset($_SESSION['session_start_time'])) {
			$_SESSION['session_start_time'] = time();
		}

		header("Location: /page/jugar");
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
			Session::getInstance()->set("paso", $existe2->user_paso);
			// Establecer el tiempo de duración de la sesión a 30 minutos (1800 segundos)
			$session_timeout = 1800;

			// Si la sesión es nueva, guardar el tiempo de inicio
			if (!isset($_SESSION['session_start_time'])) {
				$_SESSION['session_start_time'] = time();
			}

			header("Location:/page/jugar");
		} else {

			header("Location:/page/inscribase/login/?cedula=" . $user . "&error=1");
		}
	}
}
