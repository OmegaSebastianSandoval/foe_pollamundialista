<div class="container d-flex justify-content-start flex-column align-items-center gap-5">

	<h1 class="titulo">Recuperación de contraseña</h1>

	<div class="popup">

		<form method="post" action="/page/inscribase/recuperar" class="form">
			<div class="icon">

				<svg fill="none" viewBox="0 0 34 34" height="34" width="34" xmlns="http://www.w3.org/2000/svg">
					<defs>
						<style>
							.cls-1 {
								fill: #606161;
							}
						</style>
					</defs>cedula
					<title />
					<g data-name="Layer 7" id="Layer_7">
						<path stroke="#115DFC" class="cls-1" d="M19.75,15.67a6,6,0,1,0-7.51,0A11,11,0,0,0,5,26v1H27V26A11,11,0,0,0,19.75,15.67ZM12,11a4,4,0,1,1,4,4A4,4,0,0,1,12,11ZM7.06,25a9,9,0,0,1,17.89,0Z" />
					</g>
				</svg>
			</div>
			<div class="note">
				<?php if ($this->error) : ?>
					<?php if ($this->error == "2" && $this->email) : ?>
						<div class="alert alert-success w-100 text-center" role="alert">
							Enviamos su contraseña al correo <b><?php echo $this->email; ?></b>
						</div>
						<a href="/page/inscribase/login?cedula=<?php echo $this->usuario?>" class="button">Volver</a>
					<?php elseif ($this->error == "1") : ?>
						<div class="alert alert-warning w-100" role="alert">
							El documento no pertenece a un asociado
						</div>

						<a href="/page/inscribase/" class="button">Volver</a>


					<?php elseif ($this->error == "3") : ?>
						<div class="alert alert-warning w-100" role="alert">
							Se cambió su contraseña pero no pudo ser enviado al correo <b><?php echo $this->email; ?></b>

						</div>
					<?php endif; ?>
					</div>


				<?php else : ?>
					<label class="title">Ingrese el correo con el que hizo el proceso de inscripción</label>
			</div>
			<input placeholder="Ingrese su correo" title="Ingrese su correo" name="correo" type="email" class="input_field" required>


			<button class="button">Recuperar</button>
		<?php endif; ?>



		</form>
	</div>






</div>




<style>
	.contenedor-general {
		/* display: grid;
		place-items: center; */
		/* justify-content: s */
	}

	.title {
		text-align: center;
	}
	.button{
		text-decoration: none;
		align-items: center;
    display: flex;
	}
	.button:hover{
		color:#FFF;
		
	}

	@media (max-width:771px) {
		.contenedor-general {
			padding-top: 0;

		}
	}
</style>