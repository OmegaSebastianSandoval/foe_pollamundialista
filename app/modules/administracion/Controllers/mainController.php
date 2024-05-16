<?php

/**
 *
 */

class Administracion_mainController extends Controllers_Abstract
{
	protected $namepages;



	public function init()
	{
		$this->_view->botonpanel = $this->botonpanel;
		$this->setLayout('administracion_panel');
		$botoneralateral = $this->_view->getRoutPHP('modules/administracion/Views/partials/botoneralateral.php');
		$this->getLayout()->setData("panel_botones", $botoneralateral);
		$botonerasuperior = $this->_view->getRoutPHP('modules/administracion/Views/partials/botonerasuperior.php');
		$this->getLayout()->setData("panel_header", $botonerasuperior);
		if ((Session::getInstance()->get("kt_login_id") < 0 || Session::getInstance()->get("kt_login_id", "") == '')) {
			header('Location: /administracion/');
		}
		$inactivo = 9000000;
		if (Session::getInstance()->get('tiempo') != '') {
			$vida_session = time() - Session::getInstance()->get('tiempo');
			if ($vida_session > $inactivo) {
				session_destroy();
				header('Location: /administracion/?inactividad==1');
			}
		}
		Session::getInstance()->set("tiempo", time());
	}

	public function changepageAction()
	{
		Session::getInstance()->set($this->namepages, $this->_getSanitizedParam("pages"));
	}

	public function orderAction()
	{
		$this->setLayout('blanco');
		$csrf = $this->_getSanitizedParam("csrf");
		if (Session::getInstance()->get('csrf')[$this->_csrf_section] == $csrf) {
			$id1 =  $this->_getSanitizedParam("id1");
			$id2 =  $this->_getSanitizedParam("id2");
			if (isset($id1) && $id1 > 0 && isset($id2) && $id2 > 0) {
				$content1 = $this->mainModel->getById($id1);
				$content2 = $this->mainModel->getById($id2);
				if (isset($content1) && isset($content2)) {
					$order1 = $content1->orden;
					$order2 = $content2->orden;
					$this->mainModel->changeOrder($order2, $id1);
					$this->mainModel->changeOrder($order1, $id2);
				}
			}
		}
	}

