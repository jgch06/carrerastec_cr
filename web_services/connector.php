<?php
	
	//Database user connection, set with UTF-8 to allow accented characters
	function request_connection()
	{
		$server = "us-cdbr-iron-east-01.cleardb.net";
		//$user = "AMCareerUser";
		$user = "bd5a77700870d2";
		//$password = "S{ZT,J)nzsAm";
		$password = "95168230";
		//$database = "AMCareerDB";
		$database = "heroku_f6e6709b7355dc5";
		$conn = mysqli_connect($server, $user, $password, $database);
		mysqli_query($conn,"SET NAMES 'utf8'");
		
		if(!$conn->errno)
		{
			return $conn;
		}			
		return;
	}
	
	//Closes database connection, call this when finished using connection
	function close_connection($conn)
	{
		mysqli_close($conn);
	}
?>