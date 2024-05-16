
<?php
function fecha_texto($fecha){
	$dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
	$meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
	$diaw = date("w",strtotime($fecha));
	$dia = date("d",strtotime($fecha));
	$mes = date("n",strtotime($fecha));
	$anio = date("Y",strtotime($fecha));

	//return $dias[$diaw]." ".$dia." de ".$meses[$mes-1]. " del ".$anio;
	//Salida: Viernes 24 de Febrero del 2012
	return $dias[$diaw]." ".$dia." de ".$meses[$mes-1];
}
function convertir_hora($hora){
	return date("g:i A",strtotime($hora));
}

function diferenciaHoras($fecha) {
	// Crear objetos DateTime para las fechas
	$fechaDada = new DateTime($fecha);
	$fechaActual = new DateTime("now");

	// Calcular la diferencia usando el método diff
	$diferencia = $fechaActual->diff($fechaDada);

	// Convertir la diferencia a horas totales (incluyendo días)
	$horas = $diferencia->days * 24 + $diferencia->h + $diferencia->i / 60 + $diferencia->s / 3600;

	// Retornar la diferencia de horas redondeada a dos decimales
	return round($horas, 2);
}

// // Ejemplo de uso
// echo "diferencia en horas desde 2024-06-21 19:00:00: ".diferenciaHoras("2024-06-21 19:00:00");

?>