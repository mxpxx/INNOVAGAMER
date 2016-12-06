<?php

	include_once('php/header.php');

	include_once('php/menu.php');

	include_once('php/banner.php');
	
?>
	<div id="contenido">

		<section class="FI" id="ultimos">
					<div class="titulo"><h4>Ultimos</h4></div>
					
						
								<?php include_once('php/ultimos.php');?>
							
					
				</section>
						
				<section class="FI" id="productos">
					<div class="titulo2"><h4>Juegos en venta</h4></div>

					
						<table class="tabla">
							<thead></thead>
							<tbody>
								<?php include_once('php/productos.php');?>
							</tbody>

					</table>
					
				</section>
				<section class="FD" id="vendidos">
					<div class="titulo"><h4>Mas vendidos</h4></div>

					
						<table class="tabla">
							<thead></thead>
							<tbody>
								<?php include_once('php/vendidos.php');?>
							</tbody>

					</table>
					
				</section>
				

</div>
			
	

<?php
	include_once('php/footer.inc')
?>	