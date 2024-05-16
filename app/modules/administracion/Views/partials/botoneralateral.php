<ul>
  <?php if (Session::getInstance()->get('kt_login_level') == '1') { ?>
    <li <?php if ($this->botonpanel == 1) { ?>class="activo" <?php } ?>>
      <a href="/administracion/panel">
        <i class="fas fa-info-circle"></i>
        Información Página
      </a>
    </li>
  <?php } ?>
  <li <?php if ($this->botonpanel == 2) { ?>class="activo" <?php } ?>>
    <a href="/administracion/publicidad">
      <i class="far fa-images"></i>
      Administrar Publicidad
    </a>
  </li>
  <li <?php if ($this->botonpanel == 3) { ?>class="activo" <?php } ?>>
    <a href="/administracion/contenido">
      <i class="fas fa-file-invoice"></i>
      Administrar Contenidos
    </a>
  </li>
  <li <?php if ($this->botonpanel == 14) { ?>class="activo" <?php } ?>>
    <a href="/administracion/clasificados">
      <i class="fas fa-file-invoice"></i>
      Administrar Clasificados
    </a>
  </li>
  <li <?php if ($this->botonpanel == 12) { ?>class="activo" <?php } ?>>
    <a href="/administracion/config">
      <i class="fas fa-file-invoice"></i>
      Administrar Configuración
    </a>
  </li>
  <li <?php if ($this->botonpanel == 11) { ?>class="activo" <?php } ?>>
    <a href="/administracion/partidos">
      <i class="fas fa-file-invoice"></i>
      Administrar Partidos
    </a>
  </li>
  </li>
  <li <?php if ($this->botonpanel == 13) { ?>class="activo" <?php } ?>>
    <a href="/administracion/grupos">
      <i class="fas fa-file-invoice"></i>
      Administrar Grupos
    </a>
  </li>
  <li <?php if ($this->botonpanel == 5) { ?>class="activo" <?php } ?>>
    <a href="/administracion/fases">
      <i class="fas fa-file-invoice"></i>
      Administrar Fases
    </a>
  </li>

  <li <?php if ($this->botonpanel == 6) { ?>class="activo" <?php } ?>>
    <a href="/administracion/equipos">
      <i class="fas fa-file-invoice"></i>
      Administrar Equipos
    </a>
  </li>
  <li <?php if ($this->botonpanel == 9) { ?>class="activo" <?php } ?>>
    <a href="/administracion/archivo">
      <i class="fas fa-file-invoice"></i>
      Importar Cédulas
    </a>
  </li>
  <li <?php if ($this->botonpanel == 10) { ?>class="activo" <?php } ?>>
    <a href="/administracion/cedulas">
      <i class="fas fa-file-invoice"></i>
      Cédulas
    </a>
  </li>
  <li <?php if ($this->botonpanel == 8) { ?>class="activo" <?php } ?>>
    <a href="/administracion/usuariospolla">
      <i class="fas fa-file-invoice"></i>
      Administrar Usuarios Polla
    </a>
  </li>
  <li <?php if ($this->botonpanel == 8) { ?>class="activo" <?php } ?>>
    <a href="/administracion/usuariospolla/exportar" target="_blank">
      <i class="fas fa-file-invoice"></i>
      Exportar Usuarios Polla
    </a>
  </li>
  <?php if (Session::getInstance()->get('kt_login_level') == '1') { ?>
    <li <?php if ($this->botonpanel == 4) { ?>class="activo" <?php } ?>>
      <a href="/administracion/usuario">
        <i class="fas fa-users"></i>
        Administrar Usuarios
      </a>
    </li>
  <?php } ?>
</ul>