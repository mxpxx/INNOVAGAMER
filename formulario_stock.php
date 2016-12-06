<?php

include_once ('php/utilidades.php');

if(isset($_SESSION['email'])){

	if ($_SESSION['rol']=='cliente'){

		header('location:index.php');
		die();
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
		<h1 id=text>Rigistro Stock</h1>															

			<section class="clear">

				<form action="php/registro_stock.php" method="post">
					<table>
						<tr>
							<td>Minimo</td>
							<td><input type="number" min="1" max="100" name="minimo"></td>
						</tr>
						<tr>
							<td>Maximo</td>
							<td><input type="number"  min="1" max="100" name="maximo"></td>
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