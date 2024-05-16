<?php 
/**
* clase que genera la insercion y edicion  de equipo en la base de datos
*/
class Administracion_Model_DbTable_Equipos extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'equipos';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un equipo y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$codigo = $data['codigo'];
		$nombre = $data['nombre'];
		$bandera = $data['bandera'];
		$grupo = $data['grupo'];
		$pj = $data['pj'];
		$pg = $data['pg'];
		$pe = $data['pe'];
		$pp = $data['pp'];
		$gf = $data['gf'];
		$gc = $data['gc'];
		$gd = $data['gd'];
		$fp = $data['fp'];
		$puntos = $data['puntos'];
		$query = "INSERT INTO equipos( codigo, nombre, bandera, grupo, pj, pg, pe, pp, gf, gc, gd, fp, puntos) VALUES ( '$codigo', '$nombre', '$bandera', '$grupo', '$pj', '$pg', '$pe', '$pp', '$gf', '$gc', '$gd', '$fp', '$puntos')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un equipo  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$codigo = $data['codigo'];
		$nombre = $data['nombre'];
		$bandera = $data['bandera'];
		$grupo = $data['grupo'];
		$pj = $data['pj'];
		$pg = $data['pg'];
		$pe = $data['pe'];
		$pp = $data['pp'];
		$gf = $data['gf'];
		$gc = $data['gc'];
		$gd = $data['gd'];
		$fp = $data['fp'];
		$puntos = $data['puntos'];
		$query = "UPDATE equipos SET  codigo = '$codigo', nombre = '$nombre', bandera = '$bandera', grupo = '$grupo', pj = '$pj', pg = '$pg', pe = '$pe', pp = '$pp', gf = '$gf', gc = '$gc', gd = '$gd', fp = '$fp', puntos = '$puntos' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}

	public function actualizar_equipo($campo,$valor,$id){
        $query = "UPDATE equipos SET  ".$campo." = '".$valor."' WHERE id = '".$id."'";
        $res = $this->_conn->query($query);
    }

}