<div class="container d-flex justify-content-start flex-column align-items-center gap-5 pb-4">

	<h1 class="titulo">Ingreso del asociado</h1>


	<div class="popup">

		<form method="post" action="/page/inscribase/login2" class="form">
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
				<label class="title">INGRESO USUARIO</label>

			</div>
			<input placeholder="Ingrese su documento" title="Ingrese su documento" name="cedula" type="number" value="<?php echo $_GET['cedula']; ?>" class="input_field" required>

			<input placeholder="Ingrese su clave" title="Ingrese su documento" name="clave" type="password" class="input_field" required>
			<a class="link" href="/page/inscribase/olvido">¿Olvidó su contraseña?</a>

			<?php if ($_GET['error'] == "1") { ?>
				<div class="alert alert-danger w-100 text-center" role="alert">
					Clave incorrecta
				</div>
			<?php } ?>

			<button class="button">Validar</button>
		</form>
	</div>




</div>




<style>
	.contenedor-general {
		/* display: grid;
		place-items: center; */
		/* justify-content: center */
	}

	@media (max-width:771px) {
		.contenedor-general {
			padding-top: 0;

		}
	}
</style>