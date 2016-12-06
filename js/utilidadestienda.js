$(document).ready(inicio);

function inicio(){

	$(".buttontienda").click(cargarcarrito); 
	
	
	/*$("#comprasjs").load("estadocarrito.php");*/	

}


function cargarVersion(){
	
	$("#version").load("php/infoversion.php?id="+$(this).val());
}


