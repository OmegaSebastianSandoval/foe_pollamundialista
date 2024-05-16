<?php //print_r($this->usuarios) 
?>
<div class="container">
	<!-- Contenido adicional de la página -->
	<?php echo $this->contenido; ?>

	<?php $i = 0; ?>
	<div class="contenedor-tabla shadow mt-4 mb-5 ">

		<div class="table-responsive">
			<table>
				<tr>
					<th class="text-center"><strong>N°</strong></th>
					<th class="text-center"><strong>Nombre</strong></th>
					<th class="text-center"><strong>Puntos</strong></th>
				</tr>
				<?php foreach ($this->usuarios as $usuario) : ?>
					<?php $i++; ?>
					<?php if ($i <= 20) { ?>
						<tr <?php if ($usuario->user_id == $_SESSION['kt_login_id']) {
								echo 'style="background: yellow;"';
							} ?>>
							<td data-label="N°" class="text-center"><?php echo $i; ?></td>
							<td data-label="Nombre" class="text-center"><?php echo $usuario->user_names; ?></td>
							<td data-label="Puntos" class="text-center"><?php echo $usuario->user_puntos; ?></td>
						</tr>
					<?php } ?>
				<?php endforeach ?>
			</table>
		</div>
	</div>
</div>