<div class="container pb-4">
  <br><br>
  <table class="tabla" width="100%" border="0" cellspacing="0" cellpadding="0">
    <tr>
      <td>
        <table width="100%" border="0" cellspacing="0" cellpadding="0">
          <tr>
            <h1 class="titulo">Registro de usuario</h1>

          </tr>
        </table>
      </td>
    </tr>
    <tr>
      <td>
        <br><br>

        <div align="center"><span class="textoNegro"><strong>La participaci&oacute;n en la polla mundialista virtual del Fondo de Empleados BBVA, tiene un costo de $ 50.719, que se cargaran por la L&iacute;nea de Menor Cuant&iacute;a a un inter&eacute;s mensual de 1.4 %, los cuales ser&aacute;n descontados en 1 o 2 cuotas seg&uacute;n su solicitud.</strong></span></div>
      </td>
    </tr>
    <tr>
      <td>
        <br>

        <p align="justify" class="textoNegro">Yo <span style="text-decoration:underline;"><?php echo $_SESSION['kt_login_name']; ?></span> identificado (a) con cedula de ciudadan&iacute;a n&uacute;mero <span style="text-decoration:underline;"><?php echo $_SESSION['kt_login_user']; ?></span> de <span style="text-decoration:underline;"><?php echo $_SESSION['ciudad']; ?></span>, autorizo al pagador de la empresa donde laboro y que determina mi vinculo de asociaci&oacute;n con el Fondo de Empleados BBVA, a descontar por n&oacute;mina o d&eacute;bito autom&aacute;tico el valor de <span style="text-decoration:underline;"> $ <?php echo number_format($_SESSION['valor']); ?></span> en ( <span style="text-decoration:underline;"><?php echo $_SESSION['cuotas']; ?></span> ) cuotas mensuales. En caso de m&iacute; desvinculaci&oacute;n laboral, autorizo descontar de mi liquidaci&oacute;n final de prestaciones sociales y dem&aacute;s beneficios que me liquiden a mi favor. As&iacute; mismo en caso de no presentarse el descuento en mi desprendible de n&oacute;mina autorizo descontar el saldo de mi cuenta de n&oacute;mina registrada en el FOE. En el caso de asociados independientes se cargara en su pr&oacute;xima cuenta de cobro.</p>
      </td>
    </tr>

    <tr>


      <td>
        <br>

        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="autorizaciondescuento" required checked disabled>
          <label class="form-check-label" for="autorizaciondescuento">
            Autorización de descuento de nómina
          </label>

        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="autorizacionhabeas" required checked disabled>

          <label class="form-check-label" for="autorizacionhabeas">
            <a href="https://www.foebbva.com/page/proteccion" target="_blank">
              Autorización de habeas data
            </a>
          </label>

        </div>
        <div class="form-check">
          <input class="form-check-input" type="checkbox" value="" id="autorizacionreglamento" required checked disabled>
          <label class="form-check-label" for="autorizacionreglamento">
            <a href="/page/terminos" target="_blank">
              Autorización del reglamento de la polla COPA AMÉRICA
            </a>

          </label>
        </div>
      </td>

    </tr>
  </table>


  <div class="text-center"><a href="/page/inscribase/confirmar2"><button class="button mt-4" type="submit">Acepto términos y condiciones</button></a></div>
</div>


<style>
  @media (max-width:771px) {
    .contenedor-general {
      padding-top: 0;

    }
  }



  h1 {

    margin-top: 10px !important;
  }

  .header-puntos .info {
    display: none !important;
  }

  .tabla {
    max-width: 900px !important;
    margin: 0 auto !important;
  }

  .textoNegro span {
    font-weight: bold;
  }
</style>