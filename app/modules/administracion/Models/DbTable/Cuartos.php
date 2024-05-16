<?php 
/**
* clase que genera la insercion y edicion  de cuartos en la base de datos
*/
class Administracion_Model_DbTable_Cuartos extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'cuartos';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un cuartos y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$usuario = $data['usuario'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$e3 = $data['e3'];
		$e4 = $data['e4'];
		$e5 = $data['e5'];
		$e6 = $data['e6'];
		$e7 = $data['e7'];
		$e8 = $data['e8'];
		$fecha = $data['fecha'];
		$query = "INSERT INTO cuartos( usuario, e1, e2, e3, e4, e5, e6, e7, e8, fecha) VALUES ( '$usuario', '$e1', '$e2', '$e3', '$e4', '$e5', '$e6', '$e7', '$e8', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un cuartos  y actualiza la informacion en la base de datos
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
		$e5 = $data['e5'];
		$e6 = $data['e6'];
		$e7 = $data['e7'];
		$e8 = $data['e8'];
		$fecha = $data['fecha'];
		$query = "UPDATE cuartos SET  usuario = '$usuario', e1 = '$e1', e2 = '$e2', e3 = '$e3', e4 = '$e4', e5 = '$e5', e6 = '$e6', e7 = '$e7', e8 = '$e8', fecha = '$fecha' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}

	public function agregar($data){
		$usuario = $data['usuario'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$e3 = $data['e3'];
		$e4 = $data['e4'];
		$e5 = $data['e5'];
		$e6 = $data['e6'];
		$e7 = $data['e7'];
		$e8 = $data['e8'];
		$fecha = $data['fecha'];

		$query = "DELETE FROM cuartos WHERE usuario='$usuario' ";
		$res = $this->_conn->query($query);

		$query = "INSERT INTO cuartos( usuario, e1, e2, e3, e4, e5, e6, e7, e8, fecha) VALUES ( '$usuario', '$e1', '$e2', '$e3', '$e4', '$e5', '$e6', '$e7', '$e8', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

}