<div class="container d-flex justify-content-center">



	<div class="popup">

		<form method="post" action="/page/inscribase/guardar" class="form">
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


			<div class="row">
				<div class="col-sm-12 col-md-6">
					<label>Cédula
						<input placeholder="Ingrese su documento" title="Ingrese su documento" name="cedula" id="cedula" type="number" class="input_field" value="<?php echo $_GET['cedula'] ?>" readonly required>
					</label>
				</div>


				<div class="col-sm-12 col-md-6 d-none ">Ciudad del documento</div>
				<div class="col-sm-12 col-md-6 d-none "><input type="text" name="ciudad" class="form-control"></div>

				<div class="col-sm-12 col-md-6">
					<label>Nombre
						<input placeholder="Ingrese su nombre" title="Ingrese su nombre" name="nombre" id="nombre" type="text" class="input_field" value="<?php echo $this->existe->nombre; ?>" required>
					</label>
				</div>


				<div class="col-sm-12 col-md-6">
					<label>Clave (Númerico de 4 caracteres)
						<input placeholder="Ingrese su clave" title="Ingrese su clave" name="clave" id="clave" type="password" class="input_field" onkeypress='validate(event)' onkeyup="validatePasswords()" required>
					</label>
				</div>
				<div class="col-sm-12 col-md-6">
					<label>Repetir Clave
						<input placeholder="Ingrese su clave" title="Ingrese su clave" name="clave2" id="clave2" type="password" class="input_field" onkeypress='validate(event)' onkeyup="validatePasswords()" required>
					</label>
				</div>

				<div class="col-sm-12 col-md-6">
					<label>Correo
						<input placeholder="Ingrese su correo" title="Ingrese su correo" name="correo" id="correo" type="email" class="input_field" required>
					</label>
				</div>

				<div class="col-sm-12 col-md-6">
					<label>Celular
						<input placeholder="Ingrese su celular" title="Ingrese su celular" name="celular" id="celular" type="number" class="input_field" required>
					</label>
				</div>
				<div class="alert alert-danger w-100" id="alert" role="alert" style="display: none; ">
					Las contraseñas no coinciden.
				</div>

				<div class="col-sm-12 col-md-6 d-none ">Teléfono</div>
				<div class="col-sm-12 col-md-6 d-none "><input type="text" name="telefono" class="form-control"></div>
				<div class="col-sm-12 col-md-6 d-none ">Dirección</div>
				<div class="col-sm-12 col-md-6 d-none "><input type="text" name="direccion" class="form-control"></div>
				<div class="col-sm-12 col-md-6 d-none ">Forma de pago</div>
				<div class="col-sm-12 col-md-6 d-none">
					<select id="cuotas" name="cuotas" class="form-control">
						<option value="1" selected>1 Cuota de 50.719</option>
						<option value="2">2 Cuotas de 25.541</option>
					</select>
				</div>
			</div>
			<button class="button">Validar</button>
		</form>
	</div>






</div>




<style>
	.contenedor-general {
		/* display: grid;
		place-items: center; */
		justify-content: center
	}

	@media (max-width:771px) {
		.contenedor-general {
			padding-top: 0;

		}
	}

	.popup {

		max-width: 900px;

		& label {
			display: block;
			margin-bottom: 8px;
		}
	}
</style>

<script type="text/javascript">
	function validate(evt) {
		var theEvent = evt || window.event;
		var target = theEvent.target || theEvent.srcElement;
		var key = theEvent.keyCode || theEvent.which;
		key = String.fromCharCode(key);

		// Expresión regular que permite sólo dígitos numéricos
		var regex = /[0-9]/;

		// Comprobar si la tecla presionada cumple con la expresión regular
		if (!regex.test(key)) {
			// Prevenir la acción por defecto si no es un dígito
			if (theEvent.preventDefault) theEvent.preventDefault();
			theEvent.returnValue = false; // Para soporte de IE
		} else if (target.value.length >= 4) {
			// Verificar la longitud del valor en el campo de entrada
			// Si ya tiene 4 dígitos, prevenir la acción por defecto
			if (theEvent.preventDefault) theEvent.preventDefault();
			theEvent.returnValue = false; // Para soporte de IE
		}
	}

	function validatePasswords() {
		var password = document.getElementById("clave").value;
		var confirm_password = document.getElementById("clave2").value;
		var alert = document.getElementById("alert");

		if (password === confirm_password) {
			// Si las contraseñas coinciden, oculta la alerta
			alert.style.display = 'none';
		} else {
			// Si las contraseñas no coinciden, muestra la alerta
			alert.style.display = 'block';
		}
	}
</script>