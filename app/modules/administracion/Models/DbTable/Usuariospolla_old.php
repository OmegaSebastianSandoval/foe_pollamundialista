<?php 
/**
* clase que genera la insercion y edicion  de usuario en la base de datos
*/
class Administracion_Model_DbTable_Usuariospolla extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'userpolla';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'user_id';

	/**
	 * insert recibe la informacion de un usuario y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$user_names = $data['user_names'];
		$user_lastnames = $data['user_lastnames'];
		$user_email = $data['user_email'];
		$user_idnumber = $data['user_idnumber'];
		$user_city = $data['user_city'];
		$user_country = $data['user_country'];
		$user_phone = $data['user_phone'];
		$user_address = $data['user_address'];
		$user_level = $data['user_level'];
		$user_state = $data['user_state'];
		$user_user = $data['user_user'];
		
		$user_password = password_hash($data['user_password'], PASSWORD_DEFAULT);

		$user_delete = $data['user_delete'];
		$user_current_user = $data['user_current_user'];
		$user_zona = $data['user_zona'];
		$user_celular = $data['user_celular'];
		$user_puntos = $data['user_puntos'];
		$user_marcadores = $data['user_marcadores'];
		$user_ganadores = $data['user_ganadores'];
		$user_otros = $data['user_otros'];
		$user_total = $data['user_total'];
		$user_cuotas = $data['user_cuotas'];
		$user_paso = $data['user_paso'];
		$user_fecha = $data['user_fecha'];
		$query = "INSERT INTO userpolla( user_names, user_lastnames, user_email, user_idnumber, user_city, user_country, user_phone, user_address, user_level, user_state, user_user, user_password, user_delete, user_current_user, user_zona, user_celular, user_puntos, user_marcadores, user_ganadores, user_otros, user_total, user_cuotas, user_paso, user_fecha) VALUES ( '$user_names', '$user_lastnames', '$user_email', '$user_idnumber', '$user_city', '$user_country', '$user_phone', '$user_address', '$user_level', '$user_state', '$user_user', '$user_password', '$user_delete', '$user_current_user', '$user_zona', '$user_celular', '$user_puntos', '$user_marcadores', '$user_ganadores', '$user_otros', '$user_total', '$user_cuotas', '$user_paso', '$user_fecha')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un usuario  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$user_names = $data['user_names'];
		$user_lastnames = $data['user_lastnames'];
		$user_email = $data['user_email'];
		$user_idnumber = $data['user_idnumber'];
		$user_city = $data['user_city'];
		$user_country = $data['user_country'];
		$user_phone = $data['user_phone'];
		$user_address = $data['user_address'];
		$user_level = $data['user_level'];
		$user_state = $data['user_state'];
		$user_user = $data['user_user'];
		$changepasword = '';
        if($data['user_password']!=''){
            $user_password = password_hash($data['user_password'], PASSWORD_DEFAULT);
            $changepasword = " , user_password = '$user_password'";
        }
		$user_delete = $data['user_delete'];
		$user_current_user = $data['user_current_user'];
		$user_zona = $data['user_zona'];
		$user_celular = $data['user_celular'];
		$user_puntos = $data['user_puntos'];
		$user_marcadores = $data['user_marcadores'];
		$user_ganadores = $data['user_ganadores'];
		$user_otros = $data['user_otros'];
		$user_total = $data['user_total'];
		$user_cuotas = $data['user_cuotas'];
		$user_paso = $data['user_paso'];
		$user_fecha = $data['user_fecha'];
		$query = "UPDATE userpolla SET  user_names = '$user_names', user_lastnames = '$user_lastnames', user_email = '$user_email', user_idnumber = '$user_idnumber', user_city = '$user_city', user_country = '$user_country', user_phone = '$user_phone', user_address = '$user_address', user_level = '$user_level', user_state = '$user_state', user_user = '$user_user', user_delete = '$user_delete', user_current_user = '$user_current_user', user_zona = '$user_zona', user_celular = '$user_celular', user_puntos = '$user_puntos', user_marcadores = '$user_marcadores', user_ganadores = '$user_ganadores', user_otros = '$user_otros', user_total = '$user_total', user_cuotas = '$user_cuotas', user_paso = '$user_paso', user_fecha = '$user_fecha'  $changepasword  WHERE user_id = '".$id."'";
		$res = $this->_conn->query($query);
	}

	public function searchUserByUser($user)
    {
        $res = $this->_conn->query('SELECT * FROM '.$this->_name.' WHERE user_user = "'.$user.'"')->fetchAsObject();
        if(isset($res[0])){
            $res = $res[0];
        } else {
            $res = false;
        }
        return $res;
    }
	public function autenticateUser($user,$password){
		
        $resUser=$this->searchUserByUser($user);
		
        if ($resUser->user_id) {
			
            if(password_verify($password,$resUser->user_password)){
			
                return  true;
            }else{
			
                return false;
            }
        } else {
            return false;
        }
    }
}