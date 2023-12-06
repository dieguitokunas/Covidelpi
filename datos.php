<?php
session_start();
require "db/conexion.php";
if (isset($_POST['enviar'])) { //si button 'enviar' no esta vacio:
    if (!empty($_POST['user']) && !empty($_POST['pass'])) { //si usuario y contraseña no estan vacios:
        $user = $_POST['user'];
        $password = $_POST['pass'];
        //establece una consulta a la base de datos y la ejecuta en la misma linea
        $query = $conex->prepare("SELECT *, r.cargo as rol FROM usuarios INNER JOIN roles r ON usuarios.id_cargo=r.id
        WHERE usuario=? AND password=?"); //INNER JOIN iguala a "id" de la tabla "roles" y a "id_cargo" de "usuarios", lo que permite mostrar el campo "rol"
        $query->bind_param("ss", $user, $password);
        $query->execute();
        $resultado = $query->get_result();

        if ($datos = $resultado->fetch_object()) {
            $_SESSION["id"] = $datos->id; //Guarda el id de usuarios en una variable de tipo session
            $_SESSION["nombre"] = $datos->nombre;
            $_SESSION["apellido"] = $datos->apellido;
            $_SESSION["usuario"] = $datos->usuario;
            $_SESSION["rol"] = $datos->rol;
            $_SESSION["id_cargo"] = $datos->id_cargo;
            $_SESSION["foto"] = $datos->foto;
        }

        // Con switch case
        switch ($_SESSION["id_cargo"]) {
            case 1:
                header("location:tecnico/index.php");
                break;
            case 2:
                header("location:sop_tecnico/index.php");
                break;
            case 3:
                header("location:call_center/index.php");
                break;
            default:
                header("location:index.php");
                break;
        }
        //Con if
        // if($datos->id_cargo==2){
        //     header("location:sop_tecnico/index.php");
        // }elseif ($datos->id_cargo==1){
        //     header("location:tecnico/index.php");
        // }elseif ($datos->id_cargo==3){
        //     header("location:call_center/index.php");
        // }
        // else {
        //     header("location: index.php");
        // }
    }
}
