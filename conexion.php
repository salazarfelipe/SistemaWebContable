<?
//show errors
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

$connection= mysqli_connect("localhost","root","q1w2e3r4") or die("<script language='JavaScript' type='text/javascript'>alert('No se puede Conectar a la base de datos');</script>");

mysqli_select_db($connection, "contabilidad");
?>
