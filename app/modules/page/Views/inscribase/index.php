<div class="container d-flex justify-content-start flex-column align-items-center gap-5">

<h1 class="titulo">Validar documento del asociado</h1>

	<div class="popup">

		<form method="post" action="/page/inscribase/validar" class="form">
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
				<label class="title">VALIDAR DOCUMENTO</label>

			</div>
			<input placeholder="Ingrese su documento" title="Ingrese su documento" name="cedula" type="number" class="input_field" required>

			<?php if ($this->error == "1") { ?>
				<div class="alert alert-warning w-100" role="alert">
				El documento no pertenece a un asociado
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
		/* justify-content: s */
	}

	@media (max-width:771px) {
		.contenedor-general {
			padding-top: 0;

		}
	}
</style>