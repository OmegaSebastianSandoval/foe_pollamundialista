<?php 
/**
* clase que genera la insercion y edicion  de fase en la base de datos
*/
class Administracion_Model_DbTable_Fases extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'fases';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un fase y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$estado = $data['estado'];
		$titulo = $data['titulo'];
		$fecha1 = $data['fecha1'];
		$fecha2 = $data['fecha2'];
		$query = "INSERT INTO fases( estado, titulo, fecha1, fecha2) VALUES ( '$estado', '$titulo', '$fecha1', '$fecha2')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un fase  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$estado = $data['estado'];
		$titulo = $data['titulo'];
		$fecha1 = $data['fecha1'];
		$fecha2 = $data['fecha2'];
		$query = "UPDATE fases SET  estado = '$estado', titulo = '$titulo', fecha1 = '$fecha1', fecha2 = '$fecha2' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}