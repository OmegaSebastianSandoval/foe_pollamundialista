<?php 
/**
* clase que genera la insercion y edicion  de partido en la base de datos
*/
class Administracion_Model_DbTable_Partidos extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'partidos';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un partido y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$numero = $data['numero'];
		$equipo1 = $data['equipo1'];
		$equipo2 = $data['equipo2'];
		$fecha = $data['fecha'];
		$hora = $data['hora'];
		$fase = $data['fase'];
		$valor1 = $data['valor1'];
		$valor2 = $data['valor2'];
		$ganador = $data['ganador'];
		$query = "INSERT INTO partidos( numero, equipo1, equipo2, fecha, hora, fase, valor1, valor2, ganador) VALUES ( '$numero', '$equipo1', '$equipo2', '$fecha', '$hora', '$fase', '$valor1', '$valor2', '$ganador')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un partido  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$numero = $data['numero'];
		$equipo1 = $data['equipo1'];
		$equipo2 = $data['equipo2'];
		$fecha = $data['fecha'];
		$hora = $data['hora'];
		$fase = $data['fase'];
		$valor1 = $data['valor1'];
		$valor2 = $data['valor2'];
		$ganador = $data['ganador'];
		$query = "UPDATE partidos SET  numero = '$numero', equipo1 = '$equipo1', equipo2 = '$equipo2', fecha = '$fecha', hora = '$hora', fase = '$fase', valor1 = '$valor1', valor2 = '$valor2', ganador = '$ganador' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}


	public function getFechas($filters,$order)
    {
        $filter = '';
        if($filters != ''){
            $filter = ' WHERE '.$filters;
        }
        $orders ="";
        if($order != ''){
            $orders = ' ORDER BY '.$order;
        }
        $select = 'SELECT fecha FROM '.$this->_name.' GROUP BY fecha '.$filter.' '.$orders;
        //echo $select."<br>";
        $res = $this->_conn->query( $select )->fetchAsObject();
        return $res;
    }
     public function getFases($filters,$order)
    {
        $filter = '';
        if($filters != ''){
            $filter = ' WHERE '.$filters;
        }
        $orders ="";
        if($order != ''){
            $orders = ' ORDER BY '.$order;
        }
        $select = 'SELECT fase FROM '.$this->_name.' GROUP BY fase '.$filter.' '.$orders;
        //echo $select."<br>";
        $res = $this->_conn->query( $select )->fetchAsObject();
        return $res;
    }

    public function getPartidos($filters,$order)
    {
        $filter = '';
        if($filters != ''){
            $filter = ' WHERE '.$filters;
        }
        $orders ="";
        if($order != ''){
            $orders = ' ORDER BY '.$order;
        }
        $select = 'SELECT partidos.*, equipos.bandera AS bandera_equipo1, equipos2.bandera AS bandera_equipo2,  equipos.codigo AS codigo1, equipos2.codigo AS codigo2, equipos.nombre AS nombre_equipo1 , equipos2.nombre AS nombre_equipo2 FROM ((( '.$this->_name.' LEFT JOIN equipos ON equipos.id = partidos.equipo1 ) LEFT JOIN equipos AS equipos2 ON equipos2.id = partidos.equipo2) LEFT JOIN equipos AS equipos3 ON equipos3.id = partidos.ganador) LEFT JOIN fases ON fases.id = partidos.fase   '.$filter.' '.$orders.'';
        $res = $this->_conn->query( $select )->fetchAsObject();
        return $res;
    }

    public function get_goles($filters,$order)
    {
        $filter = '';
        if($filters != ''){
            $filter = ' WHERE '.$filters;
        }
        $orders ="";
        if($order != ''){
            $orders = ' ORDER BY '.$order;
        }
        $select = 'SELECT SUM(valor1) AS total_m1, SUM(valor2) AS total_m2 FROM '.$this->_name.' '.$filter.' '.$orders.'';
        $res = $this->_conn->query( $select )->fetchAsObject();
        return $res;
    }

}