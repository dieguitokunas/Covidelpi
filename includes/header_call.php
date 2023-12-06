<header class="app-header">
	<div class="app-header-logo">
		<div class="logo">
			<span class="logo-icon">
				<img src="../img/logo.png" />
			</span>
			<h1 class="logo-title">
				<span>Covidelpi</span>
				<span><?php
						session_start();

						echo $_SESSION["rol"];
						?>
				</span>
			</h1>
		</div>
	</div>
	<div class="app-header-navigation">
		<div class="tabs">
			<a href="#">

			</a>
			<a href="#">

			</a>
			<a href="#">

			</a>
			<a href="#">

			</a>
			<a href="#">

			</a>
		</div>
	</div>
	<div class="app-header-actions">
		<button class="user-profile">
			<span>
				<?php

				if (empty($_SESSION["id"])) {
					session_destroy();
					header("location:../index.php");
				}

				switch ($_SESSION["id_cargo"]) {
					case 1:
						header("location:../tecnico/index.php");
						break;
					case 2:
						header("location:../sop_tecnico/index.php");
						break;
				}

				echo $_SESSION["nombre"];
				echo " ";
				echo $_SESSION["apellido"];
				?>

			</span>
			<span>
				<?php
				$perfil = "../img/perfil.jpg";
				if ($_SESSION["foto"] == "../img/" || "") {
					echo '<img src=' . $perfil . '>';
				} else {
					echo '<img src=' . $_SESSION["foto"] . '>';
				}
				?>
			</span>
		</button>

	</div>
	<div class="app-header-mobile">
		<button class="icon-button large">
			<i class="ph-list"></i>
		</button>
	</div>

</header>