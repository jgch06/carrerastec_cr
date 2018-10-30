<?php

class Conectar
{
	public static function conexion(){
	
		try{
	
			$conexion = new PDO('mysql:host=us-cdbr-iron-east-01.cleardb.net;dbname=heroku_f6e6709b7355dc5', 'bd5a77700870d2', '95168230');
			$conexion->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
			$conexion->exec("SET CHARACTER SET UTF8");

		}catch(Exception $e){
			die("Error".$e->getMessage());
			echo("Linea de error".$e->getLine());
		}

		return $conexion;
	}
}

?>




