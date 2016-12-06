<?php
	//incluimos el archivo Utilidades_sql.php

	Include_once ('../db/utilidades_sql.php');
	Include_once ('utilidades.php');



//IF -> condición para traer los datos 
	//$_POST -> Variable constante
	if ($_POST){

		// ? $_POST['ciudad']:''  --> Significa que el dato quedaría en blanco en caso de no ser ingresado nada
		$email=isset($_POST ['email'])? $_POST['email']:'' ;

		$contrasena=isset($_POST ['contrasena'])? $_POST['contrasena']:'' ;

		$datos_user=get_user_Byide($email);
		/*PERMITE RECUPERAR DATOS - obtiene datosdeun metodo get_user_Byide del usuario que le pasaria datos a datos_user como lapass encriptada*/
		if (PASSWORD_VERIFY($contrasena,$datos_user['contrasena'])) {
			// (PASSWORD_VERIFY sirve para comparar datos//
			$_SESSION['email']=$email;
			$_SESSION['rol']=$datos_user['rol'];
			header('Location: ../index.php');
			die();
			
		}else {
			header('Location: ../formulario-crear-cuenta.php');
			die();
		}
		}
		
	

?>