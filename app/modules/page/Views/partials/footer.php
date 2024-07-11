<section class="container">

        <p>Todos los derechos reservados</p>

</section>
<?php if ($_SESSION["kt_login_id"] > 1) { ?>
        <script>
                let inactivityTime = function() {
                        let timeoutWarning, timeoutLogout;

                        function resetTimers() {
                                clearTimeout(timeoutWarning);
                                clearTimeout(timeoutLogout);

                                // Alerta a los 4 minutos (240000 ms)
                                timeoutWarning = setTimeout(() => {
                                        alert("Tienes un minuto para interactuar antes de cerrar la sesión.");
                                }, 240000);

                                // Cierre de sesión a los 5 minutos (300000 ms)
                                timeoutLogout = setTimeout(() => {
                                        window.location.href = '/page/index/logout'; // Redirige a la página de cierre de sesión
                                }, 300000);
                        }

                        function setupTimers() {
                                window.addEventListener('mousemove', resetTimers);
                                window.addEventListener('mousedown', resetTimers);
                                window.addEventListener('keypress', resetTimers);
                                window.addEventListener('touchmove', resetTimers);

                                resetTimers(); // Inicializa los temporizadores
                        }

                        setupTimers();
                };

                window.onload = inactivityTime;
        </script>
<?php } ?>