<div class="container">
	<br><br>
	<div class="text-center">
		<h2 class="titulo-principal"><?php echo $this->contenido[0]->content_title;  ?></h2>
	</div>
	<p><?php echo $this->contenido[0]->content_description;  ?></p>

	<form method="post" action="/page/inscribase/guardar">
		<div class="col-md-3"></div>
		<div class="col-sm-12 col-md-6 form-group">
			<div class="col-sm-12 col-md-6">Validar documento</div>
			<div class="col-sm-12 col-md-6"><input type="text" name="cedula" required class="form-control"></div>
		</div>
		<div class="col-md-12">
			<br>
			<div class="text-center"><button class="btn btn-success" type="submit">Guardar</button></div>
			<br>
		</div>
	</form>
</div>