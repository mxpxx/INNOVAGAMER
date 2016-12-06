	<?php
	/* Para incluir librerías de base de datos y utilidades */
	include_once ('utilidades.php');
	


		//aumenta el contador de la posicion, tomando la variable de SESSION desde 0.
	if(isset($_GET['producto_id'])){
		if(!isset($_SESSION['posicion'])){
			$_SESSION['posicion']=0;
		}
		else{
			$_SESSION['posicion']++;
		}

		$_SESSION['producto'][$_SESSION['posicion']]=$_GET['producto_id'];
	}
	
	?>