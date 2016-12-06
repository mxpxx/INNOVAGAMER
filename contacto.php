	<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permie una solo inclusión del archivo
					include_once('php/header.php');
				?>
				<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/menu.php');
					
				?>
	<div id="banner">
	<div id="contenido1">	
	<h1 id=text>Contactenos</h1>
<br>														
		<div class="row">
		<form action="php/registro_contacto.php" method="post">
		<form id="contact_form" action="#" method="POST" enctype="multipart/form-data">
		<label for="name">Tu nombre:</label><br />
		<input id="name" class="input" name="nombre" type="text" value="" size="30" /><br />
		<label for="email">Tu email:</label><br />
		<input id="email" class="input" name="email" type="text" value="" size="30" /><br />
		<label for="message">Tu mensaje:</label><br />
		<textarea id="message" class="input" name="mensaje" rows="7" cols="30"></textarea><br />
		<input id="submit_button" type="submit" value="Enviar" />
		
		</form>
		</form>
	</div>
	
					
		</div>
		</div>	

<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/footer.inc');
				?>
