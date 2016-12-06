$(document).ready(inicio);

function inicio(){

	
	$(".button").click(cargarcarrito); 
	$(".button2").click(cargarVersion);

	
	/*$("#comprasjs").load("estadocarrito.php");*/	

}
function cargarcarrito(){


$("#temporal").load("php/estado_carrito.php?producto_id="+$(this).val());
$("#carritoimg").attr("src","img/carrito_lleno.png");


}

function cargarVersion(){
	
	$("#version").load("php/infoversion.php?id="+$(this).val());
}


