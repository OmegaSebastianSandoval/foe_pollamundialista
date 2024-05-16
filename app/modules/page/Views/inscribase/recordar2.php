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
						<div class="col-sm-12 col-md-12 blanco"><br><br><?php echo $this->mensaje; ?><br><br></div>
					</div>
		      	</div>

			</form>
		</div>


	</div>
</div>

<script type="text/javascript">
	setTimeout(function() { window.location="/page/inscribase/login"; }, 3000);
</script>