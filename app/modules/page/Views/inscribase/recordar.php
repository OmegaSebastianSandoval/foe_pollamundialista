<div class="container-fluid fondo_azul">
	<div class="container">
		<br><br>
		<div class="text-center">
			<h2 class="titulo_jugar"><?php //echo $this->contenido[0]->content_title;  ?></h2>
		</div>
		<p><?php //echo $this->contenido[0]->content_description;  ?></p>

		<div align="center" class="col-md-12">
			<img src="/corte/logo-login.png" class="logo_login" />
			<form method="post" action="/page/inscribase/recordar2" class="col-md-12">
				<div class="col-md-4"></div>
		    	<div align="center" class="caja_login col-md-12 col-md-4">
		    		<br>
		        	<div class="blanco_login col-md-12">RECORDAR CONTRASEÑA</div>
					<div class="col-sm-12 col-md-12">
						<div class="col-sm-12 col-md-12"><img src="/corte/usuario.png" width="20" height="23" class="" /> <input type="text" name="cedula" required class="campo_votacion" value="<?php echo $_GET['cedula']; ?>" placeholder="Identificaci&oacute;n"></div>
						<div class="col-md-12">
							<br>
							<button class="btn btn-success" type="submit">Validar</button>
							<br><br>
						</div>
					</div>
		      	</div>


				<?php if ($_GET['error']=="1"): ?>
					<div class="col-md-12"><br></div>
					<div class="alert alert-danger col-md-12 text-center">El documento no pertenece a un asociado</div>
				<?php endif ?>
			</form>
		</div>


	</div>
</div>