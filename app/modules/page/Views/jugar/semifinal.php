<style>
	section.section-jugar {
		background-color: var(--grisC);
		min-height: calc(100dvh - 197px);
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
		margin-bottom: 0px;
	}
	
</style>
<section class="section-jugar w-100 pb-4">

	<div class="container">

		<div class="row fondo_jugar">
			<!-- Contenido adicional de la página -->
			<?php echo $this->contenido; ?>

			<?php echo $this->getRoutPHP('modules/page/Views/partials/botonera_jugar.php'); ?>

		</div>
		<form method="post" action="/page/jugar/guardarsemifinal">
			<div class="contenedor-tabla mb-5">
				
				<div class="table-responsive shadow ">
					
					<table class="tabla_transparente tabla_partidos" width="100%">
						<input type="hidden" name="f" value="<?= $_GET['f']?>">
						<?php for ($i = 1; $i <= 4; $i++) { ?>
							<tr>
								<td class="text-center">Equipo <?php echo $i; ?></td>
								<td class="text-center">
									<select id="e<?php echo $i; ?>" name="e<?php echo $i; ?>" class="ganador input_field select-equipo">
										<option value=""></option>
										<?php foreach ($this->equipos as $equipo) : ?>
											<option value="<?php echo $equipo->id ?>" <?php if ($this->e[$i] == $equipo->id) {
																							echo 'selected';
																						} ?>><?php echo $equipo->nombre; ?></option>
										<?php endforeach ?>
									</select>
								</td>
							</tr>
						<?php } ?>
					</table>
				</div>
			</div>

			<div class="text-center"><button class="btn-verde mx-auto mt-2" type="submit">Guardar</button></div>

		</form>
	</div>
</section>
<?php
// print_r($this->fase);
$fecha1 = $this->fase->fecha1;
$fecha2 = $this->fase->fecha2;
$hoy = date("Y-m-d H:i:s"); 
// echo "Fecha1: $fecha1, Fecha2: $fecha2, Hoy: $hoy";
// Verifica si la fecha actual NO está entre fecha1 y fecha2
if ($hoy < $fecha1 || $hoy > $fecha2) : ?>
	<script type="text/javascript">
		$("select").prop('disabled', true);
		$("button").prop('disabled', true);
		$("button").hide();
	</script>
<?php endif; ?>


