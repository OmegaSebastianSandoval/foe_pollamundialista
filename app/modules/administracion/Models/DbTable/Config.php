<?php 
/**
* clase que genera la insercion y edicion  de config en la base de datos
*/
class Administracion_Model_DbTable_Config extends Db_Table
{
	/**
	 * [ nombre de la tabla actual]
	 * @var string
	 */
	protected $_name = 'configuracion';

	/**
	 * [ identificador de la tabla actual en la base de datos]
	 * @var string
	 */
	protected $_id = 'config_id';

	/**
	 * insert recibe la informacion de un config y la inserta en la base de datos
	 * @param  array Array array con la informacion con la cual se va a realizar la insercion en la base de datos
	 * @return integer      identificador del  registro que se inserto
	 */
	public function insert($data){
		$config_valorcuota = $data['config_valorcuota'];
		$config_interes = $data['config_interes'];
		$config_gruposmarcador = $data['config_gruposmarcador'];
		$config_gruposequipo = $data['config_gruposequipo'];
		$config_gruposempate = $data['config_gruposempate'];
		$config_1puestooctavos = $data['config_1puestooctavos'];
		$config_2puestooctavos = $data['config_2puestooctavos'];
		$config_octavosmarcador = $data['config_octavosmarcador'];
		$config_octavosequipo = $data['config_octavosequipo'];
		$config_cuartosclasificado = $data['config_cuartosclasificado'];
		$config_cuartosmarcador = $data['config_cuartosmarcador'];
		$config_cuartosganador = $data['config_cuartosganador'];
		$config_semisclasificado = $data['config_semisclasificado'];
		$config_semismarcador = $data['config_semismarcador'];
		$config_semisequipo = $data['config_semisequipo'];
		$config_finalesmarcadores = $data['config_finalesmarcadores'];
		$config_campeon = $data['config_campeon'];
		$config_subcampeon = $data['config_subcampeon'];
		$config_tercero = $data['config_tercero'];
		$config_cuarto = $data['config_cuarto'];
		$config_goleador = $data['config_goleador'];
		$config_valla = $data['config_valla'];
		$query = "INSERT INTO configuracion( config_valorcuota, config_interes, config_gruposmarcador, config_gruposequipo, config_gruposempate, config_1puestooctavos, config_2puestooctavos, config_octavosmarcador, config_octavosequipo, config_cuartosclasificado, config_cuartosmarcador, config_cuartosganador, config_semisclasificado, config_semismarcador, config_semisequipo, config_finalesmarcadores, config_campeon, config_subcampeon, config_tercero, config_cuarto, config_goleador, config_valla) VALUES ( '$config_valorcuota', '$config_interes', '$config_gruposmarcador', '$config_gruposequipo', '$config_gruposempate', '$config_1puestooctavos', '$config_2puestooctavos', '$config_octavosmarcador', '$config_octavosequipo', '$config_cuartosclasificado', '$config_cuartosmarcador', '$config_cuartosganador', '$config_semisclasificado', '$config_semismarcador', '$config_semisequipo', '$config_finalesmarcadores', '$config_campeon', '$config_subcampeon', '$config_tercero', '$config_cuarto', '$config_goleador', '$config_valla')";
		$res = $this->_conn->query($query);
        return mysqli_insert_id($this->_conn->getConnection());
	}

	/**
	 * update Recibe la informacion de un config  y actualiza la informacion en la base de datos
	 * @param  array Array Array con la informacion con la cual se va a realizar la actualizacion en la base de datos
	 * @param  integer    identificador al cual se le va a realizar la actualizacion
	 * @return void
	 */
	public function update($data,$id){
		
		$config_valorcuota = $data['config_valorcuota'];
		$config_interes = $data['config_interes'];
		$config_horasminimo = $data['config_horasminimo'];
		$config_gruposmarcador = $data['config_gruposmarcador'];
		$config_gruposequipo = $data['config_gruposequipo'];
		$config_gruposempate = $data['config_gruposempate'];
		$config_1puestooctavos = $data['config_1puestooctavos'];
		$config_2puestooctavos = $data['config_2puestooctavos'];
		$config_octavosmarcador = $data['config_octavosmarcador'];
		$config_octavosequipo = $data['config_octavosequipo'];
		$config_cuartosclasificado = $data['config_cuartosclasificado'];
		$config_cuartosmarcador = $data['config_cuartosmarcador'];
		$config_cuartosganador = $data['config_cuartosganador'];
		$config_semisclasificado = $data['config_semisclasificado'];
		$config_semismarcador = $data['config_semismarcador'];
		$config_semisequipo = $data['config_semisequipo'];
		$config_finalesmarcadores = $data['config_finalesmarcadores'];
		$config_campeon = $data['config_campeon'];
		$config_subcampeon = $data['config_subcampeon'];
		$config_tercero = $data['config_tercero'];
		$config_cuarto = $data['config_cuarto'];
		$config_goleador = $data['config_goleador'];
		$config_valla = $data['config_valla'];
		$query = "UPDATE configuracion SET  config_valorcuota = '$config_valorcuota', config_interes = '$config_interes', config_horasminimo = '$config_horasminimo', config_gruposmarcador = '$config_gruposmarcador', config_gruposequipo = '$config_gruposequipo', config_gruposempate = '$config_gruposempate', config_1puestooctavos = '$config_1puestooctavos', config_2puestooctavos = '$config_2puestooctavos', config_octavosmarcador = '$config_octavosmarcador', config_octavosequipo = '$config_octavosequipo', config_cuartosclasificado = '$config_cuartosclasificado', config_cuartosmarcador = '$config_cuartosmarcador', config_cuartosganador = '$config_cuartosganador',  config_semisclasificado = '$config_semisclasificado', config_semismarcador = '$config_semismarcador', config_semisequipo = '$config_semisequipo', config_finalesmarcadores = '$config_finalesmarcadores', config_campeon = '$config_campeon', config_subcampeon = '$config_subcampeon', config_tercero = '$config_tercero', config_cuarto = '$config_cuarto', config_goleador = '$config_goleador', config_valla = '$config_valla' WHERE config_id = '".$id."'";
		$res = $this->_conn->query($query);
	}
}