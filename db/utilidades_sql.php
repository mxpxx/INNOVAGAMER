<?php
//Establecer la recuperación en las constantes para la conexión al motor de la base de datos y accesos a la base de datos que se necesite, La función REQUIRE recupera la información del archivo que esta establecido en los parámetros


require ('credenciales_db.php');
//Establecemos la conexión utilizando la clase mysqli, estableciendo los datos recuperados anteriormente

$mysqli = New MySqli (DB_HOST,DB_USER,DB_PASSWORD,DB_DATABASE);
mysqli_set_charset($mysqli, "utf8");



//si la conexión genera un error lo recomendable es matar el proceso saliendo del archivo

if ($mysqli -> connect_errno){
	echo "No se pudo establecer la conexión";
	exit; 
}


function set_registro ($email, $contrasena, $fec_nac, $nacionalidad, $region, $ciudad, $rol){

	global $mysqli;
//Se realiza la consulta de inserción 
	$datos_user= get_user_Byide($email);
	if (!$rol) {
			$rol='cliente';
		}
		
	if (!$datos_user) {
		# code...
	
		$sql = "INSERT INTO cliente (email,fec_nac, nacionalidad, region, ciudad) 
			VALUES ('{$email}','{$fec_nac}','{$nacionalidad}','{$region}','{$ciudad}')";
		
		$result=$mysqli -> query($sql);
		
		if ($result) {
			$result = set_user($email, $contrasena, $rol);
		}
	}
}

function get_empresa(){
	global $mysqli;
	$sql ="SELECT * FROM empresa";
	$result=$mysqli->query($sql);
	return $result->fetch_assoc();
}
function set_user ($email, $contrasena, $rol){

	global $mysqli;
	//Se realiza la consulta de inserción 
	$sql =" INSERT INTO user (email, contrasena, rol) VALUES ('{$email}','{$contrasena}','{$rol}')";

	//Ejecuta la función
	$mysqli -> query($sql);
	
}
function get_user_Byide($email){
	global $mysqli;
	$sql ="SELECT email,contrasena,rol FROM user WHERE email='{$email}'";
	$result=$mysqli->query($sql);
	return $result->fetch_assoc();
    
		
	}
function get_cliente_Byide($email){
	global $mysqli;
	$sql ="SELECT _id_cliente,nombre,identificacion FROM cliente WHERE email='{$email}'";
	$result=$mysqli->query($sql);
	return $result->fetch_assoc();
    
		
	}
function set_registro_categoria($nombre,$descripcion){
	global $mysqli;
	$sql =" INSERT INTO categoria (nombre, descripcion) VALUES ('{$nombre}','{$descripcion}')";
	return
	$mysqli -> query($sql);

}
	

function set_registro_stock($minimo,$maximo){
	global $mysqli;
	$sql =" INSERT INTO stock (minimo, maximo) VALUES ('{$minimo}','{$maximo}')";
	return
	$mysqli -> query($sql);

}

function get_categorias(){

	global $mysqli;
	$sql = "SELECT * FROM categoria ORDER BY nombre";
	return 	$mysqli ->query($sql);
}

function get_stock(){

	global $mysqli;
	$sql = "SELECT * FROM stock ORDER BY minimo";
	return 	$mysqli ->query($sql);
}

function set_producto($nombre, $descripcion, $uploadedpreview, $uploadedbanner, $categoria, $stock, $valor, $entrada){

	global $mysqli;
	$sql =" INSERT INTO juego (nombre, sinopsis, img_preview, img_banner, _id_categoria, _id_stock, valor, fecha_entrada, visitas) 
	VALUES ('{$nombre}','{$descripcion}','{$uploadedpreview}','{$uploadedbanner}','{$categoria}','{$stock}','{$valor}','{$entrada}','0')";
	echo $sql;
	$mysqli -> query($sql);
}

function get_ultimos(){

	global $mysqli;
	$sql = "SELECT nombre, img_preview FROM juego  ORDER BY fecha_entrada DESC LIMIT 3";
	return 	$mysqli ->query($sql);

}
function get_productos(){

	global $mysqli;
	$sql = "SELECT _id_juego, nombre, img_preview FROM juego  ORDER BY nombre ";
	return 	$mysqli ->query($sql);

}

function get_vendidos(){

	global $mysqli;
	$sql = "SELECT nombre, img_preview FROM juego  ORDER BY nombre DESC LIMIT 4 ";
	return 	$mysqli ->query($sql);

}

function get_producto_Byid($id){

	global $mysqli;
	$sql = "SELECT _id_juego, nombre, sinopsis, img_preview, valor, stock FROM juego WHERE _id_juego={$id} ";
	return 	$mysqli ->query($sql);
    
}
function get_version_Byid($id){

	global $mysqli;
	$sql = "SELECT codigo, nombre,img_preview, valor FROM version WHERE _id_juego={$id} ";
	return 	$mysqli ->query($sql);
    
}
function set_registro_contacto($nombre,$email,$mensaje){
	global $mysqli;
	$sql =" INSERT INTO contacto (nombre,email,mensaje) VALUES ('{$nombre}','{$email}','{$mensaje}')";
	return $mysqli -> query($sql);

}

function set_empresa($identificacion, $razon_social, $direccion, $telefono, $uploadedpreview){
	global $mysqli;
	$sql =" INSERT INTO empresa (identificacion, razon_social, direccion, telefono, uploadedpreview) VALUES ('{$identificacion}','{$razon_social}','{$direccion}','{$telefono}','{$uploadedpreview}')";

	return $mysqli -> query($sql);

}
function set_factura($id_cliente, $valor_total){
	global $mysqli;
	$fecha=date("Y-m-d");
	$sql =" INSERT INTO factura_encabezado ( _id_cliente, fecha, valor_total) VALUES ('{$id_cliente}','{$fecha}','{$valor_total}')";
	$mysqli -> query($sql);
	return $id=$mysqli->insert_id;


}

function set_fac_detalle($cantidad, $valor, $id_juego, $id_factura){
	global $mysqli;
	$sql =" INSERT INTO factura_detalle ( cantidad, valor, _id_juego, _id_factura) VALUES ('{$cantidad}','{$valor}','{$id_juego}','{$id_factura}')";	
	$mysqli -> query($sql);
	$id=$mysqli->insert_id;
}
	

?>