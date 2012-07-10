<!DOCTYPE HTML>
<html lang="es">
<head>
	<link rel="stylesheet" type="text/css" href="css/style.css">
	<meta charset="UTF-8">
	<title>Sistema Contable</title>
</head>
<body style="background:url(img/fondo.jpg);">

	<section class="contenedor">			
		<form action="conexion.php" method="POST">
			<label for="usuario">Nombre de Usuario</label>
			<input type="text" name="usuario" placeholder="usuario" required>
			<label for="">Contraseña</label>
			<input type="password" name="contrasena" placeholder="contrasena" required>
			<input type="submit" value="Ingresar">
		</form>
	</section>
	<footer>
		<h2>&copy; Ingeniería de Sistemas y Computación</h2>
	</footer>
</body>
</html>