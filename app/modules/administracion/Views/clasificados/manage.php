<h1 class="titulo-principal"><i class="fas fa-cogs"></i> <?php echo $this->titlesection; ?></h1>
<div class="container-fluid">
	<form class="text-left" enctype="multipart/form-data" method="post" action="<?php echo $this->routeform; ?>" data-bs-toggle="validator">
		<div class="content-dashboard">
			<input type="hidden" name="csrf" id="csrf" value="<?php echo $this->csrf ?>">
			<input type="hidden" name="csrf_section" id="csrf_section" value="<?php echo $this->csrf_section ?>">
			<?php if ($this->content->clasificado_id) { ?>
				<input type="hidden" name="id" id="id" value="<?= $this->content->clasificado_id; ?>" />
			<?php } ?>
			<div class="row d-none">
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos a1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_a1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_a1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_a1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos a2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_a2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_a2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_a2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos b1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_b1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_b1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_b1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos b2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_b2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_b2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_b2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos c1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_c1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_c1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_c1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos c2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_c2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_c2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_c2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos d1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_d1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_d1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_d1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos d2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_d2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_d2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_d2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos e1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_e1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_e1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_e1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos e2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_e2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_e2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_e2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos f1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_f1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_f1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_f1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos f2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_f2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_f2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_f2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos g1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_g1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_g1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_g1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos g2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_g2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_g2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_g2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos h1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_h1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_h1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_h1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado octavos h2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_octavos_h2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_octavos_h2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_octavos_h2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>

			</div>

			<hr>
			<div class="row">
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e3</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e3">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e3 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e3") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e4</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e4">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e4 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e4") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e5</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e5">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e5 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e5") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e6</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e6">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e6 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e6") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e7</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e7">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e7 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e7") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado cuartos e8</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuartos_e8">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuartos_e8 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuartos_e8") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>
			<div class="row">
				<div class="col-3 form-group">
					<label class="control-label">clasificado semis e1</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_semis_e1">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_semis_e1 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_semis_e1") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado semis e2</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_semis_e2">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_semis_e2 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_semis_e2") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado semis e3</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_semis_e3">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_semis_e3 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_semis_e3") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label class="control-label">clasificado semis e4</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_semis_e4">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_semis_e4 as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_semis_e4") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>
			<div class="row">
				<div class="col-6 form-group">
					<label class="control-label">cuarto puesto</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_cuarto">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_cuarto as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_cuarto") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-6 form-group">
					<label class="control-label">tercer puesto</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_tercero">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_tercero as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_tercero") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>
			<div class="row">
				<div class="col-6 form-group">
					<label class="control-label">subcampeon</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_subcampeon">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_subcampeon as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_subcampeon") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-6 form-group">
					<label class="control-label">ccampeon</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_campeon">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_campeon as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_campeon") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
			</div>

			<hr>
			<div class="row">
				<div class="col-6 form-group">
					<label class="control-label">jugador</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_jugador">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_jugador as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_jugador") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-6 form-group">
					<label class="control-label">valla</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe "><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="clasificado_valla">
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_clasificado_valla as $key => $value) { ?>
								<option <?php if ($this->getObjectVariable($this->content, "clasificado_valla") == $key) {
											echo "selected";
										} ?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
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