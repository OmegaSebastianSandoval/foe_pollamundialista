<?php 
/**
* clase que genera la insercion y edicion  de semis en la base de datos
*/
class Administracion_Model_DbTable_Semis extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'semis';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un semis y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$usuario = $data['usuario'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$e3 = $data['e3'];
		$e4 = $data['e4'];
		$fecha = $data['fecha'];
		$query = "INSERT INTO semis( usuario, e1, e2, e3, e4, fecha) VALUES ( '$usuario', '$e1', '$e2', '$e3', '$e4', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un semis  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$usuario = $data['usuario'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$e3 = $data['e3'];
		$e4 = $data['e4'];
		$fecha = $data['fecha'];
		$query = "UPDATE semis SET  usuario = '$usuario', e1 = '$e1', e2 = '$e2', e3 = '$e3', e4 = '$e4', fecha = '$fecha' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}

	public function agregar($data){
		$usuario = $data['usuario'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$e3 = $data['e3'];
		$e4 = $data['e4'];
		$fecha = $data['fecha'];

		$query = "DELETE FROM semis WHERE usuario='$usuario' ";
		$res = $this->_conn->query($query);

		$query = "INSERT INTO semis( usuario, e1, e2, e3, e4,  fecha) VALUES ( '$usuario', '$e1', '$e2', '$e3', '$e4', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

}