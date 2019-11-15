<html>
    <body>
		<h1>VIBRO</h1>
		<a href='../ade/dashboard/login.php?link=localhost<?php echo $_SERVER['REQUEST_URI']; ?>'>Iniciar sesión</a> - <a href="/vibro/crear">Crear un post</a>
		<ul>
			<?php foreach ($posts as $post): ?>
			<li>
				<h2>
					<a href="templates/show.php?id=<?php echo $post['id'] ?>">
						<?php echo $post['title'] ?>
					</a>
				<h2>
				
				<h5>
				<?php echo $post['content'] ?>
				</h5>
	
			</li>
			<?php endforeach; ?>
		</ul>
    </body>
</html>


