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


	$ruta1=$directorio_preview.basename ($_FILES['uploadedpreview']['name']);
	move_uploaded_file($_FILES['uploadedpreview']['tmp_name'], $ruta1);


		if($_POST){

		$identificacion=isset($_POST ['identificacion'])?
			 $_POST['identificacion']:'' ;

		$razon_social=isset($_POST ['razon_social'])?
			 $_POST['razon_social']:'' ;


		$direccion=isset($_POST ['direccion'])?
			 $_POST['direccion']:'' ;

		$telefono=isset($_POST ['telefono'])?
			 $_POST['telefono']:'' ;

		$uploadedpreview=$ruta1;

	
 		$result = set_empresa($identificacion, $razon_social, $direccion, $telefono, $uploadedpreview);
				
			
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
		<h1 id=text>Perfil Empresa</h1>													
			
			<section class="clear">

				<form enctype="multipart/form-data"  method="POST">
					<table>
						<tr>
							<td>Identificacion</td>
							<td><input type="text" name="identificacion"></td>
						</tr>
						<tr>
							<td>Razón social</td>
							<td><input type="text" name="razon_social"></td>
						</tr>
						
						<tr>
							<td>Direccion</td>
							<td><input type="text" name="direccion"></td>
						</tr>
						<tr>
							<td>Telefono</td>
							<td><input type="text" name="telefono"></td>
						</tr>

						<tr>
							<td>Logo(imagen)</td>
							<td>
							<input name="uploadedpreview" type="file" />
						
						</td>
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