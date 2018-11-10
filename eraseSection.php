<?php


require_once("lib/db_connect.php");
$db = Conectar::conexion();

$idSection = $_GET["id"];

$sql = 'CALL eliminarSeccion(?)';
$stmt = $db->prepare($sql);
$stmt->bindParam(1, $idSection, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
$stmt->execute();

header('location: sections.php');


?>
