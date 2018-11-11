<?php


require_once("lib/db_connect.php");
$db = Conectar::conexion();

$idSectionImage = $_GET["idSectionImage"];

$sql = 'CALL eliminarImagenesSeccion(?)';
$stmt = $db->prepare($sql);
$stmt->bindParam(1, $idSectionImage, PDO::PARAM_STR|PDO::PARAM_INPUT_OUTPUT, 11);
$stmt->execute();


$id = $_GET['id'];
$name = $_GET['name'];
$idSection = $_GET['idSection'];
$nameSection = $_GET['nameSection'];

header('location: sectionImages.php?id='.$id.'&name='.$name.'&idSection='.$idSection.'&nameSection='.$nameSection);

?>
