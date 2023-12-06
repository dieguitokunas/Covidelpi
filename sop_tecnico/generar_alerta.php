<?php
include "../db/conexion.php";

session_start();

$titulo=$_REQUEST["titulo"];
$desc=$_REQUEST["descripcion"];
$tipo_alerta=$_REQUEST["tipo_alerta"];
$usuario=$_SESSION["usuario"];
$rol=$_SESSION["rol"];

$green="#38ac81";
$olive="#e3ffa8";
$gray="#bdbbb7";
$background=array($green,$olive,$gray);
$rnd=$background[array_rand($background)];


    $insertar=$conex->query("INSERT INTO alarmas (titulo,texto,tipo_alarma,usuario,rol,color) VALUES ('$titulo','$desc','$tipo_alerta','$usuario','$rol','$rnd')");

    header("location:index.php");
