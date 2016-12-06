<?php
/* Para incluir librerías de base de datos y utilidades */
include_once('../db/utilidades_sql.php');
include_once ('utilidades.php');
$i=0;
$subtotal=0;
$n=0;

?>

<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" type="text/css" href="css/estilos.css">
		<script type="text/javascript">

			function imprimir(){
				windows.print();
				}
		</script>		
</head>
<body>
	
		<div>
		
							<tr>

								<?php 
							
									if (isset($_SESSION['producto'])){	

										while ($i<=$_SESSION['posicion']) {
											$result = get_producto_Byid($_SESSION['producto'][$i]);

											if($datos_productos=$result->fetch_assoc()) { 
												
										}
										


									$i++;
									$subtotal+=$datos_productos['valor'];


									}

									
									}		
									?>

</tr>
					<table>

						<tr>
								<td class="log"><img class="logofac" src="img/preview/logoblanco.png"/> </td>
								<td class="factura">		
									<ul  >	
											<h3><li>INNOVA GAMER</li>
											<li>NIT:83165338-5 </li>
											<li>www.InnovaGamer.com </li></h3>
									</ul>
								</td>
								<td  class="factura1">
								<h3>11111</h3>
								<h3>54/453/43</h3></td>

						</tr>
						<tr><td colspan="3"><hr></td></tr>
						<tr>
							<td colspan="2" >
					
									<h4><ul>	
										<li>Tipo de cuenta: Ahorros <input  class="input"  type="text" value="" size="1" /> Corriente <input  class="input"  type="text" value="" size="1" />
										<li>Numero de cuenta:<input  class="input"  type="text" value="" size="10" /><br /> </li>
										<li>Depositante: <input  class="input"  type="text" value="" size="20" /><br /> </li></li>
										<li>Identificacion:<input  class="input"  type="text" value="" size="10" /><br /> </li></li>
									</ul></h4>
								
							</td>
							<td>
									<h4><ul>	
											<li>Tipo de pago: Efectivo <input value="X" size="1" disabled=""> </li>

											<li>Juegos:<?php echo $i; ?></li>
											
											<li>Valor a pagar:<?php echo $subtotal; ?></li>
											
									</ul></h4>
								
							</td>
						</tr>
						<tr><td colspan="3"><hr></td></tr>
						<tr>
						
						
						</table>
						<button><a action="procesar-factura.php" href="javascript:window.print()">Imprimir</a></button>


		
			
		
</body>
</html>
			

		