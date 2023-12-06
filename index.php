<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" href="css/login.css">
  <link rel="icon" href="img/logo.png">
  <title>Inicio || COVIDELPI</title>
</head>

<body>
  <center>
    <div class="animated-background">

      <form action="datos.php" method="POST">
        <img src="img/logo.png">
        <br>
        <br>
        <label for="usuario">
          <input type="text" name="user" id="user" required placeholder="Usuario" autofocus>
        </label>
        <br>
        <br>
        <label for="contrasena">
          <input type="password" name="pass" id="pass" required placeholder="Contraseña" min="4">
        </label>
        <br>
        <button type="submit" name="enviar">Ingresar</button>
      </form>
    </div>
  </center>
</body>

</html>