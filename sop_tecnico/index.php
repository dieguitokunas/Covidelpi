<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Inicio || Soporte Tecnico</title>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<script src="https://kit.fontawesome.com/825e76f8f3.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../css/sop_tecnico/index.css">
	<link rel="icon" href="../img/logo.png">
</head>

<body>
	<div class="app">
		<?php
		include "../includes/header_sop.php";
		include "../includes/barranav_sop.php";
		?>


		<div class="app-body-main-content">
			<div class="app-body-alerta-mobile">
				<div class="titulo">
					<h2>Alertas</h2>
					<a href="nueva_alerta.php">
						<h2>Agregar alerta
							<i class="fa-solid fa-circle-exclamation"></i>
						</h2>
					</a>
				</div>
				<div class="alerta-mobile">
					<?php
					include "../db/conexion.php";
					$alerta = $conex->query("SELECT * FROM alarmas ORDER BY id_alarma DESC LIMIT 10");

					while ($row = $alerta->fetch_assoc()) {
						echo '<div class="app-alerta-cont-mobile" style="background-color:' . $row["color"] . ';">';

						echo '<div class="app-alerta-header-mobile"><h1>' . $row["titulo"] . '</h1><h1>' . $row["fecha"] . '</h1></div>';

						echo '<div class="alerta-descripcion-mobile"><span>' . $row["texto"] . '</span></div>';

						echo '<div class="alerta-footer-mobile">';
						echo '<span>' . $row["usuario"] . '</span><span>' . $row["rol"] . '</span></div>';

						echo '</div>';
					}

					?>
					<div class="app-alerta-cont-mobile">
						<div class="app-alerta-vermas">
							<a href=""><span>Ver mas alertas</span></a>
						</div>
					</div>

				</div>
			</div>
			<section class="service-section">
				<h2>Areas</h2>

				<div class="tiles">
					<article class="tile">
						<div class="tile-header">
							<img src="../img/redes.png" />
							<h3>
								<span>Redes</span>
								<span></span>
							</h3>
						</div>
						<a href="../redes/redes.php">
							<span>Ir a redes</span>
							<span class="icon-button">
								<i class="ph-caret-right-bold"></i>
							</span>
						</a>
					</article>
					<article class="tile">
						<div class="tile-header">
							<img src="../img/instalaciones.png">
							<h3>
								<span>Instalaciones</span>
								<span></span>
							</h3>
						</div>
						<a href="#">
							<span>Ir a instalaciones</span>
							<span class="icon-button">
								<i class="ph-caret-right-bold"></i>
							</span>
						</a>
					</article>
					<article class="tile">
						<div class="tile-header">
							<img src="../img/mapa.png">
							<h3>
								<span>Mapa</span>
								<span></span>
							</h3>
						</div>
						<a href="#">
							<span>Ir al mapa</span>
							<span class="icon-button">
								<i class="ph-caret-right-bold"></i>
							</span>
						</a>
					</article>
					<article class="tile">
						<div class="tile-header">
							<img src="../img/cliente.png">
							<h3>
								<span>Clientes</span>
								<span></span>
							</h3>
						</div>
						<a href="clientes.php">
							<span>Ir a Clientes</span>
							<span class="icon-button">
								<i class="ph-caret-right-bold"></i>
							</span>
						</a>
					</article>
				</div>
			</section>
		</div>
		<div class="alerta">
			<div class="app-alerta-desk-agregar">
				<span>Alertas</span>
				<a href="nueva_alerta.php"><span>Agregar Alerta <i class="fa-solid fa-circle-exclamation"></i></span></a>
			</div>
			<div class="app-alerta-desk-body">
				<?php

				$alertadesk = $conex->query("SELECT * FROM alarmas ORDER BY id_alarma DESC LIMIT 10");
				while ($rowdesk = $alertadesk->fetch_assoc()) {

					echo '<div class="app-alerta-desk-cont" style="background-color:' . $rowdesk["color"] . ';">';

					echo '<div class="app-alerta-desk-header"><span>' . $rowdesk["titulo"] . '</span><span>' . $rowdesk["fecha"] . '</span></div>';

					echo '<div class="app-alerta-desk-desc"><span>' . $rowdesk["texto"] . '</span></div>';

					echo '<div class="app-alerta-desk-footer"><span>' . $rowdesk["usuario"] . '</span><span>' . $rowdesk["rol"] . '</span></div>';

					echo '</div>';
				}

				?>


			</div>


		</div>
	</div>
	</div>
</body>
<script src='https://unpkg.com/phosphor-icons'></script>
<script src="../js/sop_tecnico/main.js"></script>

</html>