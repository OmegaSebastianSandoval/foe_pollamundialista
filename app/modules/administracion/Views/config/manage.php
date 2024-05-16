<h1 class="titulo-principal"><i class="fas fa-cogs"></i> <?php echo $this->titlesection; ?></h1>
<div class="container-fluid">
	<form class="text-left" enctype="multipart/form-data" method="post" action="<?php echo $this->routeform; ?>" data-bs-toggle="validator">
		<div class="content-dashboard">
			<input type="hidden" name="csrf" id="csrf" value="<?php echo $this->csrf ?>">
			<input type="hidden" name="csrf_section" id="csrf_section" value="<?php echo $this->csrf_section ?>">
			<?php if ($this->content->config_id) { ?>
				<input type="hidden" name="id" id="id" value="<?= $this->content->config_id; ?>" />
			<?php } ?>
			<div class="row">
				<div class="col-4 form-group">
					<label for="config_valorcuota" class="control-label">valor cuota</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_valorcuota; ?>" name="config_valorcuota" id="config_valorcuota" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_interes" class="control-label">interes</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_interes; ?>" name="config_interes" id="config_interes" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>

				<div class="col-4 form-group">
					<label for="config_horasminimo" class="control-label">Horas restantes para añadir marcador</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_horasminimo; ?>" name="config_horasminimo" id="config_horasminimo" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>

			<div class="row">

				<div class="col-4 form-group">
					<label for="config_gruposmarcador" class="control-label">Acertar marcador grupos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_gruposmarcador; ?>" name="config_gruposmarcador" id="config_gruposmarcador" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_gruposequipo" class="control-label">Acertar ganador grupos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_gruposequipo; ?>" name="config_gruposequipo" id="config_gruposequipo" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_gruposempate" class="control-label">Acertar empate grupos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_gruposempate; ?>" name="config_gruposempate" id="config_gruposempate" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>

			<div class="row">

				<div class="col-3 form-group">
					<label for="config_1puestooctavos" class="control-label">Acertar 1er clasificado octavos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_1puestooctavos; ?>" name="config_1puestooctavos" id="config_1puestooctavos" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label for="config_2puestooctavos" class="control-label">Acertar 2do clasificado octavos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_2puestooctavos; ?>" name="config_2puestooctavos" id="config_2puestooctavos" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label for="config_octavosmarcador" class="control-label">Acertar marcador octavos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_octavosmarcador; ?>" name="config_octavosmarcador" id="config_octavosmarcador" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label for="config_octavosequipo" class="control-label">Acertar ganador octavos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_octavosequipo; ?>" name="config_octavosequipo" id="config_octavosequipo" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>

			<div class="row">

				<div class="col-4 form-group">
					<label for="config_cuartosclasificado" class="control-label">Acertar clasificado cuartos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_cuartosclasificado; ?>" name="config_cuartosclasificado" id="config_cuartosclasificado" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_cuartosmarcador" class="control-label">Acertar marcador cuartos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_cuartosmarcador; ?>" name="config_cuartosmarcador" id="config_cuartosmarcador" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_cuartosganador" class="control-label">Acertar ganador cuartos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_cuartosganador; ?>" name="config_cuartosganador" id="config_cuartosganador" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>

			</div>

			<hr>

			<div class="row">

				<div class="col-4 form-group">
					<label for="config_semisclasificado" class="control-label">Acertar clasificado semis</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_semisclasificado; ?>" name="config_semisclasificado" id="config_semisclasificado" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_semismarcador" class="control-label">Acertar marcador semis</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_semismarcador; ?>" name="config_semismarcador" id="config_semismarcador" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_semisequipo" class="control-label">Acertar ganador semis</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_semisequipo; ?>" name="config_semisequipo" id="config_semisequipo" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>

			<div class="row">

				<div class="col-6 form-group">
					<label for="config_finalesmarcadores" class="control-label">Acertar marcador finales</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_finalesmarcadores; ?>" name="config_finalesmarcadores" id="config_finalesmarcadores" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-6 form-group">
					<label for="config_campeon" class="control-label">Acertar campeon</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_campeon; ?>" name="config_campeon" id="config_campeon" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>

			<div class="row">

				<div class="col-4 form-group">
					<label for="config_subcampeon" class="control-label">Acertar subcampeon</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_subcampeon; ?>" name="config_subcampeon" id="config_subcampeon" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_tercero" class="control-label">Acertar tercero</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_tercero; ?>" name="config_tercero" id="config_tercero" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-4 form-group">
					<label for="config_cuarto" class="control-label">Acertar cuarto</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_cuarto; ?>" name="config_cuarto" id="config_cuarto" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>

			<div class="row">

				<div class="col-6 form-group">
					<label for="config_goleador" class="control-label">Acertar goleador</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_goleador; ?>" name="config_goleador" id="config_goleador" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-6 form-group">
					<label for="config_valla" class="control-label">Acertar valla</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->config_valla; ?>" name="config_valla" id="config_valla" class="form-control">
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>
		</div>
		<div class="botones-acciones">
			<button class="btn btn-guardar" type="submit">Guardar</button>
			<a href="<?php echo $this->route; ?>" class="btn btn-cancelar">Cancelar</a>
		</div>
	</form>
</div>