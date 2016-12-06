<?php
include_once ('db/utilidades_sql.php');
$result = get_productos();
?>
<div id="vistaproductos2">
<?php

while ($datos_productos=$result->fetch_assoc()) { ?>
		
	<p><div class="doblecolunma1"></p>
		
			
			<?php echo "<a href='infoproducto.php?id=".$datos_productos['_id_juego']."'> 
			<img class='PREVIEW5' src='".$datos_productos['img_preview']."' /></a><a>"; ?>
		<?php echo "<button class='button' value='".$datos_productos['_id_juego']."'>Enviar Carrito</button>" ?>
		<h4 id="mensaje" ></h4>
	</div>
	
	


<?php } ?>
</div>