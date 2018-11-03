<?php


require_once("lib/db_connect.php");
$db = Conectar::conexion();

$idCarrera = $_GET["id"];

$sql = 'CALL actualizarCarrera(?)';
$stmt = $db->prepare($sql);
$stmt->bindParam(1, $idCarrera, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
$stmt->execute();

header('location: erase.php');


?>
