<style>
	table * {
		font-size: 13px !important;
	}

	tbody * {
		color: var(--gris);
	}

	.contenedor-tabla {
		max-width: 100%;
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

	.contenedor-tabla table {
		table-layout: auto;
		margin-bottom: 17px;
	}
</style>

<div class="container">

	<!-- Contenido adicional de la página -->
	<?php echo $this->contenido; ?>

	<form method="post" class="form-filter-partidos">
		<div class="contenedor-filtros d-flex flex-row align-items-center gap-4 justify-content-center">

			<select id="fecha" name="fecha" class="input_field">
				<option value="" <?php if ($this->fecha == "") {
					echo 'selected';
				} ?>>FECHA</option>
				<?php foreach ($this->fechas as $key => $fecha): ?>
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
				<?php foreach ($this->equipos as $key => $equipo): ?>
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

				<a href="/page/partidos/?genero=<?php echo $_GET['genero']; ?>" class="btn-azul">Limpiar filtro</a>
			</div>

		</div>

	</form>

	<?php foreach ($this->fases as $fase): ?>
    <?php
    $i = $fase->id;
    $anterior = "";
    $contenidoFase = false; // Flag para saber si hay contenido en la fase

    foreach ($this->partidos as $partido) {
        if ($partido->fase == $i) {
            $contenidoFase = true;
            break;
        }
    }

    if ($contenidoFase && $this->existen[$i] > 0): // Sólo muestra si hay partidos en la fase
    ?>
        <div class="row">
            <div class="alto"></div>
            <div class="fondo_azul_fase mt-4">
                <h3><?php echo ($fase->titulo); ?></h3>
            </div>
            <div class="contenedor-tabla mb-5">
                <div class="table-responsive ">
                    <?php foreach ($this->partidos as $partido): ?>
                        <?php if ($partido->fase == $i): ?>
                            <?php if ($partido->fecha != $anterior || $anterior == ""): ?>
                                <table>
                                    <thead>
                                        <tr class="tabla3_fila">
                                            <th colspan="6" class="th-transparent">
                                                <?php echo fecha_texto($partido->fecha); ?>
                                            </th>
                                        </tr>
                                        <tr class="tabla3_fila">
                                            <th class="text-md-center">Hora</th>
                                            <th class="text-md-center"></th>
                                            <th class="text-md-center vs">vs</th>
                                            <th class="text-md-center"></th>
                                            <th class="text-md-center">Ganador</th>
                                            <th class="text-md-center">Grupo</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                            <?php endif; ?>
                                    <tr>
                                        <td  data-label="Hora"  class="text-md-center"><?php echo convertir_hora($partido->hora); ?></td>
                                        <td   data-label="Equipo 1"  class="text-md-center" width="25%">
                                            <img src="/images/<?php echo ($partido->bandera_equipo1); ?>"><br>
                                            <?php echo ($this->equipo_array[$partido->equipo1]); ?>
                                        </td>
                                        <td   data-label="vs"  class="text-md-center" >
                                            <?php if ($partido->ganador != 0) { echo ($partido->valor1); } ?>
                                            -
                                            <?php if ($partido->ganador != 0) { echo ($partido->valor2); } ?>
                                        </td>
                                        <td   data-label="Equipo 2"  class="text-md-center"  width="25%">
                                            <img src="/images/<?php echo ($partido->bandera_equipo2); ?>"><br>
                                            <?php echo ($this->equipo_array[$partido->equipo2]); ?>
                                        </td>
                                        <td   data-label="Ganador"  class="text-md-center">
                                            <?php if ($partido->ganador != 0): ?>
                                                <?php echo ($this->equipo_array[$partido->ganador]); ?>
                                            <?php elseif ($partido->ganador == "-1"): ?>
                                                EMPATE
                                            <?php endif; ?>
                                        </td>
                                        <td   data-label="Grupo"  class="text-md-center">
                                            <?php if ($i == 1): ?>
                                                <?php echo ($this->grupos[$partido->grupo1]); ?>
                                            <?php endif; ?>
                                        </td>
                                    </tr>
                            <?php $anterior = $partido->fecha; ?>
                        <?php endif; ?>
                    <?php endforeach; ?>
                                    </tbody>
                                </table>
                </div>
            </div>
        </div>
    <?php endif; ?>
<?php endforeach; ?>

</div>