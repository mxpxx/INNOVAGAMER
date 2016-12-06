<?php

include_once ('php/utilidades.php');
include_once ('db/utilidades_sql.php');

if(isset($_SESSION['email'])){



	if ($_SESSION['rol']=='cliente'){

		header('location:index.php');
		die();
	}
}




$resultCat=get_categorias();
$resultStock=get_stock();

/*$estado=false();
$error=false();
$msg='';
$msgerror='';*/



if($_FILES){
	$directorio_preview='img/preview/';
	$directorio_banner='img/banner/';

	$ruta1=$directorio_preview.basename ($_FILES['uploadedpreview']['name']);
	move_uploaded_file($_FILES['uploadedpreview']['tmp_name'], $ruta1);
	$ruta2=$directorio_banner.basename ($_FILES['uploadedbanner']['name']);
	move_uploaded_file($_FILES['uploadedbanner']['tmp_name'], $ruta2);

		if($_POST){

		$nombre=isset($_POST ['nombre'])?
			 $_POST['nombre']:'' ;

		$descripcion=isset($_POST ['descripcion'])?
			 $_POST['descripcion']:'' ;

		$uploadedpreview=$ruta1;
 
 		$uploadedbanner=$ruta2;

		$categoria=isset($_POST ['categoria'])?
			 $_POST['categoria']:'' ;

		$stock=isset($_POST ['stock'])?
			 $_POST['stock']:'' ;

		$valor=isset($_POST ['valor'])?
			 $_POST['valor']:'' ;

		$entrada=isset($_POST ['entrada'])?
			 $_POST['entrada']:'' ;
 
 			$result = set_producto($nombre, $descripcion, $uploadedpreview, $uploadedbanner, $categoria, $stock, $valor, $entrada);
				
			
}
}

?>
	<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/header.php');

				?>

				<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/menu.php');
					
				?>

		<div id="banner">	
		<div id="contenido1">	
		<h1 id=text>Rigistro Juego</h1>													
			
			<section class="clear">

				<form enctype="multipart/form-data"  method="POST">
					<table>
						<tr>
							<td>Nombre</td>
							<td><input type="text" name="nombre"></td>
						</tr>
						<tr>
							<td>Descricpcion</td>
							<td><input type="text" name="descripcion"></td>
						</tr>
						<tr>
							<td>Examinar(imagen)</td>
							<td>
							<input name="uploadedpreview" type="file" />
						
</td>
						<tr>
							<td>Examinar(banner)</td>
							<td>
							<input name="uploadedbanner" type="file" />
						
</td>
						</tr>

						<tr>

							<td>Categoria</td>
								<td><select name='categoria'>
									<?php while ($datos_categoria=$resultCat->fetch_assoc()) { ?>
											
			                        	<option value=" <?php  echo $datos_categoria['_id_categoria']?>">
			                        				<?php  echo $datos_categoria['nombre']. '-' .$datos_categoria['descripcion']?></option>
										
							 <?php    } ?>	
								</select> 
							</td>
						</tr>

						<tr>
							<td>Stock</td>
								<td> <select name='stock'>
								<?php while ($datos_stock=$resultStock->fetch_assoc()) { ?>
					
			                        	<option value="<?php  echo $datos_stock['_id_stock']?>">
			                        					<?php  echo $datos_stock['minimo']. '-' .$datos_stock['maximo']?></option>
										
						
							 <?php    } ?>
								</select> 
							</td>
						</tr>

						<tr>
							<td>valor</td>
							<td><input type="number" name="valor"></td>
						</tr>

						<tr>
							<td>fecha de entrada</td>
							<td><input type="text" name="entrada" value="<?php echo date('y/m/d') ?>"></td>
						</tr>


						<tr>
							<td><button type="submit">Enviar</button></td>
						</tr>
					
						
					</table>
				</form>
				
			</section>
			</div>
			</div>
		
		<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/footer.inc');
				?>
