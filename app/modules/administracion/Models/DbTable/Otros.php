<?php 
/**
* clase que genera la insercion y edicion  de otro en la base de datos
*/
class Administracion_Model_DbTable_Otros extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'otros';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un otro y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$usuario = $data['usuario'];
		$goleador = $data['goleador'];
		$valla = $data['valla'];
		$fecha = $data['fecha'];
		$query = "INSERT INTO otros( usuario, goleador, valla, fecha) VALUES ( '$usuario', '$goleador', '$valla', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un otro  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$usuario = $data['usuario'];
		$goleador = $data['goleador'];
		$valla = $data['valla'];
		$fecha = $data['fecha'];
		$query = "UPDATE otros SET  usuario = '$usuario', goleador = '$goleador', valla = '$valla', fecha = '$fecha' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}

		
	public function agregar($data){
		$usuario = $data['usuario'];
		$goleador = $data['goleador'];
		$valla = $data['valla'];
		$fecha = $data['fecha'];
		$query = "DELETE FROM otros WHERE usuario='$usuario' ";
		$res = $this->_conn->query($query);
		$query = "INSERT INTO otros( usuario, goleador, valla, fecha) VALUES ( '$usuario', '$goleador', '$valla', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}
}