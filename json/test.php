<?php

require '../class/autoload.php';

$objData    = new data();
$objSchool  = new school();
$listSchool = $objSchool->getListSchool($objData->$m_cnx);
echo $listSchool;

?>