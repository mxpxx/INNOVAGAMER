<?php
/* Para incluir librerías de base de datos y utilidades */
include_once('db/utilidades_sql.php');
include_once ('php/utilidades.php');

?>
<!Doctype html>
<html>
	<head>
		<title>Innova Gamer</title>
	<!-- Meta datos = información que capturan los buscadores-->
			<meta name="descripcion-contenido" content="content">
			<link rel="shortcut icon" type="img/png" href="img/favicon.png">
	<!-- enlace a la hoja de estilos principal-->
			<link rel="stylesheet" type="text/css" href="css/estilos.css">
			<link rel="stylesheet" type="text/css" href="css/banner.css">
			<script type="text/javascript" src="js/jquery.js"></script>
			<script type="text/javascript" src="js/utilidades.js"></script>
	</head>
	<body>
		<div id="contenedorprincipal">
		<header>


			<div class="FI" id="compras">

					<?php if(isset($_SESSION['email'])){ ?>
					<?php if ($_SESSION['rol']=='admin') { ?>



					<?php } else { ?>
			
					<h4><a  href="confirmar_compra.php"> Compras </a></h4>

					<?php } ?>

					<?php } else { ?>

					<h4><a  href="formulario-crear-cuenta.php">Compras</a></h4>

					<?php } ?>
			<div id="temporal"></div>		
			<div class="FI" id="comprasjs" >
					<?php if(isset($_SESSION['posicion'])){
						echo " <a href='confirmar_compra.php'> <img class='carrito' id='carritoimg' src='img/carrito_lleno.png'/></a>";
					} else {
						echo"<a href='confirmar_compra.php'>   <img class='carrito' id='carritoimg' src='img/carrito_desocupado.png'/> </a>";

					}
					?>
				</div>
			</div>

			<div class="FD" id="logeo">
				<?php	if(isset($_SESSION['email'])){ 
					echo "<h4>".$_SESSION['email']."</h4> <h4> <a href='php/logout.php'> Salir </a></h4>";
				}else{
						echo "<h4> <a href='formulario_login.php'> Ingresar </a><h4>	<a href='formulario-crear-cuenta.php'>	Registrarse </a></h4>";
				}
				?>
			</div>


		</header>		

		<?php 


			
		
	