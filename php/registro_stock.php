<?php
	//incluimos el archivo Utilidades_sql.php realiza conexion a base de datos

	include_once ('db/utilidades_sql.php');



//IF -> condición para traer los datos ifes una sentencia de control
	//$_POST -> Variable constante, trae datos de labase de datos
	if ($_POST){

		// ? $_POST['ciudad']:''  --> Significa que el dato quedaría en blanco en caso de no ser ingresado nada, isset recupera la informacion que tenga en la variable $_POST
		$minimo=isset($_POST ['minimo'])?
		 $_POST['minimo']:'' ;

		$maximo=isset($_POST ['maximo'])? 
			$_POST['maximo']:'' ;
		//llamado a la función que va a recibir los datos
		$result = set_registro_stock($minimo, $maximo);

			//!$result sentencia de negacion //
			ob_start();
				//ob_start y ob_end_flush es un ciclo //
				header("refresh:3;url=fomulario_stock.php");
				if ($result){
					echo"<h3>bien</h3>";
				}else{
					echo"<h3>mal</h3>";
				}
				ob_end_flush();
				die();
			
	}

?>