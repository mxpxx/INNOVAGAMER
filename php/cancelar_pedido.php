<?php

include_once ('utilidades.php');

$aux=$_SESSION['email'];
$aux2=$_SESSION['rol'];

$_SESSION=[];

$_SESSION['email']=$aux;
$_SESSION['rol']=$aux2;

header('location:../index.php');

echo "Sus compran han sido canceladas";

?>
