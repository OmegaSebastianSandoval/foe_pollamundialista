<style>
	section.section-jugar {
		background-color: var(--grisC);
	}

	table * {
		font-size: 13px !important;
	}

	tbody * {
		color: var(--gris);
	}

	.contenedor-tabla {
		max-width: 100%;
		margin-top: 20px;
	}

	.table-responsive {
		border-radius: 10px 10px 0 0;
	}

	.contenedor-tabla table th {
		border-radius: 0;
	}

	.contenedor-tabla table th:first-child {
		border-top-left-radius: 10px;
	}

	.contenedor-tabla table th:last-child {
		border-top-right-radius: 10px;

	}



	.contenedor-tabla table td {
		padding: 9px;
	}

	.th-transparent {
		background: transparent !important;
		color: var(--blueC) !important;
		font-weight: 600 !important;
		text-align: start !important;
		font-size: 17px !important;
	}

	.th-transparent h3 {
		font-size: 21px !important;
		margin: 0;
		font-weight: 700;


	}

	.th-transparent b {
		font-weight: 600 !important;

	}




	.contenedor-tabla table {
		table-layout: auto;
		/* margin-bottom: 17px; */
	}

	.tabla3 tr:nth-child(even) {
		background: var(--white);
	}

	.input_field {

		text-align: center;
	}
</style>
<?php
//$grupos = array("", "A", "B", "C", "D", "E", "F", "G", "H");
//print_r($this->fechas);
?>
<section class="section-jugar w-100">

	<div class="container">

		<div class="row fondo_jugar">
			<!-- Contenido adicional de la página -->
			<?php echo $this->contenido; ?>

			<?php echo $this->getRoutPHP('modules/page/Views/partials/botonera_jugar.php'); ?>


			<div class="co">

				<div class="row col-md-12 filtros">
					<form method="post" class="form-filter-partidos">
						<div class="contenedor-filtros d-flex flex-row align-items-center gap-4 justify-content-center">

							<select id="fecha" name="fecha" class="input_field">
								<option value="" <?php if ($this->fecha == "") {
														echo 'selected';
													} ?>>FECHA</option>
								<?php foreach ($this->fechas as $key => $fecha) : ?>
									<option value="<?php echo $fecha->fecha; ?>" <?php if ($_POST['fecha'] == $fecha->fecha) {
																						echo 'selected';
																					} ?>><?php echo $fecha->fecha; ?>
									</option>
								<?php endforeach ?>
							</select>


							<select id="equipo" name="equipo" class="input_field">
								<option value="" <?php if ($this->equipo == "") {
														echo 'selected';
													} ?>>EQUIPO</option>
								<?php foreach ($this->equipos as $key => $equipo) : ?>
									<option value="<?php echo $equipo->id; ?>" <?php if ($_POST['equipo'] == $equipo->id) {
																					echo 'selected';
																				} ?>><?php echo ($equipo->nombre); ?>
									</option>
								<?php endforeach ?>
							</select>


							<select id="grupo" name="grupo" class="input_field">
								<option value="" <?php if ($this->grupo == "") {
														echo 'selected';
													} ?>>GRUPO</option>


								<?php foreach ($this->grupos as $key => $grupo) { ?>
									<option value="<?php echo $key; ?>" <?php if ($this->grupo == $key) {
																			echo 'selected';
																		} ?>><?php echo $grupo; ?>
									</option>
								<?php } ?>

							</select>

							<div class=" d-flex align-items-center gap-4 justify-content-center">
								<input type="submit" name="Filtrar" value="Filtrar" class="btn-verde">

								<a href="/page/partidos/?genero=<?php echo $_GET['genero']; ?>" class="btn-azul">Limpiar
									filtro</a>
							</div>

						</div>

					</form>
				</div>
			</div>

		</div>

		<form method="post" action="/page/jugar/resumen">
			<?php foreach ($this->fases as $fase) : ?>
				<?php
				$i = $fase->id;
				$anterior = "";
				//$diferencia_dia = -99;
				if ($this->existen[$i] > 0) {
				?>
					<div class="row fondo_azul shadow pb-3">


						<div class="contenedor-tabla  mb-5">
							<div class="table-responsive ">
								<table class="tabla3 tabla_partidos " width="100%">
									<tr class="th-transparen">
										<th colspan="5" class="th-transparent">
											<h3><?php echo $fase->titulo; ?></h3>
										</th>
									</tr>
									<?php $j = 0; ?>
									<?php foreach ($this->partidos as $partido) : ?>
										<?php
										/* echo "<pre>";
										print_r($partido);

										echo "</pre>"; */


										?>
										<?php if ($partido->fase == $i) { ?>
											<?php if ($partido->fecha != $anterior or $anterior == "") { ?>
												<?php $j++; ?>
												<?php if ($j > 1) : ?>
													<tr>
														<td colspan="5" align="center">
															<button class="btn-verde mx-auto" type="submit" <?php if($this->config->config_estado != 1){echo "disabled";}?>>Guardar</button>
														</td>
													</tr>
													<?php
													$diferencia_dia = $partido->diferencia;
													?>
												<?php endif ?>
												<tr class="th-transparent <?php if ($j == 1) {
																				echo 'tabla3_fila';
																			} ?>">
													<th colspan="5" class="th-transparent"><?php if ($_GET['debug1'] == "1") {
																								echo $diferencia_dia;
																							} ?><b class="<?php if ($j == 1) {
																												echo 'partido_fecha ';
																											} else {
																												echo 'partido_fecha2';
																											} ?>"><?php echo fecha_texto($partido->fecha); ?></b></th>
												</tr>
												<tr class=" tabla3_sm_none <?php if ($j == 1) {
																				echo 'tabla3_fila ';
																			} ?>">
													<th class="text-md-center">Hora</th>
													<th class="text-md-center"></th>
													<th class="text-md-center vs">vs</th>
													<th class="text-md-center"></th>
													<th class="text-md-center">Grupo</th>
												</tr>
											<?php } ?>
											<?php $diferencia = $partido->diferencia; ?>
											<tr>
												<td data-label="Hora" class="text-md-center" width="20%">
													<?php echo convertir_hora($partido->hora); ?></td>
												<td data-label="Equipo 1" class="text-md-center" width="20%">
													<img src="/images/<?php echo $partido->bandera_equipo1; ?>"><br>
													<?php echo $this->equipo_array[$partido->equipo1]; ?>
												</td>
												<td data-label="vs" class="
												<?php
												$fechas[$partido->fecha]++;
												?>
												<?php if ($diferencia >= $this->horasminimo && $fechas[$partido->fecha] >= 1) { ?>
													text-md-center d-flex w-100 justify-content-between align-items-center flex-md-row flex-column 
												
												<?php } ?>
													
												" width="20%" style="min-height: 68px;">
