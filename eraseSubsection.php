<?php


require_once("lib/db_connect.php");
$db = Conectar::conexion();

$idSubsection = $_GET["id"];

$sql = 'CALL eliminarSubseccion(?)';
$stmt = $db->prepare($sql);
$stmt->bindParam(1, $idSubsection, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
$stmt->execute();

header('location: sections.php');


?>
