

<?php
require('lib/pdf/fpdf.php');

$pdf = new FPDF();
$pdf->AddPage();
$pdf->SetFont('Arial','B',16);
//$pdf->Cell(40,10,'¡Hola, Mundo!');
$pdf->Image('img/preview/logoblanco.png',10,12,22);
	$pdf->Cell(0,10,'INNOVA GAMER','',0,'C');
	$pdf->Ln();
	$pdf->Cell(0,10,'#111111','',0,'R');
	$pdf->Ln();
	$pdf->Cell(0,10,'NIT:83165338-5','',0,'C');
	$pdf->Ln();
	$pdf->Cell(0,10,'www.InnovaGamer.com','',0,'C');
	$pdf->Ln();
	$pdf->Cell(0,10,'_________________________________________________________________________________________________','',0,'C');
	$pdf->Ln();
	$pdf->Ln();
	$pdf->SetFont('Arial','',12);
	$pdf->Cell(45,6,'Tipo de Cuenta','','','LR');
	$pdf->Cell(45,6,'Ahorros X','','','LR');

	$pdf->Cell(45,6,'Tipo de pago','','','LR');
	$pdf->Cell(45,6,'Efectivo','','','LR');

	$pdf->Ln();
	$pdf->Cell(45,6,'No. Cuenta:','','','LR');
	$pdf->Cell(45,6,'545-246-4452','','','LR');

	$pdf->Cell(45,6,'Valor a pagar:','','','LR');
	$pdf->Cell(45,6,'_____________','','','LR');

	$pdf->Ln();
	$pdf->Cell(45,6,'Identificacion:','','','LR');
	$pdf->Cell(45,6,'_____________','','','LR');
	$pdf->Ln();
	$pdf->Cell(45,6,'Depositante:','','','LR');
	$pdf->Cell(45,6,'_____________','','','LR');



	$pdf->Ln();
	$pdf->Ln();
	$pdf->Ln();
	$pdf->Ln();
	$pdf->Cell(0,10,'_________________________________________________________________________________________________','',0,'C');


$pdf->Output();
?>


