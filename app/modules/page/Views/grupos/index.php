<div class="container py-4">
	<!-- Contenido adicional de la página -->
	<?php echo $this->contenido; ?>

	<!-- Loop para mostrar los grupos -->
	<?php foreach ($this->grupos as $grupo) : ?>
		<div class="row mt-2 mt-md-5">

		<?php $titulo_grupo=$grupo->nombre; ?>

			<h3>

				<?php echo $titulo_grupo; ?>
			</h3>



			<div class="contenedor-tabla mb-5">

				<div class="table-responsive ">
					<table>
						<thead>
							<tr>
								<th class="text-md-center"></th>
								<th class="text-md-center"></th>
								<th class="text-md-center">PJ</th>
								<th class="text-md-center">PG</th>
								<th class="text-md-center">PE</th>
								<th class="text-md-center">PP</th>
								<th class="text-md-center">GF</th>
								<th class="text-md-center">GC</th>
								<th class="text-md-center">GD</th>
								<th class="text-md-center">PTS</th>
							</tr>
						</thead>
						<tbody>
							<?php foreach ($this->equipos as $equipo) : ?>
								<?php if ($equipo->grupo == $grupo->id) : ?>
									<tr>
										<td data-label="Bandera" class="text-md-center">
											<img src="/images/banderas/<?php echo ($equipo->codigo); ?>.png" alt="Bandera de <?php echo ($equipo->nombre); ?>">
										</td>
										<td data-label="Equipo" class="text-md-center"><?php echo ($equipo->nombre); ?></td>
										<td data-label="PJ" class="text-md-center"><?php echo ($equipo->pj); ?></td>
										<td data-label="PG" class="text-md-center"><?php echo ($equipo->pg); ?></td>
										<td data-label="PE" class="text-md-center"><?php echo ($equipo->pe); ?></td>
										<td data-label="PP" class="text-md-center"><?php echo ($equipo->pp); ?></td>
										<td data-label="GF" class="text-md-center"><?php echo ($equipo->gf); ?></td>
										<td data-label="GC" class="text-md-center"><?php echo ($equipo->gc); ?></td>
										<td data-label="GD" class="text-md-center"><?php echo ($equipo->gd); ?></td>
										<td data-label="PTS" class="text-md-center"><?php echo ($equipo->puntos); ?></td>
									</tr>
								<?php endif; ?>
							<?php endforeach; ?>
						</tbody>
					</table>
				</div>
			</div>

		</div>
	<?php endforeach; ?>
</div>