	public function deleteimageAction()
	{
		$this->setLayout('blanco');
		header('Content-Type:application/json');
		$campo = $this->_getSanitizedParam("campo");
		$id = $this->_getSanitizedParam("id");
		$csrf = $this->_getSanitizedParam("csrf");
		$elimino = 0;
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf) {
			$id = $this->_getSanitizedParam("id");
			$content = $this->mainModel->getById($id);
			if ($content->$campo != '') {
				$modelUploadImage = new Core_Model_Upload_Image();
				$this->mainModel->editField($id, $campo, '');
				$modelUploadImage->delete($content->$campo);
				$elimino = 1;
			}
		}
		echo json_encode(array('elimino' => $elimino));
	}
	public function deletearchivoAction()
	{
		$this->setLayout('blanco');
		header('Content-Type:application/json');
		$campo = $this->_getSanitizedParam("campo");
		$id = $this->_getSanitizedParam("id");
		$csrf = $this->_getSanitizedParam("csrf");
		$elimino = 0;
		if (Session::getInstance()->get('csrf')[$this->_getSanitizedParam("csrf_section")] == $csrf) {
			$id = $this->_getSanitizedParam("id");
			$content = $this->mainModel->getById($id);
			if ($content->$campo != '') {
				$modelUploadDocument = new Core_Model_Upload_Document();
				$this->mainModel->editField($id, $campo, '');
				$modelUploadDocument->delete($content->$campo);
				$elimino = 1;
			}
		}
		echo json_encode(array('elimino' => $elimino));
	}


	public function actualizarPuntos()
	{
		$this->setLayout("blanco");
		$usuariosModel = new Administracion_Model_DbTable_Usuariospolla();
		$resultadosModel = new Administracion_Model_DbTable_Resultados();
		$configModel = new Administracion_Model_DbTable_Config();

		$clasificacionModel = new Administracion_Model_DbTable_Clasificados();
		$config = $configModel->getById(1);

		$resultados = $resultadosModel->getAllResults();

		// Organiza los resultados por usuario
		$usuariosResultados = [];
		foreach ($resultados as $resultado) {
			$usuariosResultados[$resultado->user_id][] = $resultado;
		}



		$clasificacion = $clasificacionModel->getById(1);
		$clasificado_octavos_a1 = $clasificacion->clasificado_octavos_a1;
		$clasificado_octavos_a2 = $clasificacion->clasificado_octavos_a2;
		$clasificado_octavos_b1 = $clasificacion->clasificado_octavos_b1;
		$clasificado_octavos_b2 = $clasificacion->clasificado_octavos_b2;
		$clasificado_octavos_c1 = $clasificacion->clasificado_octavos_c1;
		$clasificado_octavos_c2 = $clasificacion->clasificado_octavos_c2;
		$clasificado_octavos_d1 = $clasificacion->clasificado_octavos_d1;
		$clasificado_octavos_d2 = $clasificacion->clasificado_octavos_d2;
		$clasificado_octavos_e1 = $clasificacion->clasificado_octavos_e1;
		$clasificado_octavos_e2 = $clasificacion->clasificado_octavos_e2;
		$clasificado_octavos_f1 = $clasificacion->clasificado_octavos_f1;
		$clasificado_octavos_f2 = $clasificacion->clasificado_octavos_f2;
		$clasificado_octavos_g1 = $clasificacion->clasificado_octavos_g1;
		$clasificado_octavos_g2 = $clasificacion->clasificado_octavos_g2;
		$clasificado_octavos_h1 = $clasificacion->clasificado_octavos_h1;
		$clasificado_octavos_h2 = $clasificacion->clasificado_octavos_h2;
		$clasificado_cuartos_e1 = $clasificacion->clasificado_cuartos_e1;
		$clasificado_cuartos_e2 = $clasificacion->clasificado_cuartos_e2;
		$clasificado_cuartos_e3 = $clasificacion->clasificado_cuartos_e3;
		$clasificado_cuartos_e4 = $clasificacion->clasificado_cuartos_e4;
		$clasificado_cuartos_e5 = $clasificacion->clasificado_cuartos_e5;
		$clasificado_cuartos_e6 = $clasificacion->clasificado_cuartos_e6;
		$clasificado_cuartos_e7 = $clasificacion->clasificado_cuartos_e7;
		$clasificado_cuartos_e8 = $clasificacion->clasificado_cuartos_e8;

		$clasificado_semis_e1 = $clasificacion->clasificado_semis_e1;
		$clasificado_semis_e2 = $clasificacion->clasificado_semis_e2;
		$clasificado_semis_e3 = $clasificacion->clasificado_semis_e3;
		$clasificado_semis_e4 = $clasificacion->clasificado_semis_e4;

		$clasificado_cuarto = $clasificacion->clasificado_cuarto;
		$clasificado_tercero = $clasificacion->clasificado_tercero;
		$clasificado_subcampeon = $clasificacion->clasificado_subcampeon;
		$clasificado_campeon = $clasificacion->clasificado_campeon;
		$clasificado_jugador = $clasificacion->clasificado_jugador;
		$clasificado_valla = $clasificacion->clasificado_valla;




		//PUNTOS FASE DE GRUPOS
		$acertarMarcador1Fase = (int)$config->config_gruposmarcador;
		$acertarEquipo1Fase = (int)$config->config_gruposequipo;
		$empate1Fase = (int)$config->config_gruposempate;



		//PUNTOS OCTAVOS
		$acertarMarcadorOctavos = (int)$config->config_octavosmarcador;
		$acertarEquipoOctavos = (int)$config->config_octavosequipo;


		//PUNTOS CUARTOS
		$acertarMarcadorCuartos = (int)$config->config_cuartosmarcador;
		$acertarEquipoCuartos = (int)$config->config_cuartosganador;

		//PUNTOS SEMIS
		$acertarMarcadorSemis = (int)$config->config_semismarcador;
		$acertarEquipoSemis = (int)$config->config_semisequipo;

		//PUNTOS FINALES
		$acertarMarcadorFinales = (int)$config->config_finalesmarcadores;


		//PUNTOS OTROS
		$primerPuestoOctavos = (int)$config->config_1puestooctavos;
		$segundoPuestoOctavos = (int)$config->config_2puestooctavos;


		$clasificadoCuartos = (int)$config->config_cuartosclasificado;
		$clasificadoSemis = (int)$config->config_semisclasificado;








		$acertarCampeon = (int)$config->config_campeon;
		$acertarSubcampeon = (int)$config->config_subcampeon;
		$acertarTercero = (int)$config->config_tercero;
		$acertarCuarto = (int)$config->config_cuarto;
		$acertarGoleador = (int)$config->config_goleador;
		$acertarValla = (int)$config->config_valla;




		foreach ($usuariosResultados as $key => $resultadoPorUsuario) {
			$puntos = 0;
			$marcadores = 0;
			$ganadores = 0;
			$otros = 0;
			$aciertos = 0;
			$usuarioId = $key;
			// echo $usuarioId;




			foreach ($resultadoPorUsuario as $posicion => $resultadoInd) {



				$fase = $resultadoInd->fase;

				$marcador1Partido = $resultadoInd->marcador1Partido;
				$marcador2Partido = $resultadoInd->marcador2Partido;
				$ganadorPartido = $resultadoInd->ganadorPartido;

				$marcador1Resultado = $resultadoInd->valor1;
				$marcador2Resultado = $resultadoInd->valor2;
				$ganadorResultado = $resultadoInd->ganador;

				/* echo "partido : " . $resultadoInd->partido .  "equipo1: " . $marcador1Partido . " usuario" . $usuarioId;

				echo "<br>";

				echo "partido : " . $resultadoInd->partido .  "equipo1usuario: " . $marcador1Resultado . " usuario" . $usuarioId;

				echo "<br>"; */


				#region FASE DE GRUPOS

				//FASE DE GRUPOS
				if ($fase == 1) {


					// Validación inicial: asegurar que no hay valores vacíos
					if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {
						// Comprobando acierto de marcador exacto
						if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {
							$marcadores++;
							$puntos += $acertarMarcador1Fase;  // Puntos por acertar al marcador exacto

							// Comprobando ganador o empate además del marcador
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {
								$ganadores++;
								$puntos += $acertarEquipo1Fase;  // Puntos adicionales por acertar al ganador
							} else if ($marcador1Partido == $marcador2Partido && $ganadorResultado == -1) {
								$ganadores++;
								$puntos += $empate1Fase;  // Puntos adicionales por acertar un empate
							}
						} else {

							// Comprobando ganador o empate si no acertó el marcador exacto
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

								$ganadores++;
								$puntos += $acertarEquipo1Fase;  // Puntos por acertar solo al ganador
							} else if ($ganadorPartido != $ganadorResultado && $ganadorPartido == -1) {

								$ganadores++;
								$puntos += $empate1Fase;  // Puntos por acertar un empate
							}
						}
					}
				}


				#region FASE OCTAVOS DE FINAL
				//OCTAVOS DE FINAL
				if ($fase == 2) {
					// Validación inicial: asegurar que no hay valores vacíos
					if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {
						// Comprobando acierto de marcador exacto
						if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {
							$marcadores++;
							$puntos += $acertarMarcadorOctavos;  // Puntos por acertar al marcador exacto

							// Comprobando acierto del ganador
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {
								$ganadores++;
								$puntos += $acertarEquipoOctavos;  // Puntos adicionales por acertar al ganador
							}
						} else {
							// Comprobando ganador si no acertó el marcador exacto
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {
								$ganadores++;
								$puntos += $acertarEquipoOctavos;  // Puntos por acertar solo al ganador
							}
						}
					}
				}


				#region FASE CUARTOS DE FINAL
				//CUARTOS DE FINAL
				if ($fase == 3) {

					// Validación inicial: asegurar que no hay valores vacíos
					if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

						// Comprobando acierto de marcador exacto
						if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

							$marcadores++;
							$puntos += $acertarMarcadorCuartos;  // Puntos por acertar al marcador exacto

							// Comprobando acierto del ganador
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

								$ganadores++;
								$puntos += $acertarEquipoCuartos;  // Puntos adicionales por acertar al ganador
							}
						} else {

							// Comprobando ganador si no acertó el marcador exacto
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {


								$ganadores++;
								$puntos += $acertarEquipoCuartos;  // Puntos por acertar solo al ganador
							}
						}
					}
				}

				#region FASE SEMIFINAL
				//SEMIFINAL
				if ($fase == 4) {

					// Validación inicial: asegurar que no hay valores vacíos
					if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

						// Comprobando acierto de marcador exacto
						if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

							$marcadores++;
							$puntos += $acertarMarcadorSemis;  // Puntos por acertar al marcador exacto

							// Comprobando acierto del ganador
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

								$ganadores++;
								$puntos += $acertarEquipoSemis;  // Puntos adicionales por acertar al ganador
							}
						} else {

							// Comprobando ganador si no acertó el marcador exacto
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {


								$ganadores++;
								$puntos += $acertarEquipoSemis;  // Puntos por acertar solo al ganador
							}
						}
					}
				}


				#region FASE FINALES
				//FINALES
				if ($fase == 5) {

					// Validación inicial: asegurar que no hay valores vacíos
					if (!empty($marcador1Resultado) && !empty($marcador2Resultado) && $ganadorResultado !== null) {

						// Comprobando acierto de marcador exacto
						if ($marcador1Partido == $marcador1Resultado && $marcador2Partido == $marcador2Resultado) {

							$marcadores++;
							$puntos += $acertarMarcadorFinales;  // Puntos por acertar al marcador exacto

							// Comprobando acierto del ganador
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {

								$ganadores++;
								//$puntos += $acertarEquipoFinales;  // Puntos adicionales por acertar al ganador
							}
						} else {

							// Comprobando ganador si no acertó el marcador exacto
							if ($ganadorPartido == $ganadorResultado && $ganadorPartido != -1) {


								$ganadores++;
								//$puntos += $acertarEquipoFinales;  // Puntos por acertar solo al ganador
							}
						}
					}
				}
			}





			#region OCTAVOS
			//CLASIFICADOS A OCTAVOS
			//$octavos = $octavosModel->getList("usuario = $usuarioId", "")[0];
			$octavos = $resultadoPorUsuario[0];
			$a1 = $octavos->octavos_a1;
			if ((!empty($a1) && $a1 != 0) && $a1 == $clasificado_octavos_a1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$a2 = $octavos->octavos_a2;
			if ((!empty($a2) && $a2 != 0) && $a2 == $clasificado_octavos_a2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$b1 = $octavos->octavos_b1;
			if ((!empty($b1) && $b1 != 0) && $b1 == $clasificado_octavos_b1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$b2 = $octavos->octavos_b2;
			if ((!empty($b2) && $b2 != 0) && $b2 == $clasificado_octavos_b2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$c1 = $octavos->octavos_c1;
			if ((!empty($c1) && $c1 != 0) && $c1 == $clasificado_octavos_c1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$c2 = $octavos->octavos_c2;
			if ((!empty($c2) && $c2 != 0) && $c2 == $clasificado_octavos_c2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$d1 = $octavos->octavos_d1;
			if ((!empty($d1) && $d1 != 0) && $d1 == $clasificado_octavos_d1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$d2 = $octavos->octavos_d2;
			if ((!empty($d2) && $d2 != 0) && $d2 == $clasificado_octavos_d2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$e1 = $octavos->octavos_e1;
			if ((!empty($e1) && $e1 != 0) && $e1 == $clasificado_octavos_e1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$e2 = $octavos->octavos_e2;
			if ((!empty($e2) && $e2 != 0) && $e2 == $clasificado_octavos_e2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$f1 = $octavos->octavos_f1;
			if ((!empty($f1) && $f1 != 0) && $f1 == $clasificado_octavos_f1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$f2 = $octavos->octavos_f2;
			if ((!empty($f2) && $f2 != 0) && $f2 == $clasificado_octavos_f2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$g1 = $octavos->octavos_g1;
			if ((!empty($g1) && $g1 != 0) && $g1 == $clasificado_octavos_g1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$g2 = $octavos->octavos_g2;
			if ((!empty($g2) && $g2 != 0) && $g2 == $clasificado_octavos_g2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}

			$h1 = $octavos->octavos_h1;
			if ((!empty($h1) && $h1 != 0) && $h1 == $clasificado_octavos_h1) {
				$puntos += $primerPuestoOctavos;
				$otros++;
			}

			$h2 = $octavos->octavos_h2;
			if ((!empty($h2) && $h2 != 0) && $h2 == $clasificado_octavos_h2) {
				$puntos += $segundoPuestoOctavos;
				$otros++;
			}


			#region CUARTOS

			//CLASIFICADOS A CUARTOS
			// $cuartos = $cuartosModel->getList("usuario = $usuarioId", "")[0];
			$cuartos = $resultadoPorUsuario[0];

			$clasificadosCuartos = [
				$clasificado_cuartos_e1, $clasificado_cuartos_e2, $clasificado_cuartos_e3, $clasificado_cuartos_e4,
				$clasificado_cuartos_e5, $clasificado_cuartos_e6, $clasificado_cuartos_e7, $clasificado_cuartos_e8
			];
			echo "<pre>";
print_r($clasificadosCuartos);
echo "</pre>";


			// Iterar sobre los equipos de cuartos de final
			for ($i = 1; $i <= 8; $i++) {
				echo "entro cuartos" .$i;
				echo "<br>";
				$equipoCuartos = $cuartos->{'cuartos_e' . $i};
				echo $equipoCuartos;
				echo "<br>";

				if ($equipoCuartos != '') {
					if (in_array($equipoCuartos, $clasificadosCuartos)) {
						$puntos += $clasificadoCuartos;
						$otros++;
						echo $puntos;
						echo "<br>";
					}
				}
			}



			#region SEMIS

			//CLASIFICADOS A SEMIS
			//$semis = $semisModel->getList("usuario = $usuarioId", "")[0];
			$semis = $resultadoPorUsuario[0];
			echo "<pre>";
			print_r($semis);
			echo "</pre>";

			$clasificados = [$clasificado_semis_e1, $clasificado_semis_e2, $clasificado_semis_e3, $clasificado_semis_e4];
			// Iterar sobre los equipos de semifinales
			for ($i = 1; $i <= 4; $i++) {
				$equipoSemis = $semis->{'semis_e' . $i};
				if ($equipoSemis != '') {
					if (in_array($equipoSemis, $clasificados)) {
						$puntos += $clasificadoSemis;
						$otros++;
					}
				}
			}




			#region FINALES

			// FINALES
			//$final = $finalModel->getList("usuario = $usuarioId", "")[0];
			$final = $resultadoPorUsuario[0];

			$campeon = $final->final_campeon;
			if (!empty($campeon) && $campeon == $clasificado_campeon) {
				$puntos += $acertarCampeon;
				$otros++;
			}
			$subcampeon = $final->final_subcampeon;
			if (!empty($subcampeon) && $subcampeon == $clasificado_subcampeon) {
				$puntos += $acertarSubcampeon;
				$otros++;
			}
			$tercero = $final->final_tercero;
			if (!empty($tercero) && $tercero == $clasificado_tercero) {
				$puntos += $acertarTercero;
				$otros++;
			}
			$cuarto = $final->final_cuarto;
			if (!empty($cuarto) && $cuarto == $clasificado_cuarto) {
				$puntos += $acertarCuarto;
				$otros++;
			}

			#region OTROS

			// OTROS
			// $getOtros = $otrosModel->getList("usuario = $usuarioId", "")[0];
			$getOtros = $resultadoPorUsuario[0];

			$goleador = $getOtros->otros_goleador;
			if (!empty($goleador) && $goleador == $clasificado_jugador) {
				$puntos += $acertarGoleador;
				$otros++;
			}
			$valla = $getOtros->otros_valla;
			if (!empty($valla) && $valla == $clasificado_valla) {
				$puntos += $acertarValla;
				$otros++;
			}



			$aciertos = $marcadores + $ganadores + $otros;
			$usuariosModel->editField($usuarioId, "user_puntos", $puntos);
			$usuariosModel->editField($usuarioId, "user_marcadores", $marcadores);
			$usuariosModel->editField($usuarioId, "user_ganadores", $ganadores);
			$usuariosModel->editField($usuarioId, "user_otros", $otros);
			$usuariosModel->editField($usuarioId, "user_total", $aciertos);
			if ($_GET['debug'] == 1 || $_GET['debug'] == 2) {
				echo "usuario : " . $usuarioId .  "puntos: " . $puntos;
				echo "<br>";
			}
		}
	}
}
