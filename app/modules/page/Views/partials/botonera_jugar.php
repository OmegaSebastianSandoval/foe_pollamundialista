<div class="d-flex  w-100 justify-content-center gap-3 my-3 my-md-5" >
	<div class="row botonera justify-content-start align-items-center justify-content-md-between w-100">
		<?php foreach ($this->fasesBotonera as $faseInd) { ?>

			<div class="col-4 col-md-2"><a href="/page/jugar/<?= $faseInd->enlace ?>?f=<?= $faseInd->id ?>" class="btn-verde shadow <?php echo $this->BtnActivoBotonera == $faseInd->id ? 'active' : '' ?>"><?= $faseInd->nombreenlace ?></a></div>

		<?php } ?>
		
	</div>

</div>