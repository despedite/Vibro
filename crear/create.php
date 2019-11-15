<?php

session_start();
include 'Parsedown.php';


// connect to the database
$db = mysqli_connect('localhost', 'root', '', 'vibro');


try {
	$Parsedown = new Parsedown();
	$Parsedown->setBreaksEnabled(true);
	
	class LiteralBreaks extends Parsedown
{
    protected function paragraph($Line)
    {
        if (substr($Line['text'], -1) === '#')
        {
            $closed = true;

            $Line['text'] = substr($Line['text'], 0, -1);
        }

        $Block = parent::paragraph($Line);

        if (isset($closed))
        {
            $Block['closed'] = true;
        }

        return $Block;
    }

    protected function paragraphContinue($Line, array $Block)
    {
        if (isset($Block['closed']))
        {
            return;
        }

        if (isset($Block['interrupted']))
        {
            $Block['element']['handler']['argument'] .= '  '.str_repeat("\n  ", $Block['interrupted']);
            unset($Block['interrupted']);
        }

        if (substr($Line['text'], -1) === '#')
        {
            $Block['closed'] = true;

            $Line['text'] = substr($Line['text'], 0, -1);
        }

        $Block['element']['handler']['argument'] .= "\n".$Line['text'];

        return $Block;
    }
}
	
	// initializing variables
	$author    = "Autor desconocido";
	$title     = mysqli_real_escape_string($db, $_GET['title']);
	$content   = mysqli_real_escape_string($db, $_GET['content']);
	$year      = mysqli_real_escape_string($db, $_GET['year']);
	$division  = mysqli_real_escape_string($db, $_GET['division']);
	$subject   = mysqli_real_escape_string($db, $_GET['subject']);
	$img       = mysqli_real_escape_string($db, $_GET['img']);
	
	$content = $Parsedown->text($content);
	
	if(empty($img)) {
		$img = "vibro/images/default.png";
	}
	
	$errors = array(); 

	$query = "INSERT INTO post (author,title,content,year,division,subject,img) VALUES('$author', '$title', '$content', '$year', '$division', '$subject', '$img')";
				  /*todo: checkear valores duplicados*/
	mysqli_query($db, $query);
	$_SESSION['success'] = "¡El post fue agregado correctamente!";
	header('location: ../');
}
catch (Exception $e) {
	echo 'Upsi woopsi! UWU Nos mawdamos uwa cawada!: ',  $e->getMessage(), "\n";
}
?>