<?php

session_start();


// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'vibro');


try {
	// initializing variables
	$author    = "Autor desconocido";
	$title     = mysqli_real_escape_string($db, $_GET['title']);
	$content   = mysqli_real_escape_string($db, $_GET['content']);
	$errors = array(); 

	$query = "INSERT INTO post (author,title,content) VALUES('$author', '$title', '$content')";
				  /*todo: checkear valores duplicados*/
	mysqli_query($db, $query);
	$_SESSION['success'] = "¡El post fue agregado correctamente!";
	header('location: ../');
}
catch (Exception $e) {
	echo 'Upsi woopsi! UWU Nos mawdamos uwa cawada!: ',  $e->getMessage(), "\n";
}
?>