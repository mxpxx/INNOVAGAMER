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
		<h1 id=text>Ingreso</h1>
			<section class="clear">

				<form action="php/login.php" method="post">
					<table>
						<tr>
							<td>Email</td>
							<td><input type="email" name="email" required></td>
						</tr>
						<tr>
							<td>Contraseña</td>
							<td><input type="password"  name="contrasena" required></td>
						</tr>
						

						<tr>
							<td><button type="submit">Ingresar</button></td>
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
