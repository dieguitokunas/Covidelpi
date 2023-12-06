<!DOCTYPE html>
<html lang="es">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Clientes || Soporte Tecnico</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <script src="https://kit.fontawesome.com/825e76f8f3.js" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="../css/sop_tecnico/clientes.css">
  <link rel="stylesheet" href="../css/sop_tecnico/index.css">
  <link rel="icon" href="../img/logo.png">
</head>

<body>
  <div class="app">
    <?php
    include "../includes/header_sop.php";
    include "../includes/barranav_sop.php";
    ?>



    <table class="default">

      <tr>
        <th>ID de cliente</th>
        <th>Nombre</th>
        <th>Apellido</th>
        <th>DNI</th>
        <th>Telefono</th>
        <th>Domicilio</th>
        <th>Servicio</th>
        <th>ONU</th>
      </tr>
      <?php
      include "../db/conexion.php";

      $query = $conex->query("SELECT * FROM usuarios");

      while ($row = $query->fetch_assoc()) {
        echo '<tr>';
        echo '<td>' . $row["id"] . '</td>';
        echo '<td>' . $row["nombre"] . '</td>';
        echo '<td>' . $row["apellido"] . '</td>';
        echo '<td>' . $row["usuario"] . '</td>';
        echo '<td>' . $row["password"] . '</td>';
        echo '<td>' . $row["foto"] . '</td>';
        echo '<td>' . $row["id_cargo"] . '</td>';
        echo '</tr>';
      }

      ?>
      <!-- <tr>
  <td>Celda 3</td>
  <td>Celda 4</td>
  <td>Celda 5</td>
  <td>Celda 6</td>
</tr> -->

    </table>
  </div>
  <script src='https://unpkg.com/phosphor-icons'></script>
  <script src="./script.js"></script>
</body>
<script src="../js/sop_tecnico/main.js"></script>

</html>