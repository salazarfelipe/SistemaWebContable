<?
						include('header.php');
				    	include('conexion.php');
						$cuenta1 = $_POST["cuenta1"];
						$cuenta2 = $_POST["cuenta2"];
						$cuenta3 = $_POST["cuenta3"];

						$debe1 = $_POST["debe1"];
						$debe2= $_POST["debe2"];
						$debe3 = $_POST["debe3"];

						$haber1 = $_POST["haber1"];
						$haber2= $_POST["haber2"];
						$haber3 = $_POST["haber3"];

						$fecha = $_POST["fecha"];
						mysqli_query($connection,"INSERT INTO `contabilidad`.`$cuenta1` (`FECHA1` ,`DEBE` ,`HABER` ,`FECHA2` ,`CODIGO`)VALUES (NULL,NULL,'$haber1','$fecha', '');");
						/*
						else{
							mysqli_query($connection,"INSERT INTO `contabilidad`.`$cuenta1` (`FECHA1` ,`DEBE` ,`HABER` ,`FECHA2` ,`CODIGO`)VALUES ('$fecha', '$debe1', NULL , NULL , '');");
						}*/
?>
<section class="contenido">
		<header class="tituloContenido"><h2>Plan Único de Cuentas</h2></header>
		<table class='tab'>
			<tr>
				<th>CODIGO</th>	
				<th>DETALLE</th>
				<th>RAZON</th>
		    </tr>
		    <?
		    include("conexion.php");
		    $consulta = mysqli_query($connection,"SELECT * FROM puc");
		    while($linea = mysqli_fetch_array($consulta)){
 				echo "<tr>
					<td>$linea[CODIGO]</td>
					<td>$linea[DETALLE]</td>
					<td>$linea[RAZON]</td>
				</tr>";
				$numero++;
			}
			?>
		</table>
	</section>		

</body>
</html>