<?php 
/**
* clase que genera la insercion y edicion  de final en la base de datos
*/
class Administracion_Model_DbTable_Final extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'final';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un final y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$usuario = $data['usuario'];
		$campeon = $data['campeon'];
		$subcampeon = $data['subcampeon'];
		$tercero = $data['tercero'];
		$cuarto = $data['cuarto'];
		$fecha = $data['fecha'];
		$query = "INSERT INTO final( usuario, campeon, subcampeon, tercero, cuarto, fecha) VALUES ( '$usuario', '$campeon', '$subcampeon', '$tercero', '$cuarto', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un final  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$usuario = $data['usuario'];
		$campeon = $data['campeon'];
		$subcampeon = $data['subcampeon'];
		$tercero = $data['tercero'];
		$cuarto = $data['cuarto'];
		$fecha = $data['fecha'];
		$query = "UPDATE final SET  usuario = '$usuario', campeon = '$campeon', subcampeon = '$subcampeon', tercero = '$tercero', cuarto = '$cuarto', fecha = '$fecha' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}

	public function agregar($data){
		$usuario = $data['usuario'];
		$campeon = $data['campeon'];
		$subcampeon = $data['subcampeon'];
		$tercero = $data['tercero'];
		$cuarto = $data['cuarto'];
		$fecha = $data['fecha'];
		$query = "DELETE FROM final WHERE usuario = '$usuario' ";
		$res = $this->_conn->query($query);
		$query = "INSERT INTO final( usuario, campeon, subcampeon, tercero, cuarto, fecha) VALUES ( '$usuario', '$campeon', '$subcampeon', '$tercero', '$cuarto', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}
}