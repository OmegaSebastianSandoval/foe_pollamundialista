<table class=" table table-striped  table-hover table-administrator text-left" border="1">
	<thead>
		<tr>
			<th>Id</th>
			<th>Documento</th>
			<th>Nombre</th>
			<th>Email</th>
			<!-- <th>Ciudad documento</th>
			<th>Telefono</th> -->
			<th>Celular</th>
			<!-- <th>Direccion</th> -->
			<th>Cuotas</th>
			<th width="150">Nivel</th>
			<th width="100">Estado</th>
			<th>Fecha registro</th>
			<th>Puntos</th>
		</tr>
	</thead>
	<tbody>
		<?php foreach($this->lists as $content){ ?>
		<?php $id =  $content->user_id; ?>
			<tr>
				<td><?=$content->user_id ?></td>
				<td><?=$content->user_idnumber ?></td>
				<td><?= mb_convert_encoding($content->user_names, 'ISO-8859-1', 'UTF-8');
?></td>
				<td><?=$content->user_email?></td>
				<!-- <td><?=$content->user_city?></td> 
				<td><?=$content->user_phone?></td>-->
				<td><?=$content->user_celular?></td>
				<!-- <td><?=$content->user_address?></td> -->
				<td><?=$content->user_cuotas?></td>

				<td><?= $this->levels[$content->user_level];?></td>
				<td>
					<?php if ( $content->user_state == 1){ $estado = "Activo"; } else { $estado = "Inactivo"; } ?>
					<?= $estado; ?>
				</td>
				<td><?=$content->user_fecha?></td>
				<td><?=$content->user_puntos?></td>
			</tr>
		<?php } ?>
	</tbody>
</table>