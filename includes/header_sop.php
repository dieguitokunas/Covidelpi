<header class="app-header">
	<div class="app-header-mobile">
		<button class="icon-button large" id="btn">
			<i class="ph-list"></i>
		</button>
	</div>
	<div class="app-header-logo">
		<a href="../sop_tecnico/index.php">
			<div class="logo">
				<span class="logo-icon">
					<img src="../img/logo.png" />
				</span>
				<h1 class="logo-title">
					<span>Covidelpi</span>
					<span>
						<?php
						session_start();
						if (empty($_SESSION["id"])) {
							session_destroy();
							header("location:../index.php");
						}

						switch ($_SESSION["id_cargo"]) {
							case 1:
								header("location:../tecnico/index.php");
								break;
							case 3:
								header("location:../call_center/index.php");
								break;
						}

						echo $_SESSION["rol"];
						?>
					</span>
				</h1>
			</div>
		</a>
	</div>


	<div class="app-header-actions">
		<button class="user-profile">
			<span class="nombre">
				<?php


				echo $_SESSION["nombre"];
				echo " ";
				echo $_SESSION["apellido"];
				?>

			</span>
			<span class="foto">
				<?php
				$perfil = "../img/perfil.jpg";
				if (empty($_SESSION["foto"]) || $_SESSION["foto"] == "../img/") {
					echo '<img src=' . $perfil . ' alt="Sin foto de perfil">';
				} else {
					echo '<img src=' . $_SESSION["foto"] . '>';
				}

				?>
			</span>
		</button>

	</div>


</header>