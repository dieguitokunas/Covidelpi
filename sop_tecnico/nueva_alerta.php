<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Inicio || Soporte Tecnico</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
    <script src="https://kit.fontawesome.com/825e76f8f3.js" crossorigin="anonymous"></script>
    <link rel="stylesheet" href="../css/sop_tecnico/index.css">
    <link rel="stylesheet" href="../css/sop_tecnico/alertas.css">
    <link rel="icon" href="../img/logo.png">
</head>

<body>
    <div class="app">
        <?php
        include "../includes/header_sop.php";
        include "../includes/barranav_sop.php";
        include "../db/conexion.php";

        $tipo_alerta = $conex->query("SELECT tipo_alarma FROM tipo_alarmas ORDER BY id")

        ?>
        <div class="app-body-alertas">

            <div class="app-form-alertas">
                <form action="generar_alerta.php" method="post" class="form-alertas">
                    <h1>Agregar Alerta</h1>

                    <input type="text" name="titulo" placeholder="Titulo">
                    <input type="text" name="descripcion" placeholder="Descripcion">
                    <select name="tipo_alerta">
                        <option value="0">Prioridad</option>
                        <?php

                        while ($row = $tipo_alerta->fetch_assoc()) {
                            echo '<option>' . $row["tipo_alarma"] . '</option>';
                        }
                        ?>


                    </select><br>
                    <button type="submit" name="submit">Agregar</button>
                </form>
            </div>

        </div>
    </div>
</body>
<script src='https://unpkg.com/phosphor-icons'></script>
<script src="../js/sop_tecnico/main.js"></script>

</html>