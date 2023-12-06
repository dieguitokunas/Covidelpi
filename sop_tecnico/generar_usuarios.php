<?php 
    include ("../db/conexion.php");

if(!empty("enviar")){
    $nombre = $_POST['nombre'];
    $apellido = $_POST['apellido'];
         $usuario = $_POST['usuario'];
         $password = $_POST['password'];
         $id_cargo = $_POST['rol'];
         $directorio="../img/";
         $foto=$directorio.$_FILES['imagen']["name"];
         $upload=$directorio. basename($_FILES["imagen"]["name"]);


        $carpeta=$directorio.basename($usuario);
        mkdir($carpeta, 0755);
        $archivo=$_FILES['imagen']["name"];
        $ruta=$carpeta.'/'.$archivo;



         if (move_uploaded_file($_FILES["imagen"]["tmp_name"],$ruta)){

             header ("location: nuevo_usuario.php");
         }

         $carga = $conex->query("INSERT INTO usuarios (nombre, apellido, usuario, password,foto, id_cargo) 
         VALUES ('$nombre', '$apellido', '$usuario', '$password','$ruta', $id_cargo)");
}else{

    echo '<script type="text/javascript"> alert("Error al generar usuario"); history.back();</script>';
}
