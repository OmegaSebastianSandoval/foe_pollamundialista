<?php
echo $this->banner;
?>
<div class="caja-resultados">
    <div class="container">
        <div class="row">

            <div class="col-md-3">
                <h2>
                    <span>ÚLTIMOS</span>
                    Resultados
                </h2>
            </div>
            <div class="col-md-9">
                <div class="row">
                    <?php foreach ($this->resultados as $resultado) : ?>
                        <div class="col-sm-4">
                            <div class="caja-partido">
                                <div class="row">
                                    <div class="col-4">
                                        <img src="/images/<?php echo $resultado->bandera_equipo1; ?>">
                                        <span><?php echo $resultado->nombre_equipo1; ?></span>
                                    </div>
                                    <div class="col-2 margen_valor"><?php echo $resultado->valor1; ?></div>
                                    <div class="col-2 margen_valor"><?php echo $resultado->valor2; ?></div>
                                    <div class="col-4">
                                        <img src="/images/<?php echo $resultado->bandera_equipo2; ?>">
                                        <span><?php echo $resultado->nombre_equipo2; ?></span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    <?php endforeach ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div style="display: none;">
	<iframe src="/carga/calcular_puntos.php?v=<?php echo microtime(); ?>"></iframe>
</div>