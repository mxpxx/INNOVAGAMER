

				<?php
				// Permite incluir el script de un archivo, en el archivo donde es llamado
				//include_once, Permite una solo inclusión del archivo
				include_once('php/header.php');
					$i=0;
					$subtotal=0;
				
				?>

				<?php
					// Permite incluir el script de un archivo, en el archivo donde es llamado
					//include_once, Permite una solo inclusión del archivo
					include_once('php/menu.php');
					
				?>

		<div id="contenido">
				
						<section>
						<form action="php/formulario_factura.php" method="POST">
							
						
					
							<table  border="5px" class="tabla3" >


								<thead "> 
									<tr>
										<td colspan="2" align="center"><h4>PEDIDO</h4></td>
									</tr>	 
								</thead>

								<tbody>
									<tr>
										<td style="" align="center"><h4>PRODUCTO</h4></td>
										<td style="" align="center"><h4>VALOR</h4></td>
									</tr>

								<tr>

								<?php 
							
									if (isset($_SESSION['producto'])){	

										while ($i<=$_SESSION['posicion']) {
											$result = get_producto_Byid($_SESSION['producto'][$i]);

											if($datos_productos=$result->fetch_assoc()) { 
												echo "<tr><td>".$datos_productos['nombre']."</td>"."<td align ='center'>".$datos_productos['valor']."</td></tr>";
										}
										


									$i++;
									$subtotal+=$datos_productos['valor'];



									}

									
									}		
									?>

</tr>

									<tr>
										<td>Total</td>
										<td align="center"><?php echo $subtotal; ?></td>
									</tr>

									<tr>
										<td><button><a  href="php/cancelar_pedido.php" type="submit">Cancelar</a></button></td>
										<td><button type="submit">Confirmar</button></td>
										
									</tr>

							
								
							</tbody>
						</table>
						</form>
					</section>
			</div>