<?php echo $diferencia?>
<?php echo $fechas[$partido->fecha] ?>

													<?php if ($diferencia >= $this->horasminimo && $fechas[$partido->fecha] >= 1) { ?>
														<input name="valor1_<?php echo $partido->id; ?>" min="0" max="15" type="number" id="valor1_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor1; ?>" class="marcador input_field w-100 w-md-50 w-lg-25" <?php if($this->config->config_estado != 1){echo "disabled";}?> />
														-
														<input name="valor2_<?php echo $partido->id; ?>" min="0" max="15" type="number" id="valor2_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor2; ?>" class="marcador input_field  w-100 w-md-50 w-lg-25" <?php if($this->config->config_estado != 1){echo "disabled";}?> />
														<input type="hidden" name="partidos_enviados[]" value="<?php echo $partido->id; ?>">

													<?php } else { ?>
														<span class="mx-auto">
															<?php echo $partido->resultado_valor1; ?>
															-
															<?php echo $partido->resultado_valor2; ?>
														</span>
													<?php } ?>

												</td>
												<td data-label="Equipo 2" class="text-md-center" width="20%">
													<img src="/images/<?php echo $partido->bandera_equipo2; ?>"><br>
													<?php echo $this->equipo_array[$partido->equipo2]; ?>
												</td>
												<td data-label="Grupo" class="text-md-center" width="20%"><?php if ($i == 1) {
																												echo $this->grupos[$partido->grupo1];
																											} ?></td>
											</tr>
											<?php $anterior = $partido->fecha; ?>

										<?php } ?>

									<?php endforeach ?>
								</table>

							</div>
						</div>

						<div class="text-md-center col-md-12"><button class="btn-verde mx-auto" type="submit" <?php if($this->config->config_estado != 1){echo "disabled";}?> >Guardar</button>
						</div>
					</div>
				<?php } ?>
				<br>
			<?php endforeach ?>

		</form>
	</div>
</section>