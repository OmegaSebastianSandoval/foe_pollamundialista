<?php

/**
 *
 */

class Page_gruposController extends Page_mainController
{

	public $botonactivo = 3;

	public function indexAction()
	{
		$this->_view->contenido = $this->template->getContentseccion(5);



		// Modelos para manejar los datos de partidos, equipos y grupos
		$partidoModel = new Administracion_Model_DbTable_Partidos();
		$equipoModel = new Administracion_Model_DbTable_Equipos();
		$grupoModel = new Administracion_Model_DbTable_Grupos();

		// Obtener todos los partidos ordenados por fecha y hora
		$partidos = $partidoModel->getPartidos("", "fecha ASC, hora ASC");

		// Obtiene todos los grupos sin filtros adicionales
		$this->_view->grupos = $grupoModel->getList("", "");

		// Obtiene todos los equipos ordenados por nombre
		$equipos = $equipoModel->getList("", "nombre ASC");

		// Procesar cada equipo para calcular sus estadísticas
		foreach ($equipos as $equipo) {
			$id = $equipo->id;

			// Calcular Partidos Jugados (PJ)
			$pjs = $partidoModel->getList(" (equipo1 = '$id' OR equipo2 = '$id') AND ganador!=0 AND fase=1 ", "");
			$pj = count($pjs);
			$equipoModel->actualizar_equipo("pj", $pj, $id);

			// Calcular Partidos Ganados (PG)
			$pgs = $partidoModel->getList(" (equipo1 = '$id' OR equipo2 = '$id') AND ganador='$id' AND fase=1 ", "");
			$pg = count($pgs);
			$equipoModel->actualizar_equipo("pg", $pg, $id);

			// Calcular Partidos Empatados (PE)
			$pes = $partidoModel->getList(" (equipo1 = '$id' OR equipo2 = '$id') AND ganador='-1' AND fase=1 ", "");
			$pe = count($pes);
			$equipoModel->actualizar_equipo("pe", $pe, $id);

			// Calcular Partidos Perdidos (PP)
			$pps = $partidoModel->getList(" (equipo1 = '$id' OR equipo2 = '$id') AND ganador!='$id' AND ganador!='-1' AND ganador>0 AND fase=1 ", "");
			$pp = count($pps);
			$equipoModel->actualizar_equipo("pp", $pp, $id);

			// Calcular Goles a Favor (GF)
			$gf = 0;
			$gf1 = $partidoModel->get_goles(" equipo1 = '$id' AND ganador!='0' AND fase=1 ", "");
			$gf2 = $partidoModel->get_goles(" equipo2 = '$id' AND ganador!='0' AND fase=1 ", "");
			$gf = $gf1[0]->total_m1 + $gf2[0]->total_m2;
			$equipoModel->actualizar_equipo("gf", $gf, $id);

			// Calcular Goles Contra (GC)
			$gc = 0;
			$gc1 = $partidoModel->get_goles(" equipo1 = '$id' AND ganador!='0' AND fase=1 ", "");
			$gc2 = $partidoModel->get_goles(" equipo2 = '$id' AND ganador!='0' AND fase=1 ", "");
			$gc = $gc1[0]->total_m2 + $gc2[0]->total_m1;
			$equipoModel->actualizar_equipo("gc", $gc, $id);

			// Calcular Gol Diferencia (GD)
			$gd = $gf - $gc;
			$equipoModel->actualizar_equipo("gd", $gd, $id);

			// Calcular Puntos (PTS)
			$pts = (3 * $pg) + (1 * $pe);
			$equipoModel->actualizar_equipo("puntos", $pts, $id);
		}

		// Asignar equipos ordenados para la vista
		$this->_view->equipos = $equipoModel->getList(" grupo IS NOT NULL ", "puntos DESC, fp DESC, gd DESC, gf DESC, gc ASC, pj ASC, nombre ASC");
	}
}
