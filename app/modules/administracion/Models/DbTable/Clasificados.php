<?php 
/**
* clase que genera la insercion y edicion  de clasificado en la base de datos
*/
class Administracion_Model_DbTable_Clasificados extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'clasificados';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'clasificado_id';

	/**
	 * insert recibe la informacion de un clasificado y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$clasificado_octavos_a1 = $data['clasificado_octavos_a1'];
		$clasificado_octavos_a2 = $data['clasificado_octavos_a2'];
		$clasificado_octavos_b1 = $data['clasificado_octavos_b1'];
		$clasificado_octavos_b2 = $data['clasificado_octavos_b2'];
		$clasificado_octavos_c1 = $data['clasificado_octavos_c1'];
		$clasificado_octavos_c2 = $data['clasificado_octavos_c2'];
		$clasificado_octavos_d1 = $data['clasificado_octavos_d1'];
		$clasificado_octavos_d2 = $data['clasificado_octavos_d2'];
		$clasificado_octavos_e1 = $data['clasificado_octavos_e1'];
		$clasificado_octavos_e2 = $data['clasificado_octavos_e2'];
		$clasificado_octavos_f1 = $data['clasificado_octavos_f1'];
		$clasificado_octavos_f2 = $data['clasificado_octavos_f2'];
		$clasificado_octavos_g1 = $data['clasificado_octavos_g1'];
		$clasificado_octavos_g2 = $data['clasificado_octavos_g2'];
		$clasificado_octavos_h1 = $data['clasificado_octavos_h1'];
		$clasificado_octavos_h2 = $data['clasificado_octavos_h2'];
		$clasificado_cuartos_e1 = $data['clasificado_cuartos_e1'];
		$clasificado_cuartos_e2 = $data['clasificado_cuartos_e2'];
		$clasificado_cuartos_e3 = $data['clasificado_cuartos_e3'];
		$clasificado_cuartos_e4 = $data['clasificado_cuartos_e4'];
		$clasificado_cuartos_e5 = $data['clasificado_cuartos_e5'];
		$clasificado_cuartos_e6 = $data['clasificado_cuartos_e6'];
		$clasificado_cuartos_e7 = $data['clasificado_cuartos_e7'];
		$clasificado_cuartos_e8 = $data['clasificado_cuartos_e8'];
		$clasificado_semis_e1 = $data['clasificado_semis_e1'];
		$clasificado_semis_e2 = $data['clasificado_semis_e2'];
		$clasificado_semis_e3 = $data['clasificado_semis_e3'];
		$clasificado_semis_e4 = $data['clasificado_semis_e4'];
		$clasificado_cuarto = $data['clasificado_cuarto'];
		$clasificado_tercero = $data['clasificado_tercero'];
		$clasificado_subcampeon = $data['clasificado_subcampeon'];
		$clasificado_campeon = $data['clasificado_campeon'];
		$clasificado_jugador = $data['clasificado_jugador'];
		$clasificado_valla = $data['clasificado_valla'];
		$query = "INSERT INTO clasificados( clasificado_octavos_a1, clasificado_octavos_a2, clasificado_octavos_b1, clasificado_octavos_b2, clasificado_octavos_c1, clasificado_octavos_c2, clasificado_octavos_d1, clasificado_octavos_d2, clasificado_octavos_e1, clasificado_octavos_e2, clasificado_octavos_f1, clasificado_octavos_f2, clasificado_octavos_g1, clasificado_octavos_g2, clasificado_octavos_h1, clasificado_octavos_h2, clasificado_cuartos_e1, clasificado_cuartos_e2, clasificado_cuartos_e3, clasificado_cuartos_e4, clasificado_cuartos_e5, clasificado_cuartos_e6, clasificado_cuartos_e7, clasificado_cuartos_e8, clasificado_semis_e1, clasificado_semis_e2, clasificado_semis_e3, clasificado_semis_e4, clasificado_cuarto, clasificado_tercero, clasificado_subcampeon, clasificado_campeon, clasificado_jugador, clasificado_valla) VALUES ( '$clasificado_octavos_a1', '$clasificado_octavos_a2', '$clasificado_octavos_b1', '$clasificado_octavos_b2', '$clasificado_octavos_c1', '$clasificado_octavos_c2', '$clasificado_octavos_d1', '$clasificado_octavos_d2', '$clasificado_octavos_e1', '$clasificado_octavos_e2', '$clasificado_octavos_f1', '$clasificado_octavos_f2', '$clasificado_octavos_g1', '$clasificado_octavos_g2', '$clasificado_octavos_h1', '$clasificado_octavos_h2', '$clasificado_cuartos_e1', '$clasificado_cuartos_e2', '$clasificado_cuartos_e3', '$clasificado_cuartos_e4', '$clasificado_cuartos_e5', '$clasificado_cuartos_e6', '$clasificado_cuartos_e7', '$clasificado_cuartos_e8', '$clasificado_semis_e1', '$clasificado_semis_e2', '$clasificado_semis_e3', '$clasificado_semis_e4', '$clasificado_cuarto', '$clasificado_tercero', '$clasificado_subcampeon', '$clasificado_campeon', '$clasificado_jugador', '$clasificado_valla')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un clasificado  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$clasificado_octavos_a1 = $data['clasificado_octavos_a1'];
		$clasificado_octavos_a2 = $data['clasificado_octavos_a2'];
		$clasificado_octavos_b1 = $data['clasificado_octavos_b1'];
		$clasificado_octavos_b2 = $data['clasificado_octavos_b2'];
		$clasificado_octavos_c1 = $data['clasificado_octavos_c1'];
		$clasificado_octavos_c2 = $data['clasificado_octavos_c2'];
		$clasificado_octavos_d1 = $data['clasificado_octavos_d1'];
		$clasificado_octavos_d2 = $data['clasificado_octavos_d2'];
		$clasificado_octavos_e1 = $data['clasificado_octavos_e1'];
		$clasificado_octavos_e2 = $data['clasificado_octavos_e2'];
		$clasificado_octavos_f1 = $data['clasificado_octavos_f1'];
		$clasificado_octavos_f2 = $data['clasificado_octavos_f2'];
		$clasificado_octavos_g1 = $data['clasificado_octavos_g1'];
		$clasificado_octavos_g2 = $data['clasificado_octavos_g2'];
		$clasificado_octavos_h1 = $data['clasificado_octavos_h1'];
		$clasificado_octavos_h2 = $data['clasificado_octavos_h2'];
		$clasificado_cuartos_e1 = $data['clasificado_cuartos_e1'];
		$clasificado_cuartos_e2 = $data['clasificado_cuartos_e2'];
		$clasificado_cuartos_e3 = $data['clasificado_cuartos_e3'];
		$clasificado_cuartos_e4 = $data['clasificado_cuartos_e4'];
		$clasificado_cuartos_e5 = $data['clasificado_cuartos_e5'];
		$clasificado_cuartos_e6 = $data['clasificado_cuartos_e6'];
		$clasificado_cuartos_e7 = $data['clasificado_cuartos_e7'];
		$clasificado_cuartos_e8 = $data['clasificado_cuartos_e8'];
		$clasificado_semis_e1 = $data['clasificado_semis_e1'];
		$clasificado_semis_e2 = $data['clasificado_semis_e2'];
		$clasificado_semis_e3 = $data['clasificado_semis_e3'];
		$clasificado_semis_e4 = $data['clasificado_semis_e4'];
		$clasificado_cuarto = $data['clasificado_cuarto'];
		$clasificado_tercero = $data['clasificado_tercero'];
		$clasificado_subcampeon = $data['clasificado_subcampeon'];
		$clasificado_campeon = $data['clasificado_campeon'];
		$clasificado_jugador = $data['clasificado_jugador'];
		$clasificado_valla = $data['clasificado_valla'];
		$query = "UPDATE clasificados SET  clasificado_octavos_a1 = '$clasificado_octavos_a1', clasificado_octavos_a2 = '$clasificado_octavos_a2', clasificado_octavos_b1 = '$clasificado_octavos_b1', clasificado_octavos_b2 = '$clasificado_octavos_b2', clasificado_octavos_c1 = '$clasificado_octavos_c1', clasificado_octavos_c2 = '$clasificado_octavos_c2', clasificado_octavos_d1 = '$clasificado_octavos_d1', clasificado_octavos_d2 = '$clasificado_octavos_d2', clasificado_octavos_e1 = '$clasificado_octavos_e1', clasificado_octavos_e2 = '$clasificado_octavos_e2', clasificado_octavos_f1 = '$clasificado_octavos_f1', clasificado_octavos_f2 = '$clasificado_octavos_f2', clasificado_octavos_g1 = '$clasificado_octavos_g1', clasificado_octavos_g2 = '$clasificado_octavos_g2', clasificado_octavos_h1 = '$clasificado_octavos_h1', clasificado_octavos_h2 = '$clasificado_octavos_h2', clasificado_cuartos_e1 = '$clasificado_cuartos_e1', clasificado_cuartos_e2 = '$clasificado_cuartos_e2', clasificado_cuartos_e3 = '$clasificado_cuartos_e3', clasificado_cuartos_e4 = '$clasificado_cuartos_e4', clasificado_cuartos_e5 = '$clasificado_cuartos_e5', clasificado_cuartos_e6 = '$clasificado_cuartos_e6', clasificado_cuartos_e7 = '$clasificado_cuartos_e7', clasificado_cuartos_e8 = '$clasificado_cuartos_e8', clasificado_semis_e1 = '$clasificado_semis_e1', clasificado_semis_e2 = '$clasificado_semis_e2', clasificado_semis_e3 = '$clasificado_semis_e3', clasificado_semis_e4 = '$clasificado_semis_e4', clasificado_cuarto = '$clasificado_cuarto', clasificado_tercero = '$clasificado_tercero', clasificado_subcampeon = '$clasificado_subcampeon', clasificado_campeon = '$clasificado_campeon', clasificado_jugador = '$clasificado_jugador', clasificado_valla = '$clasificado_valla' WHERE clasificado_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}