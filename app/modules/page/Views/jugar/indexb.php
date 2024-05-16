<?php
$grupos = array("","A","B","C","D","E","F","G","H");
//print_r($this->fechas);
?>

<div class="container">
	<br><br>
	<div class="row">
		<div class="alto"></div>
		<div class="text-center"><img src="/corte/icono-partidos.png" class="icono"></div>
		<br>
		<div class="text-center">
			<h2 class="titulo-principal">Jugar Polla</h2>
		</div>
		<div class="alto"></div>
		<?php echo $this->getRoutPHP('modules/page/Views/partials/botonera_jugar.php'); ?>
		<div class="col-xs-12 col-md-8">

			<div class="row col-md-12 filtros">
				<form method="post">
					<div class="col-md-2">
						<select id="fecha" name="fecha" class="menu_select">
							<option value="" <?php if($_POST['fecha']==""){ echo 'selected'; }?>>FECHA</option>
							<?php foreach ($this->fechas as $fecha): ?>
								<option value="<?php echo $fecha->fecha; ?>" <?php if($_POST['fecha']==$fecha->fecha){ echo 'selected'; }?> ><?php echo $fecha->fecha; ?></option>
							<?php endforeach ?>
							</div>
						</select>
					</div>
					<div class="col-md-4">
						<select id="equipo" name="equipo" class="menu_select">
							<option value="" <?php if($_POST['equipo']==""){ echo 'selected'; }?>>EQUIPO</option>
							<?php foreach ($this->equipos as $equipo): ?>
								<option value="<?php echo $equipo->id; ?>" <?php if($_POST['equipo']==$equipo->id){ echo 'selected'; }?> ><?php echo $equipo->nombre; ?></option>
							<?php endforeach ?>
							</div>
						</select>
					</div>
					<div class="col-md-2">
						<select id="grupo" name="grupo" class="menu_select">
							<option value="" <?php if($_POST['grupo']==""){ echo 'selected'; }?>>GRUPO</option>
							<?php foreach ($this->grupos as $grupo): ?>
								<option value="<?php echo $grupo->id; ?>" <?php if($_POST['grupo']==$grupo->id){ echo 'selected'; }?>><?php echo $grupo->nombre; ?></option>
							<?php endforeach ?>
							</div>
						</select>
					</div>
					<div class="col-md-3">
						<input type="submit" name="Filtrar" value="Filtrar" class="boton_blanco">
						<a href="/page/jugar/" class="boton_azul2">Limpiar filtro</a>
					</div>
				</form>
			</div>

		</div>
		<div class="alto2"></div>
	</div>

	<form method="post" action="/page/jugar/guardar">
		<?php foreach ($this->fases as $fase): ?>
			<?php
			$i = $fase->id;
			$anterior = "";
			?>
			<div class="row">
				<div class="alto"></div>
				<h3><?php echo $fase->titulo; ?></h3>
				<div class="">
					<table class="tabla3 tabla_partidos" width="100%">
						<?php foreach ($this->partidos as $partido): ?>
							<?php if($partido->fase==$i){  ?>
								<?php if($partido->fecha!=$anterior or $anterior==""){ ?>
									<tr>
										<th colspan="8"><b><?php echo $partido->fecha; ?></b></th>
									</tr>
									<tr>
										<th class="text-center">Hora</th>
										<th class="text-center"></th>
										<th class="text-center vs">vs</th>
										<th class="text-center"></th>
										<th class="text-center">Ganador</th>
										<th class="text-center">Grupo</th>
									</tr>
								<?php } ?>
								<tr>
									<td class="text-center"><?php echo ($partido->hora); ?></td>
									<td class="text-center">
										<img src="/corte/banderas/<?php echo $partido->codigo1; ?>.png"><br>
										<?php echo $this->equipo_array[$partido->equipo1]; ?>
									</td>
									<td class="text-center">
										<?php if ($partido->diferencia>3){ ?>
											<input name="valor1_<?php echo $partido->id; ?>" type="text" id="valor1_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor1; ?>" class="marcador" />
											-
											<input name="valor2_<?php echo $partido->id; ?>" type="text" id="valor2_<?php echo $partido->id; ?>" size="2" value="<?php echo $partido->resultado_valor2; ?>" class="marcador" />
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
									<td class="text-center">
										<?php if ($partido->diferencia>3){ ?>
											<select id="ganador_<?php echo $partido->id; ?>" name="ganador_<?php echo $partido->id; ?>" class="ganador">
												<option value=""></option>
												<option value="-1" <?php if($partido->resultado_ganador=="-1"){ echo 'selected'; } ?>>Empate</option>
												<option value="<?php echo $partido->equipo1; ?>" <?php if($partido->resultado_ganador==$partido->equipo1){ echo 'selected'; } ?>><?php echo $this->equipo_array[$partido->equipo1]; ?></option>
												<option value="<?php echo $partido->equipo2; ?>" <?php if($partido->resultado_ganador==$partido->equipo2){ echo 'selected'; } ?>><?php echo $this->equipo_array[$partido->equipo2]; ?></option>
											</select>
										<?php }else{ ?>
											<?php echo $this->equipo_array[$partido->resultado_ganador]; ?>
										<?php } ?>
									</td>
									<td class="text-center"><?php if($i==1){ echo $grupos[$partido->grupo1]; } ?></td>
								</tr>
							<?php $anterior=$partido->fecha; ?>
							<?php } ?>
						<?php endforeach ?>
					</table>
				</div>
			</div>
			<br>
			<div class="text-center"><button class="btn btn-success" type="submit">Guardar</button></div>
			<br>
		<?php endforeach ?>
		<div class="alto"></div>
	</form>
</div>
