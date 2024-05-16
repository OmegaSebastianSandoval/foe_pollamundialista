var videos = [];
$(document).ready(function () {
  $(".dropdown-toggle").dropdown();
  $(".carouselsection").carousel({
    quantity: 4,
    sizes: {
      900: 3,
      500: 1,
    },
  });

  $(".banner-video-youtube").each(function () {
    // console.log($(this).attr('data-video'));
    const datavideo = $(this).attr("data-video");
    const idvideo = $(this).attr("id");
    const playerDefaults = {
      autoplay: 0,
      autohide: 1,
      modestbranding: 0,
      rel: 0,
      showinfo: 0,
      controls: 0,
      disablekb: 1,
      enablejsapi: 0,
      iv_load_policy: 3,
    };
    const video = {
      videoId: datavideo,
      suggestedQuality: "hd1080",
    };
    videos[videos.length] = new YT.Player(idvideo, {
      videoId: datavideo,
      playerVars: playerDefaults,
      events: {
        onReady: onAutoPlay,
        onStateChange: onFinish,
      },
    });
  });

  $(function () {
    $(".doc-item-theme").on("click", function () {
      let id = $(this).attr("data-id");
      console.log(id);
      $("#" + id).slideToggle();
    });
  });

  function onAutoPlay(event) {
    event.target.playVideo();
    event.target.mute();
  }

  function onFinish(event) {
    if (event.data === 0) {
      event.target.playVideo();
    }
  }
  const tooltipTriggerList = document.querySelectorAll(
    '[data-bs-toggle="tooltip"]'
  );
  const tooltipList = [...tooltipTriggerList].map(
    (tooltipTriggerEl) => new bootstrap.Tooltip(tooltipTriggerEl)
  );
});
/* DESHABILITAR EQUIPO */

document.addEventListener("DOMContentLoaded", () => {
  const selects = document.querySelectorAll(".select-equipo");

  // Función para actualizar los estados de los 'select'
  function updateSelectOptions() {
    // Obtener todos los valores seleccionados
    const selectedValues = Array.from(selects)
      .map((s) => s.value)
      .filter(Boolean);

    // Actualizar cada select
    selects.forEach((s) => {
      const options = s.options;
      for (let option of options) {
        if (option.value && option.value !== s.value) {
          // Deshabilitar la opción si ya está seleccionada en otro select
          option.disabled = selectedValues.includes(option.value);
        }
      }
    });
  }

  // Asignar el manejador de eventos y actualizar inmediatamente
  selects.forEach((select) => {
    select.addEventListener("change", updateSelectOptions);
  });

  // Llamar a la función inmediatamente para inicializar los estados de los 'select'
  updateSelectOptions();
});
