<? 
	include("header.php");
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
			}
			?>
		</table>
	</section>		

</body>
</html>