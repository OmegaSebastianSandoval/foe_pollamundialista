<?php

/**
 * clase que genera la insercion y edicion  de resultado en la base de datos
 */
class Administracion_Model_DbTable_Resultados extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'resultados';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un resultado y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data)
	{
		$usuario = $data['usuario'];
		$partido = $data['partido'];
		$valor1 = $data['valor1'];
		$valor2 = $data['valor2'];
		$ganador = $data['ganador'];
		$fecha = $data['fecha'];
		$query = "INSERT INTO resultados( usuario, partido, valor1, valor2, ganador, fecha) VALUES ( '$usuario', '$partido', '$valor1', '$valor2', '$ganador', '$fecha')";
		$res = $this->_conn->query($query);
		return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un resultado  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data, $id)
	{

		$usuario = $data['usuario'];
		$partido = $data['partido'];
		$valor1 = $data['valor1'];
		$valor2 = $data['valor2'];
		$ganador = $data['ganador'];
		$fecha = $data['fecha'];
		$query = "UPDATE resultados SET  usuario = '$usuario', partido = '$partido', valor1 = '$valor1', valor2 = '$valor2', ganador = '$ganador', fecha = '$fecha' WHERE id = '" . $id . "'";
		$res = $this->_conn->query($query);
	}


	public function agregar($data)
	{
		$usuario = $data['usuario'];
		$partido = $data['partido'];
		$valor1 = $data['valor1'];
		$valor2 = $data['valor2'];
		$ganador = $data['ganador'];
		$fecha = $data['fecha'];

		$query = "DELETE FROM resultados WHERE partido = '$partido' AND usuario='$usuario' ";
		$res = $this->_conn->query($query);

		$query = "INSERT INTO resultados( usuario, partido, valor1, valor2, ganador, fecha) VALUES ( '$usuario', '$partido', '$valor1', '$valor2', '$ganador', '$fecha')";
		$res = $this->_conn->query($query);
		return mysqli_insert_id($this->_conn->getConnection());
	}

	public function getUsuarios($filters = '', $order = '')
	{
		$filter = '';
		if ($filters != '') {
			$filter = ' WHERE ' . $filters;
		}
		$orders = "";
		if ($order != '') {
			$orders = ' ORDER BY ' . $order;
		}
		$select = 'SELECT usuario AS user_id FROM ' . $this->_name . ' GROUP BY usuario  ' . $filter . '  ' . $orders;
		$res = $this->_conn->query($select)->fetchAsObject();
		return $res;
	}
	public function getAllResults()
	{

		$select = 'SELECT
		r.usuario AS user_id,
		r.*,
		o.a1 AS octavos_a1,
		o.a2 AS octavos_a2,
		o.b1 AS octavos_b1,
		o.b2 AS octavos_b2,
		o.c1 AS octavos_c1,
		o.c2 AS octavos_c2,
		o.d1 AS octavos_d1,
		o.d2 AS octavos_d2,
		o .e1 AS octavos_e1,
		o .e2 AS octavos_e2,
		o.f1 AS octavos_f1,
		o.f2 AS octavos_f2,
		o.g1 AS octavos_g1,
		o.g2 AS octavos_g2,
		o.h1 AS octavos_h1,
		o.h2 AS octavos_h2,
		c .e1 AS cuartos_e1,
		c .e2 AS cuartos_e2,
		c .e3 AS cuartos_e3,
		c .e4 AS cuartos_e4,
		c .e5 AS cuartos_e5,
		c .e6 AS cuartos_e6,
		c .e7 AS cuartos_e7,
		c .e8 AS cuartos_e8,
		s .e1 AS semis_e1,
		s .e2 AS semis_e2,
		s .e3 AS semis_e3,
		s .e4 AS semis_e4,
		f.campeon AS final_campeon,
		f.subcampeon AS final_subcampeon,
		f.tercero AS final_tercero,
		f.cuarto AS final_cuarto,
		ot.valla AS otros_valla,
		ot.goleador AS otros_goleador,
		p.fase,
		p.valor1 AS marcador1Partido,
		p.valor2 AS marcador2Partido,
		p.ganador AS ganadorPartido
	FROM
		resultados r
	JOIN partidos p ON
		r.partido = p.id
	JOIN(
		SELECT DISTINCT
			usuario
		FROM
			resultados
	) u
	ON
		r.usuario = u.usuario
	LEFT JOIN octavos o ON
		o.usuario = u.usuario
	LEFT JOIN cuartos c ON
		c.usuario = u.usuario
	LEFT JOIN semis s ON
		s.usuario = u.usuario
	LEFT JOIN final f ON
		f.usuario = u.usuario
	LEFT JOIN otros ot ON
		ot.usuario = u.usuario
	ORDER BY
		r.usuario';
		$res = $this->_conn->query($select)->fetchAsObject();
		return $res;
	}
}
