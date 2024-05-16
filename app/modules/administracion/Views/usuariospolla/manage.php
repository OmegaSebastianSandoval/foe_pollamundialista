<h1 class="titulo-principal"><i class="fas fa-cogs"></i> <?php echo $this->titlesection; ?></h1>
<div class="container-fluid">
	<form class="text-left" enctype="multipart/form-data" method="post" action="<?php echo $this->routeform;?>"  data-bs-toggle="validator">
		<div class="content-dashboard">
			<input type="hidden" name="csrf" id="csrf" value="<?php echo $this->csrf ?>">
			<input type="hidden" name="csrf_section" id="csrf_section" value="<?php echo $this->csrf_section ?>">
			<?php if ($this->content->user_id) { ?>
				<input type="hidden" name="id" id="id" value="<?= $this->content->user_id; ?>" />
			<?php }?>
			<div class="row">
				<div class="col-12 col-md-4 form-group">
					<label for="user_names"  class="control-label">nombres</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_names; ?>" name="user_names" id="user_names" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group">
					<label for="user_lastnames"  class="control-label">apellidos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_lastnames; ?>" name="user_lastnames" id="user_lastnames" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group">
					<label for="user_email"  class="control-label">email</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_email; ?>" name="user_email" id="user_email" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group d-none">
					<label for="user_idnumber"  class="control-label">idnumber</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_idnumber; ?>" name="user_idnumber" id="user_idnumber" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group d-none">
					<label class="control-label">user_city</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado " ><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="user_city"   >
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_user_city AS $key => $value ){?>
								<option <?php if($this->getObjectVariable($this->content,"user_city") == $key ){ echo "selected"; }?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group d-none">
					<label for="user_country"  class="control-label">user_country</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_country; ?>" name="user_country" id="user_country" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_phone"  class="control-label">Teléfono</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_phone; ?>" name="user_phone" id="user_phone" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_address"  class="control-label">user_address</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_address; ?>" name="user_address" id="user_address" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label class="control-label">nivel</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde " ><i class="far fa-list-alt"></i></span>
						</div>
						<select class="form-control" name="user_level"   >
							<option value="">Seleccione...</option>
							<?php foreach ($this->list_user_level AS $key => $value ){?>
								<option <?php if($this->getObjectVariable($this->content,"user_level") == $key ){ echo "selected"; }?> value="<?php echo $key; ?>" /> <?= $value; ?></option>
							<?php } ?>
						</select>
					</label>
					<div class="help-block with-errors"></div>
				</div>
		<div class="col-12 col-md-4 form-group d-grid">
			<label   class="control-label">Activo</label>
				<input type="checkbox" name="user_state" value="1" class="form-control switch-form " <?php if ($this->getObjectVariable($this->content, 'user_state') == 1) { echo "checked";} ?>   ></input>
				<div class="help-block with-errors"></div>
		</div>
				<div class="col-12 col-md-4 form-group">
					<label for="user_user"  class="control-label">usuario</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_user; ?>" name="user_user" id="user_user" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group">
					<label for="user_password"  class="control-label">Contrase&ntilde;a</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe " ><i class="fas fa-key"></i></span>
						</div>
						<input type="password" value="" name="user_password" id="user_password" class="form-control" <?php if (!$this->content->user_id) { ?>required <?php } ?> data-remote="/core/user/validarclave"  >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<!-- <div class="col-12 col-md-4 form-group">
					<label for="user_password"  class="control-label">Repita Contrase&ntilde;a</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe " ><i class="fas fa-key"></i></span>
						</div>
						<input type="password" value="" name="user_passwordr" id="user_passwordr" data-match="#user_password" min="8" data-match-error="Las dos contraseñas no son iguales" class="form-control" <?php if (!$this->content->user_id) { ?>required <?php } ?>   >
					</label>
					<div class="help-block with-errors"></div>
				</div> -->

				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_delete"  class="control-label">user_delete</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_delete; ?>" name="user_delete" id="user_delete" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_current_user"  class="control-label">user_current_user</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_current_user; ?>" name="user_current_user" id="user_current_user" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_zona"  class="control-label">user_zona</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_zona; ?>" name="user_zona" id="user_zona" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group">
					<label for="user_celular"  class="control-label">celular</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_celular; ?>" name="user_celular" id="user_celular" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group d-none">
					<label for="user_puntos"  class="control-label">user_puntos</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rosado " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_puntos; ?>" name="user_puntos" id="user_puntos" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_marcadores"  class="control-label">user_marcadores</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_marcadores; ?>" name="user_marcadores" id="user_marcadores" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_ganadores"  class="control-label">user_ganadores</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_ganadores; ?>" name="user_ganadores" id="user_ganadores" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_otros"  class="control-label">user_otros</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_otros; ?>" name="user_otros" id="user_otros" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_total"  class="control-label">user_total</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-azul " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_total; ?>" name="user_total" id="user_total" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group  d-none">
					<label for="user_cuotas"  class="control-label">user_cuotas</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-morado " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_cuotas; ?>" name="user_cuotas" id="user_cuotas" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group d-none">
					<label for="user_paso"  class="control-label">user_paso</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-rojo-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_paso; ?>" name="user_paso" id="user_paso" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-12 col-md-4 form-group">
					<label for="user_fecha"  class="control-label">fecha ingreso</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->user_fecha; ?>" name="user_fecha" id="user_fecha" class="form-control"   >
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