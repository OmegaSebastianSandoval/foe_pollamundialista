<?php
$grupos = array("","A","B","C","D","E","F","G","H");
//print_r($this->fechas);
?>

<div class="container-fluid">

	<div class="row fondo_jugar">
		<br><br>
		<div class="text-center">
			<div class="titulo_jugar">Jugar Polla</div>
		</div>
		<br>
		<div class="text-center col-md-12">
			<div class="col-md-3"></div>
			<div class="col-md-6">
				<?php echo $this->getRoutPHP('modules/page/Views/partials/botonera_jugar.php'); ?>
			</div>
		</div>
		<div class="col-md-2"></div>
		<div class="col-xs-12 col-md-8">

			<div class="row col-md-12 filtros">
				<form method="post">
					<div class="col-md-12">
						<select id="fecha" name="fecha" class="menu_transparente">
							<option value="" <?php if($_POST['fecha']==""){ echo 'selected'; }?>>FECHA</option>
							<?php foreach ($this->fechas as $fecha): ?>
								<option value="<?php echo $fecha->fecha; ?>" <?php if($_POST['fecha']==$fecha->fecha){ echo 'selected'; }?> ><?php echo $fecha->fecha; ?></option>
							<?php endforeach ?>
							</div>
						</select>
						<select id="equipo" name="equipo" class="menu_transparente">
							<option value="" <?php if($_POST['equipo']==""){ echo 'selected'; }?>>EQUIPO</option>
							<?php foreach ($this->equipos as $equipo): ?>
								<option value="<?php echo $equipo->id; ?>" <?php if($_POST['equipo']==$equipo->id){ echo 'selected'; }?> ><?php echo $equipo->nombre; ?></option>
							<?php endforeach ?>
							</div>
						</select>
						<select id="grupo" name="grupo" class="menu_transparente" style="max-width: 100px;">
							<option value="" <?php if($_POST['grupo']==""){ echo 'selected'; }?>>GRUPO</option>
							<?php foreach ($this->grupos as $grupo): ?>
								<option value="<?php echo $grupo->id; ?>" <?php if($_POST['grupo']==$grupo->id){ echo 'selected'; }?>><?php echo $grupo->nombre; ?></option>
							<?php endforeach ?>
							</div>
						</select>
						<input type="submit" name="Filtrar" value="Filtrar" class="boton_blanco">
						<a href="/page/jugar/" class="boton_blanco3">Limpiar filtro</a>
					</div>
				</form>
			</div>
		</div>
		<div class="col-md-12"><br><br></div>
	</div>

	<form method="post" action="/page/jugar/guardar">
		<?php foreach ($this->fases as $fase): ?>
			<?php
			$i = $fase->id;
			$anterior = "";
			//$diferencia_dia = -99;
			if ($this->existen[$i]>0) {
			?>
				<div class="row fondo_azul">
					<div class="alto col-md-12"><br><br></div>
					<div class="col-lg-1"></div>
					<div class="col-sm-12 col-lg-10">
						<table class="tabla3 tabla_partidos" width="100%">
							<tr class="tabla3_fila">
								<th colspan="5"><h3><?php echo $fase->titulo; ?></h3></th>
							</tr>
							<?php $j=0; ?>
							<?php foreach ($this->partidos as $partido): ?>
								<?php if($partido->fase==$i){  ?>
									<?php if($partido->fecha!=$anterior or $anterior==""){ ?>
										<?php $j++; ?>
										<?php if ($j>1): ?>
											<tr>
												<td colspan="5" align="center">
													<button class="btn btn-success" type="submit">Guardar</button>
												</td>
											</tr>
											<?php
												$diferencia_dia = $partido->diferencia;
											?>
										<?php endif ?>
										<tr class="<?php if($j==1) { echo 'tabla3_fila'; } ?>">
											<th colspan="8"><?php if($_GET['debug1']=="1"){ echo $diferencia_dia; } ?><b class="<?php if($j==1) { echo 'partido_fecha'; } else { echo 'partido_fecha2';} ?>" ><?php echo fecha_texto($partido->fecha); ?></b></th>
										</tr>
										<tr class="<?php if($j==1) { echo 'tabla3_fila'; } ?>">
											<th class="text-center">Hora</th>
											<th class="text-center"></th>
											<th class="text-center vs">vs</th>
											<th class="text-center"></th>
											<th class="text-center">Grupo</th>
										</tr>
									<?php } ?>
									<?php $diferencia = $partido->diferencia; ?>
									<tr>
										<td class="text-center"><?php echo convertir_hora($partido->hora); ?></td>
										<td class="text-center">
											<img src="/corte/banderas/<?php echo $partido->codigo1; ?>.png"><br>
											<?php echo $this->equipo_array[$partido->equipo1]; ?>
										</td>
										<td class="text-center">
										<?php
											$fechas[$partido->fecha]++;
										?>
											<?php if ($diferencia>=-1 and $fechas[$partido->fecha]==1){ ?>
												<input name="valor1_<?php echo $partido->id; ?>" type="number" id="valor1_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor1; ?>" class="marcador" />
												-
												<input name="valor2_<?php echo $partido->id; ?>" type="number" id="valor2_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor2; ?>" class="marcador" />
												<input type="hidden" name="partido<?php echo $partido->id; ?>" value="<?php echo $partido->id; ?>">
											<?php }else{ ?>
												<?php echo $partido->resultado_valor1; ?>
												-
												<?php echo $partido->resultado_valor2; ?>
											<?php } ?>

										</td>
										<td class="text-center">
											<img src="/corte/banderas/<?php echo $partido->codigo2; ?>.png"><br>
											<?php echo $this->equipo_array[$partido->equipo2]; ?>
										</td>
										<td class="text-center"><?php if($i==1){ echo $grupos[$partido->grupo1]; } ?></td>
									</tr>
									<?php $anterior=$partido->fecha; ?>

								<?php } ?>

							<?php endforeach ?>
						</table>

					</div>
					<div class="text-center col-md-12"><br><button class="btn btn-success" type="submit">Guardar</button><br><br></div>
				</div>
			<?php } ?>
			<br>
		<?php endforeach ?>
		<div class="alto"></div>
	</form>
</div>