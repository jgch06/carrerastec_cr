<?php
	include "connector.php";
	
	$row;
	$conn = request_connection();
	$datos_carreras = array();
	mysqli_query($conn,"SET NAMES 'utf8'");
	$return_value = mysqli_query($conn,'SELECT * FROM careers');
	
	if (!$return_value) {
        echo 'MySQL Error: ' . mysqli_error($conn);
        exit;
    }
	
	while($row = mysqli_fetch_assoc($return_value))
	{
		$datos_carreras[] = $row;
	}
    print json_encode($datos_carreras,JSON_UNESCAPED_UNICODE);
	close_connection($conn);
?>