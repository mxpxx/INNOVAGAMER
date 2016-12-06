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
			<h1 id=text>Rigistro Usuario</h1>
			<section class="clear">

				<form action="php/registro.php" method="post">
					<table>
						<tr>
							<td>Email</td>
							<td><input type="email" name="email" required ></td>
						</tr>
						<tr>
							<td>Contraseña</td>
							<td><input type="password"  name="contrasena" required></td>
						</tr>
						<tr class="validacion">
							<td colspan="2">Minimo 1 mayuscula, Minimo 1 minuscula, Minimo 1 numero, Minimo 8 caracteres</td>
						</tr>
						<tr>
							<td> Validar Contraseña</td>
							<td><input type="password"  name="contrasenaver" required></td>
						</tr>
						<tr>
							<td>Fecha Nacimiento</td>
							<td><input type="date"  name="fec_nac" required placeholder="aaaa/mm/dd"></td>
						</tr>
						<tr>
							<td>Nacionalidad</td>
							<td><input type="text" name="pais"></td>
						</tr>
						<tr>
							<td>Region</td>
							<td><input type="text" name="region"></td>
						</tr>
						<tr>
							<td>Ciudad</td>
							<td><input type="text" name="ciudad"></td>
						</tr>
							<tr>
							

					<?php if (isset($_SESSION['rol'])=='admin'){ ?>

						<tr>
							<td>Rol</td>
								<td> <select name="rol">
  									<option value="admin">Administrador</option>
 									<option value="user">Usuario</option>
								</select> 
							</td>
						</tr>
						<?php } ?>

						<tr>
							<td><button type="submit">Registrarse</button></td>
				
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
