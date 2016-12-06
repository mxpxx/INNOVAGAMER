
<?php
include_once ('db/utilidades_sql.php');

$result = get_ultimos();

while ($datos_ultimos=$result->fetch_assoc()) {
	

?>

<tr>
	<td>
		<h4> <?php echo $datos_ultimos['nombre']?> </h4>
	</td>
</tr>

<tr>
	<td>
		<img class="PREVIEW" src="<?php echo $datos_ultimos['img_preview']?>"/>
	</td>
</tr>


<?php } ?>
