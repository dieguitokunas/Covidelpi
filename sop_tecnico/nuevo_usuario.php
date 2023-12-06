<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Crear usuarios || Soporte Tecnico</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<script src="https://kit.fontawesome.com/825e76f8f3.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../css/sop_tecnico/nuevo_usuario.css">
	<link rel="stylesheet" href="../css/sop_tecnico/index.css">
	<link rel="icon" href="../img/logo.png">
</head>

<body>
	<div class="app">
		<?php
		include "../includes/header_sop.php";
		include "../includes/barranav_sop.php";
		?>

		<div class="formulario_usuario_div">
			<form action="generar_usuarios.php" method="POST" class="formulario_usuario" enctype="multipart/form-data">
				<span class="registrar">Registrar </span>
				<div class="na">
					<input type="text" placeholder="Nombre" class="form-input" name="nombre">
					<input type="text" placeholder="Apellido" class="form-input" name="apellido">
				</div>
				<input type="text" placeholder="Usuario" class="form-input" name="usuario">
				<input type="password" placeholder="Contraseña" class="form-input" name="password">
				<input type="file" class="form-file" name="imagen">

				<select name="rol" id="rol" class="form-input">
					<option value="0">Seleccione el rol</option>
					<?php
					include("../db/conexion.php");
					$resultado = $conex->query("SELECT * FROM roles");

					while ($row = $resultado->fetch_assoc()) {
						echo '<option value="' . $row['id'] . '">' . $row['cargo'] . '</option>';
					}
					?>
				</select>
				<button class="form-submit" value="enviar" type="submit">
					Enviar
				</button>
			</form>
		</div>
	</div>
	</div>
	<script src='https://unpkg.com/phosphor-icons'></script>
	<script src="./script.js"></script>
	<script src="../js/sop_tecnico/main.js"></script>
</body>

</html>