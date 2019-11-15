
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
         <a class="navbar-brand" href="../index.php">
        <img src="http://img.erikbianco.me/i/virbo.png" width="40" height="40" class="d-inline-block align-top" alt="" href="../index.php">
        Vibro
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <div class="navbar-nav ml-auto">
            <a class="nav-item nav-link active" href="../index.php">Home <span class="sr-only">(current)</span></a>
            <a class="nav-item nav-link mr-md-2 " href="../vibro/login.html">Login</a>
			<a class="nav-item nav-link mr-md-2 " href='../../ade/dashboard/login.php?link=localhost<?php echo $_SERVER['REQUEST_URI']; ?>'>Iniciar sesión</a>
			<a class="nav-item nav-link mr-md-2 " href="#">Crear un post</a>
            <div><a href="../vibro/register.html" class="btn btn-danger mr-4">Register</a></div>
            <form class="form-inline my-2 my-lg-0">
              <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
              <button class="btn btn-danger mr-4 my-2 my-sm-0" type="submit">Buscar</button>
            </form>
          </div> 
        </div>
      </nav>
    </div>

    <!-- main -->
<html>
    <body>
	<div class="container mb-5" style="padding-top:11vh">
      <div class="row">
        <!-- articulo -->
        <div class="col-12">
          <!-- articulo n 1 -->
          <div class="card mb-2">
            <div class="card-body ">
		<h1>Crear un post</h1>
			<form action="create.php">
			<div class="form-group">
				<label for="title">Nombre del post</label>
				<input type="text" name="title"class="form-control"><br>
				<label for="title">Contenido</label><br>
				<textarea name="content" rows="4"  class="form-control"></textarea> 
				<small class="form-text text-muted">La casilla de contenido soporta <a href="https://markdown.es/">Markdown</a>.</small><br>
				<div class="row">
				<div class="col-sm-6">
				<select id="year" name="year" class="form-control form-control-sm">
				  <option value="1ro">Primer año</option>
				  <option value="2do">Segundo año</option>
				  <option value="3ro">Tercer año</option>
				  <option value="4to">Cuarto año</option>
				  <option value="5to">Quinto año</option>
				  <option value="6to">Sexto año</option>
				  <option value="7mo">Septimo año</option>
				 </select>
				 </div>
				 <div class="col-sm-6">
				 <select id="division" name="division" class="form-control form-control-sm">
				  <option value="1ra">Primera división</option>
				  <option value="2da">Segunda división</option>
				  <option value="3ra">Tercera división</option>
				  <option value="4ta">Cuarta división</option>
				 </select><br>
				 </div>
				 </div>
				 <div class="row">
				<div class="col-sm-6">
				<label for="title">Materia</label>
				<input type="subject" name="subject" class="form-control" placeholder="Matemáticas"><br>
				</div>
				<div class="col-sm-6">
				<label for="title">Link a imágen</label>
				<input type="img" name="img" class="form-control" placeholder="http://img.erikbianco.me/ejemplo.png"><br>
				
				</div>
				
				 </div>
				<input type="submit" value="Subir" class="btn btn-primary">
			</form> 
			</div>
			</div>
			</div>
			</div>
			</div>
			
    </body>
</html>

    <!-- fin main -->

    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
   

  </body>
</html>



		