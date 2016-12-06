<?php
include_once ('db/utilidades_sql.php');

$result = get_vendidos();

while ($datos_vendidos=$result->fetch_assoc()) {
	

?>

<tr>
	<td>
		<h4> <?php echo $datos_vendidos['nombre']?> </h4>
	</td>
</tr>

<tr>
	<td>
		<img class="PREVIEW" src="<?php echo $datos_vendidos['img_preview']?>"/>
	</td>
</tr>


<?php } ?>