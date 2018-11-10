<?php


require_once("lib/db_connect.php");
$db = Conectar::conexion();

$id = $_GET["id"];
$idSection = $_GET["idSection"];
$name = $_GET["name"];

$sql = 'CALL eliminarSeccion(?)';
$stmt = $db->prepare($sql);
$stmt->bindParam(1, $idSection, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
$stmt->execute();

header('location: sections.php?id='.$id.'&name='.$name);


?>
