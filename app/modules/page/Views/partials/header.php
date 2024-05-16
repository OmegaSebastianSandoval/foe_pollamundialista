<section class="header-top ">
    <div class="container">
        <?php if ($this->infopage->info_pagina_telefono) { ?>
            <span class="info-header">

                <div class="d-flex align-items-center gap-2 ">
                    <?php if (!$_SESSION['kt_login_id']) { ?>

                        <a href="/page/inscribase" class="enlace-header <?php echo $this->botonactivo == 2 ? 'active' : '' ?>">
                            <i class="fa-solid fa-list-check"></i>
                            Inscríbase
                        </a>
                    <?php } ?>

                    <a href="/page/premios" class="enlace-header <?php echo $this->botonactivo == 7 ? 'active' : '' ?>">
                        <i class="fa-solid fa-trophy"></i>
                        Premios
                    </a>
                    <a href="/page/terminos" class="enlace-header <?php echo $this->botonactivo == 8 ? 'active' : '' ?>">
                        <i class="fa-solid fa-clipboard-list"></i>
                        Términos
                    </a>

                    <div class="vr bg-white"></div>

                    <?php echo $this->infopage->info_pagina_telefono ?>
                    <div class="vr bg-white"></div>

                    <div class="nav-social-media justify-content-center">
                        <?php if ($this->infopage->info_pagina_youtube) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_youtube ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-youtube"></i>
                            </a>

                        <?php } ?>
                        <?php if ($this->infopage->info_pagina_facebook) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_facebook ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-facebook-f"></i>
                            </a>


                        <?php } ?>

                        <?php if ($this->infopage->info_pagina_twitter) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_twitter ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-twitter"></i>
                            </a>


                        <?php } ?>
                        <?php if ($this->infopage->info_pagina_linkedin) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_linkedin ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-linkedin-in"></i>
                            </a>


                        <?php } ?>
                        <?php if ($this->infopage->info_pagina_instagram) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_instagram ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-instagram"></i>
                            </a>


                        <?php } ?>
                        <?php if ($this->infopage->info_pagina_pinterest) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_pinterest ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-pinterest-p"></i>
                            </a>


                        <?php } ?>

                        <?php if ($this->infopage->info_pagina_flickr) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_flickr ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-flickr"></i>
                            </a>


                        <?php } ?>
                        <?php if ($this->infopage->info_pagina_tiktok) { ?>
                            <a href="<?php echo $this->infopage->info_pagina_tiktok ?>" target="_blank" style="color:<?php echo $this->partials->partials_color_iconos ?>">
                                <i class="fa-brands fa-tiktok"></i>
                            </a>


                        <?php } ?>

                    </div>
                </div>
                <style>
                    p {
                        margin-bottom: 0;
                    }
                </style>
            </span>


        <?php } ?>


    </div>
</section>
<section class="header-inferior">
    <div class="container">

        <div class="wrapper">
            <!-- Brand Image -->
            <a href="/" class="logo"><img src="/skins/page/images/logofoe.png" alt=""></a>
            <!-- <i class="  fas fa-bars"></i> -->
            <label class="hamburger">
                <input type="checkbox" id="menuCheckbox">
                <svg viewBox="0 0 32 32">
                    <path class="line line-top-bottom" d="M27 10 13 10C10.8 10 9 8.2 9 6 9 3.5 10.8 2 13 2 15.2 2 17 3.8 17 6L17 26C17 28.2 18.8 30 21 30 23.2 30 25 28.2 25 26 25 23.8 23.2 22 21 22L7 22">
                    </path>
                    <path class="line" d="M7 16 27 16"></path>
                </svg>
            </label>
            <!-- Navbar -->
            <nav class="nav-menus">
                <li class="<?php echo $this->botonactivo == 1 ? 'active' : '' ?>"><a href="/" class="nav-l"> Inicio</a></li>
                <?php if (!$_SESSION['kt_login_id']) { ?>
                    <li class="<?php echo $this->botonactivo == 2 ? 'active' : '' ?>"><a href="/page/inscribase" class="nav-l only-phone"> Inscríbase</a></li>
                <?php } ?>


                <li class="<?php echo $this->botonactivo == 7 ? 'active' : '' ?>"><a href="/page/premios" class="nav-l only-phone"> Premios</a></li>
                <li class="<?php echo $this->botonactivo == 8 ? 'active' : '' ?>"><a href="/page/terminos" class="nav-l only-phone"> Términos</a></li>


                <li class="<?php echo $this->botonactivo == 2 ? 'active' : '' ?>"><a href="/page/jugar/" class="nav-l">Jugar Polla</a></li>
                <li class="<?php echo $this->botonactivo == 4 ? 'active' : '' ?>"><a href="/page/partidos/" class="nav-l"> Partidos</a></li>
                <li class="<?php echo $this->botonactivo == 3 ? 'active' : '' ?>"><a href="/page/grupos/" class="nav-l">Grupos</a></li>

                <li class="<?php echo $this->botonactivo == 5 ? 'active' : '' ?>"><a href="/page/clasificacion" class="nav-l">Clasificación</a></li>


            </nav>
        </div>
    </div>

</section>

<!-- Toggle jQuery for Small Devices -->
<script>
    // Obtén una referencia al elemento del checkbox y el elemento de nav-menus
    const checkbox = document.getElementById('menuCheckbox');
    const navMenus = document.querySelector('.nav-menus');

    // Agrega un listener para el evento "change" del checkbox
    checkbox.addEventListener('change', function() {
        if (checkbox.checked) {
            // Si el checkbox está marcado, agrega la clase "active" a nav-menus
            navMenus.classList.add('active');
        } else {
            // Si el checkbox no está marcado, quita la clase "active" de nav-menus
            navMenus.classList.remove('active');
        }
    });
</script>

<?php if ($_GET['debug1'] == "1") { ?>
    <style>
        header {
            display: none !important;
        }
    </style>
<?php } ?> 
