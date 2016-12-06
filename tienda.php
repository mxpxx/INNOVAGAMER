<?php
/* Para incluir librerías de base de datos y utilidades */
include_once('db/utilidades_sql.php');
include_once ('php/utilidades.php');
$resultJuego=get_productos();
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
				<div id="contenido">
							
				<div class="FI"  id="wrapper">
				<div class="titulo"><h4>JUEGOS</h4></div>
  <nav class="vertical">
    <ul>
      <li>
       
       <div>
        	<ul>
        	<?php while ($datos_juego=$resultJuego->fetch_assoc()) { 
        		echo '<li> <button class="button2" value="'.$datos_juego['_id_juego'].'">'.$datos_juego['nombre'].'</button> </li> ';

  			 } ?>	
       </div>
       	
      
  </nav>
  </div>
 	 <section class="FD" id="productos2">
			<div id="version">

						<?php include_once('php/infoversion.php');?>

						
					
						
	</section>

  </div>

		<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/footer.inc');
				?>