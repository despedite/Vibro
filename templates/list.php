<!doctype html>
<html lang="es">
  <head>
    <!-- Favicon -->
    <link rel="shortcut icon" href="favicon.ico"/>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">

  <!-- Style -->
  <style>
    .slider{
      background-image: url("vibro/Slide.png");
      background-size: cover;
      background-position: center;
      height: 400px;
    }
  </style>

    <!-- Metas opcionales -->
    <title>Vibro</title>
    <meta name="description" content="Pagina de ayuda para alumnos">
    <meta name="keywords" content="HTML,CSS,XML,JavaScript">
    <meta name="author" content="TeamVibro">
  </head>
  <body>


    <!-- menu -->
    <div class="container-fluid bg-dark fixed-top text-center">
      <nav class="navbar navbar-expand-lg navbar-light bg-light navbar-dark bg-dark container">
         <a class="navbar-brand" href="index.php">
        <img src="http://img.erikbianco.me/i/virbo.png" width="40" height="40" class="d-inline-block align-top" alt="" href="index.php">
        Vibro
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="navbar-nav ml-auto">
            <a class="nav-item nav-link active" href="index.php">Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link mr-md-2 " href="vibro/login.html">Login</a>
			<a class="nav-item nav-link mr-md-2 " href='../ade/dashboard/login.php?link=localhost<?php echo $_SERVER['REQUEST_URI']; ?>'>Iniciar sesión</a>
			<a class="nav-item nav-link mr-md-2 " href="/vibro/crear">Crear un post</a>
            <div><a href="vibro/register.html" class="btn btn-danger mr-4">Register</a></div>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-danger mr-4 my-2 my-sm-0" type="submit">Buscar</button>
            </form>
          </div> 
        </div>
      </nav>
    </div>
    <!-- fin menu -->

    <!-- Slider -->
    <div class="container-fluid slider d-flex flex-column justify-content-center d-flex align-items-center">
      <div class="text-center">
        <h2 class="hiden-xs-down">Vibro</h2>
        <h1 class="display ">Investiga, aprende, sé autodidacta</h1>
        <p class="lead hiden-xs-down">Todos los diseños curriculares, explicaciones de docentes y alumnos.</p>
      </div>

    </div>
    
    <!-- fin Slider -->

    <!-- main -->

    <div class="container mb-5">
      <p class="lead" style="padding-top: 5vh"><b>Últimos apuntes</b></p>
      <hr>
      <div class="row">
        <!-- articulo -->
        <div class="col-12">
		<?php $i=0; foreach ($posts as $post): ?>
          <!-- articulo n 1 -->
          <div class="card mb-2">
            <div class="card-body ">
              <div class="row mb-2">
                <div class="col-3">
                  <img src="<?php echo $post['img'] ?>" class="img-fluid">
                  <p class="text-center"><?php echo $post['author'] ?><br><small><?php echo $post['date'] ?></small></p>
                </div>
                <div class="col-9">
                  <a href="templates/show.php?id=<?php echo $post['id'] ?>"><h3><?php echo $post['title'] ?></h3></a>
                  <a href=""><span class="badge badge-primary"><?php echo $post['subject'] ?></span></a>
                  <a href=""><span class="badge badge-danger"><?php echo $post['year'] ?></span></a>
                  <a href=""><span class="badge badge-success"><?php echo $post['division'] ?></span></a>
                  <p>
                    <?php
					# Elimina saltos de línea en el texto, y corta solo los primeros 300 carácteres.
					$newvar = substr($post['content'], 0, 300);
					$newvar = str_replace('<pre>', '', $newvar);
					$newvar = str_replace('</pre>', '', $newvar);
					if (strlen($newvar) >= 300) { echo $newvar . "..."; } else { echo $newvar; }
					?>
				  </p>
                  <a href="templates/show.php?id=<?php echo $post['id'] ?>" class="btn btn-warning btn-sm"> Leer mas</a>
                </div>
              </div>
          </div>
      </div>
	  <?php $i = $i+1;
	  if ($i > 5) { break; }
	  endforeach; ?>
          <!-- fin articulo n 1 -->
		  <a href="posts/" class="btn btn-warning btn-sm">Ver todos los posts</a>

        </div>
        <!-- fin de articulo -->
        <!-- aside -->
        <div class="col-3">
          
        </div>
        <!-- fin aside -->
      </div>
    </div>

    <!-- fin main -->

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   

  </body>
</html>