<?php
	include_once('../lib/dompdf/dompdf_config.inc.php');
	$pdf=new dompdf();
	$pdf->load_html(file_get_contents("http://localhost:8012/innovagamer01/formulario_factura.html"));
	$pdf->render();
	$pdf->stream("factura.pdf");
?>