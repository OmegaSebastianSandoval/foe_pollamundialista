<?php 
/**
* clase que genera la insercion y edicion  de octavos en la base de datos
*/
class Administracion_Model_DbTable_Octavos extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'octavos';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'id';

	/**
	 * insert recibe la informacion de un octavos y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$usuario = $data['usuario'];
		$a1 = $data['a1'];
		$a2 = $data['a2'];
		$b1 = $data['b1'];
		$b2 = $data['b2'];
		$c1 = $data['c1'];
		$c2 = $data['c2'];
		$d1 = $data['d1'];
		$d2 = $data['d2'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$f1 = $data['f1'];
		$f2 = $data['f2'];
		$g1 = $data['g1'];
		$g2 = $data['g2'];
		$h1 = $data['h1'];
		$h2 = $data['h2'];
		$fecha = $data['fecha'];
		$query = "INSERT INTO octavos( usuario, a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2, g1, g2, h1, h2, fecha) VALUES ( '$usuario', '$a1', '$a2', '$b1', '$b2', '$c1', '$c2', '$d1', '$d2', '$e1', '$e2', '$f1', '$f2', '$g1', '$g2', '$h1', '$h2', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	public function agregar($data){
		$usuario = $data['usuario'];
		$a1 = $data['a1'];
		$a2 = $data['a2'];
		$b1 = $data['b1'];
		$b2 = $data['b2'];
		$c1 = $data['c1'];
		$c2 = $data['c2'];
		$d1 = $data['d1'];
		$d2 = $data['d2'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$f1 = $data['f1'];
		$f2 = $data['f2'];
		$g1 = $data['g1'];
		$g2 = $data['g2'];
		$h1 = $data['h1'];
		$h2 = $data['h2'];
		$fecha = $data['fecha'];


		$query = "DELETE FROM octavos WHERE usuario = '$usuario' ";
		$res = $this->_conn->query($query);

		$query = "INSERT INTO octavos( usuario, a1, a2, b1, b2, c1, c2, d1, d2, e1, e2, f1, f2, g1, g2, h1, h2, fecha) VALUES ( '$usuario', '$a1', '$a2', '$b1', '$b2', '$c1', '$c2', '$d1', '$d2', '$e1', '$e2', '$f1', '$f2', '$g1', '$g2', '$h1', '$h2', '$fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());

	}

	/**
	 * update Recibe la informacion de un octavos  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$usuario = $data['usuario'];
		$a1 = $data['a1'];
		$a2 = $data['a2'];
		$b1 = $data['b1'];
		$b2 = $data['b2'];
		$c1 = $data['c1'];
		$c2 = $data['c2'];
		$d1 = $data['d1'];
		$d2 = $data['d2'];
		$e1 = $data['e1'];
		$e2 = $data['e2'];
		$f1 = $data['f1'];
		$f2 = $data['f2'];
		$g1 = $data['g1'];
		$g2 = $data['g2'];
		$h1 = $data['h1'];
		$h2 = $data['h2'];
		$fecha = $data['fecha'];
		$query = "UPDATE octavos SET  usuario = '$usuario', a1 = '$a1', a2 = '$a2', b1 = '$b1', b2 = '$b2', c1 = '$c1', c2 = '$c2', d1 = '$d1', d2 = '$d2', e1 = '$e1', e2 = '$e2', f1 = '$f1', f2 = '$f2', g1 = '$g1', g2 = '$g2', h1 = '$h1', h2 = '$h2', fecha = '$fecha' WHERE id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}