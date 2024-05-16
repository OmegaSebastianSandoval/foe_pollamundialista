<h1 class="titulo-principal"><i class="fas fa-cogs"></i> <?php echo $this->titlesection; ?></h1>
<div class="container-fluid">
	<form class="text-left" enctype="multipart/form-data" method="post" action="<?php echo $this->routeform;?>"  data-bs-toggle="validator">
		<div class="content-dashboard">
			<input type="hidden" name="csrf" id="csrf" value="<?php echo $this->csrf ?>">
			<input type="hidden" name="csrf_section" id="csrf_section" value="<?php echo $this->csrf_section ?>">
			<?php if ($this->content->id) { ?>
				<input type="hidden" name="id" id="id" value="<?= $this->content->id; ?>" />
			<?php }?>
			<div class="row">
		<div class="col-3 form-group d-grid">
			<label   class="control-label">Activa (Si, No)</label>
				<input type="checkbox" name="estado" value="1" class="form-control switch-form " <?php if ($this->getObjectVariable($this->content, 'estado') == 1) { echo "checked";} ?>   ></input>
				<div class="help-block with-errors"></div>
		</div>
				<div class="col-3 form-group">
					<label for="titulo"  class="control-label">titulo</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-cafe " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="text" value="<?= $this->content->titulo; ?>" name="titulo" id="titulo" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label for="fecha1"  class="control-label">fecha inicio</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="datetime-local" value="<?= $this->content->fecha1; ?>" name="fecha1" id="fecha1" class="form-control"   >
					</label>
					<div class="help-block with-errors"></div>
				</div>
				<div class="col-3 form-group">
					<label for="fecha2"  class="control-label">fecha fin</label>
					<label class="input-group">
						<div class="input-group-prepend">
							<span class="input-group-text input-icono  fondo-verde-claro " ><i class="fas fa-pencil-alt"></i></span>
						</div>
						<input type="datetime-local" value="<?= $this->content->fecha2; ?>" name="fecha2" id="fecha2" class="form-control"   >
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