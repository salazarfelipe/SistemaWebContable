<? 
	include("header.php");
?>
	<section class="contenido">
		<header class="tituloContenido"><h2>Cuentas Creadas</h2></header>
		<table class='tab'>
			<tr>
				<th>CODIGO</th>	
				<th>DETALLE</th>
				<th>RAZON</th>
		    </tr>
		    <?
		    include("conexion.php");
		    $consulta = mysqli_query($connection,"SELECT * FROM cuentas ORDER BY RAZON");
		    while($linea = mysqli_fetch_array($consulta)){
 				echo "<tr>
					<td>".$linea["CODIGO"]."</td>
					<td>".$linea["DETALLE"]."</td>
					<td>".$linea["RAZON"]."</td>
				</tr>";
				$numero++;
			}
			?>
		</table>
	</section>		

</body>
</html>