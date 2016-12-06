<?php
/* Para incluir librerías de base de datos y utilidades */

include_once ('utilidades.php');
if ($_GET){
	include_once('../db/utilidades_sql.php');
	$id=$_GET['id'];
}else{
	include_once('db/utilidades_sql.php');
	$id='10';

}
?>
<head>
	
<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/utilidadestienda.js"></script>
</head>
	
	<div class="titulo1"><h4>Descripcion del producto</h4></div>
		
		<table>
		
		<?php $result = get_producto_Byid($id); ?>

							<table>
						<?php if($datos_varios=$result->fetch_assoc()) { ?>
								<img class="PREVIEW2"   src="<?php echo $datos_varios['img_preview']?>"/>
								<div class="texto"><h4>Descripción</h4></div>
								<h4 class="texto2">Id:<?php echo $datos_varios['_id_juego']?> </h4>
								<h4 class="texto2">Nombre:<?php echo $datos_varios['nombre']?> </h4>
								<h4 class="texto2">Rol:<?php echo $datos_varios['sinopsis']?> </h4>
								<h4 class="texto2">Valor:<?php echo $datos_varios['valor']?> </h4>
							
								<?php echo "<button id='FD' class='buttontienda' value='".$datos_varios['_id_juego']."'>Enviar Carrito</button>" ?>
		
		

			<?php } ?>
			
	</table>





		

