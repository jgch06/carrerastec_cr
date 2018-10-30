<?php

	include "connector.php";

	$row;
	$id;
	$result;
	$conn = request_connection();
	$section_data = array();
	
	$stmt = mysqli_prepare($conn,'SELECT idSection, name, description, image, titleColor FROM sections WHERE career_idCareer = ?');
	
	if($_GET["id"])
	{
		$id = $_GET["id"];
		mysqli_stmt_bind_param($stmt, 'd', $id);
		mysqli_stmt_execute($stmt);
		$result = mysqli_stmt_get_result($stmt);
		
		if(!$result)
		{
			echo 'MySQL Error: ' . mysqli_error($conn);
			exit;
		}
		
		while($row = mysqli_fetch_assoc($result))
		{
			$section_data[] = $row;
		}
		print json_encode($section_data,JSON_UNESCAPED_UNICODE);
		close_connection($conn);
	}

?>