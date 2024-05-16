<?php
//print_r($this->primero);
?>
<section class="w-100">

	<div class="container">

		<div class="row fondo_jugar">
			<!-- Contenido adicional de la página -->
			<?php echo $this->contenido; ?>

			<?php echo $this->getRoutPHP('modules/page/Views/partials/botonera_jugar.php'); ?>

		</div>

		<form method="post" action="/page/jugar/guardaroctavos" class="">
			<div class="contenedor-tabla mb-5">
				
				<div class="table-responsive ">

					<table class="tabla_transparente tabla_partidos" width="100%">
						<?php foreach ($this->grupos as $grupo) : ?>
							<tr>
								<input type="hidden" name="f" value="<?= $_GET['f']?>">
								<td class="text-md-center">Primero <?php echo $grupo->nombre; ?></td>
								<td class="text-md-center">
									<select id="primero<?php echo $grupo->id; ?>" name="primero<?php echo $grupo->id; ?>" class="ganador input_field  select-equipo">
										<option value=""></option>
										<?php foreach ($this->equipos as $equipo) : ?>
											<?php if ($equipo->grupo == $grupo->id) : ?>
												<option value="<?php echo $equipo->id ?>" <?php if ($this->primero[$grupo->id] == $equipo->id) {
																								echo 'selected';
																							} ?>><?php echo $equipo->nombre; ?></option>
											<?php endif ?>
										<?php endforeach ?>
									</select>
								</td>
								<td class="text-md-center">Segundo <?php echo $grupo->nombre; ?></td>
								<td class="text-md-center">
									<select id="segundo<?php echo $grupo->id; ?>" name="segundo<?php echo $grupo->id; ?>" class="ganador input_field select-equipo">
										<option value=""></option>
										<?php foreach ($this->equipos as $equipo) : ?>
											<?php if ($equipo->grupo == $grupo->id) : ?>
												<option value="<?php echo $equipo->id ?>" <?php if ($this->segundo[$grupo->id] == $equipo->id) {
																								echo 'selected';
																							} ?>><?php echo $equipo->nombre; ?></option>
											<?php endif ?>
										<?php endforeach ?>
									</select>
								</td>
							</tr>
						<?php endforeach ?>
					</table>

					<div class="text-md-center"><button class="btn-verde mx-auto mt-3" type="submit">Guardar</button></div>
				</div>
			</div>

		</form>
	</div>
</section>
<?php
// print_r($this->fase);
$fecha1 = $this->fase->fecha1;
$fecha2 = $this->fase->fecha2;
$hoy = date("Y-m-d H:i:s"); 
//echo "Fecha1: $fecha1, Fecha2: $fecha2, Hoy: $hoy";
// Verifica si la fecha actual NO está entre fecha1 y fecha2
if ($hoy < $fecha1 || $hoy > $fecha2) : ?>
	<script type="text/javascript">
		$("select").prop('disabled', true);
		$("button").prop('disabled', true);
		$("button").hide();
	</script>
<?php endif; ?>


