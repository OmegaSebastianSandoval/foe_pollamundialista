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


			<form method="post" action="/page/jugar/guardar2">
				<div class="row fondo_azul shadow pb-3">


					<div class="contenedor-tabla  mb-5">
						<div class="table-responsive ">
							<table class="tabla3 tabla_partidos " width="100%">
								<tr class=" <?php if ($j == 1) {
												echo 'tabla3_fila ';
											} ?>">
									<th class="text-md-center">Hora</th>
									<th class="text-md-center"></th>
									<th class="text-md-center vs">vs</th>
									<th class="text-md-center"></th>
									<th class="text-md-center">Grupo</th>
								</tr>
								<?php foreach($this->resultados as $partidoResumen){?>
								<tr>
									<td data-label="Hora" class="text-md-center" width="20%">
										<?php echo convertir_hora($partidoResumen->info->hora); ?></td>
									<td data-label="Equipo 1" class="text-md-center" width="20%">
										<img src="/images/<?php echo $partidoResumen->info->equipo1->bandera; ?>"><br>
										<?php echo $partidoResumen->info->equipo1->nombre ?>
									</td>
									<td data-label="vs" class="
												<?php
												$fechas[$partido->fecha]++;
												?>
												<?php if ($diferencia >= $this->horasminimo && $fechas[$partido->fecha] >= 1) { ?>
													text-md-center d-flex w-100 justify-content-between align-items-center flex-md-row flex-column 
												
												<?php } ?>
													
												" width="20%" style="min-height: 68px;">

										<?php if ($diferencia >= $this->horasminimo && $fechas[$partido->fecha] >= 1) { ?>
											<input name="valor1_<?php echo $partido->id; ?>" min="0" max="15" type="number" id="valor1_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor1; ?>" class="marcador input_field w-100 w-md-50 w-lg-25" />
											-
											<input name="valor2_<?php echo $partido->id; ?>" min="0" max="15" type="number" id="valor2_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor2; ?>" class="marcador input_field  w-100 w-md-50 w-lg-25" />
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
								<?php }?>
							</table>
						</div>
					</div>
			</form>
		</div>
	</div>


</section>