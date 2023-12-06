<!DOCTYPE html>
<html lang="en" >
<head>
  	<meta charset="UTF-8">
  	<title>Inicio || Técnico</title>
  	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
	<script src="https://kit.fontawesome.com/825e76f8f3.js" crossorigin="anonymous"></script>
	<link rel="stylesheet" href="../css/tecnico/index.css">
	<link rel="icon" href="../img/logo.png">
</head>
<body>
<!-- partial:index.partial.html -->
<div class="app">
	<?php
	include "../includes/header_tec.php";
	include "../includes/barranav_tec.php";
	
	?>
	
		<div class="app-body-main-content">
			<section class="service-section">
				<h2>Notificaciones</h2>
			
				<div class="tiles">
					<article class="tile">
						<div class="tile-header">
							<img src="../img/redes.png" >
							<h3>
								<span>Redes</span>
								<span></span>
							</h3>
						</div>
						<a href="#" onclick="">
							<span>Ir a redes</span>
							<span class="icon-button">
								<i class="ph-caret-right-bold"></i>
							</span>
						</a>
					</article>
					<article class="tile">
						<div class="tile-header">
							<img src="../img/instalaciones.png" >
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
							<img src="../img/mapa.png" >
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
				</div>
			</section>
		</div>
	</div>
</div>
<!-- partial -->
  <script src='https://unpkg.com/phosphor-icons'></script><script  src="./script.js"></script>
</body>
</html>
