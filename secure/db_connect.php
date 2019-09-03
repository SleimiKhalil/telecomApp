<?php 
/*
define("HOST", "127.0.0.1"); // The host you want to connect to.
define("USER", "root"); // The database username.
define("PASSWORD", ""); // The database password. 
define("DATABASE", "telecom"); // The database name.
 */
$mysqli = mysqli_connect("127.0.0.1", "root", "", "telecom");
	if (mysqli_connect_errno($mysqli))
	{
  		echo "Failed to connect to MySQL: " . mysqli_connect_error();
  	}
	
;?>
