<?php
include_once ('utilidades.php');
if (!isset($_SESSION['email'])){
	echo "<script language='javascript'> alert('Registrate para poder disfrutar de tu compra ')</script>";
	header("refresh:3;url=../formulario-crear-cuenta.php");
	die();

}
/* Para incluir librerías de base de datos y utilidades */
include_once('../db/utilidades_sql.php');

$i=0;
$subtotal=0;
$n=0;
function recorrer_carrito(){
	$j=0;
	$subtotal=0;

	if (isset($_SESSION['producto'])){	

										while ($j<=$_SESSION['posicion']) {
											$result = get_producto_Byid($_SESSION['producto'][$j]);

											if($datos_productos=$result->fetch_assoc()) { 
												
										}
										


									$j++;
									$subtotal+=$datos_productos['valor'];


									}

									
									}		
return $subtotal;

}

?>

<!DOCTYPE html>
<html>
<head>
		<link rel="stylesheet" type="text/css" href="../css/estilos.css">

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
								$valor_total=recorrer_carrito();
								$email=$_SESSION['email'];
								$result=get_cliente_Byide($email);
								$id_cliente=$result["_id_cliente"];
								$n_cliente=$result['nombre'];
								$identificacion=$result['identificacion'];
								$result=get_empresa();
								$r_social=$result['razon_social'];
								$identificacion_emp=$result['identificacion'];
								$sitio=$result['sitio'];
								$n_cuenta=$result['n_cuenta'];
								$id_fact=set_factura($id_cliente, $valor_total);


										while ($i<=$_SESSION['posicion']) {
											$result = get_producto_Byid($_SESSION['producto'][$i]);

											if($datos_productos=$result->fetch_assoc()) { 
												$cantidad=1;
												$valor=$datos_productos['valor'];
												$id_juego=$datos_productos['_id_juego'];

												
												set_fac_detalle($cantidad, $valor, $id_juego, $id_fact);
												
										}
										


									$i++;
									

									}

									
									}		

									?>

</tr>
					<table>

						<tr>
								<td class="log"><img class="logofac" src="../img/preview/logoblanco.png"/> </td>
								<td class="factura">		
									<ul  >	
										<?php echo "<h3><li>".$r_social."</li>
											<li>NIT: ".$identificacion_emp." </li>
											<li>".$sitio." </li></h3>";
											?>
									</ul>
								</td>
								<td  class="factura1">
								<?php  echo "<h3>".$id_fact."</h3>
								<h3>".date('Y-m-d')."</h3></td>"; ?>

						</tr>
						<tr><td colspan="3"><hr></td></tr>
						<tr>
							<td colspan="2" >
					
									<h4><ul>	
										<li>Tipo de cuenta: Ahorros <input  class="input"  type="text" value="X" size="1" disabled="" /> 
										<li>Numero de cuenta: <?php echo $n_cuenta; ?></li>
										<li>Depositante: <?php echo $n_cliente; ?></li>
										<li>Identificacion: <?php echo $identificacion; ?></li>
									</ul></h4>
								
							</td>
							<td>
									<h4><ul>	
											<li>Tipo de pago: Efectivo <input value="X" size="1" disabled=""> </li>

											<li>Juegos:<?php echo $i; ?></li>
											
											<li>Valor a pagar:<?php echo $valor_total; ?></li>
											
									</ul></h4>
								
							</td>
						</tr>
						<tr><td colspan="3"><hr></td></tr>
						<tr>
						
						
						</table>
						<button><a action="procesar-factura.php" href="javascript:window.print()">Imprimir</a></button>


		
			
		
</body>
</html>
			

		