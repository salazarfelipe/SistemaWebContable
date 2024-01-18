<? 
	include("header.php");
?>

	<section class="contenido">
		<header class="tituloContenido">
			<hgroup>
					<h2>Empresa S.A.</h2>
					<h2>Estado de Resultados</h2>
					<h2>Julio 2012</h2>
			</hgroup>	
		</header>
		<table class="tab">
			<?
				include("conexion.php");
				$consultaIngresos = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas WHERE TIPO='haber'");
				$consultaGastos = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas WHERE TIPO='debe'");
				$totalIngresos = 0;
				while($row1 = mysqli_fetch_array($consultaIngresos)){
					$totalIngresos = $totalIngresos + $row1["VALOR"];
				}

				echo "<tr>
						<th>1.Total Ingresos</th>
						<td></td>
						<td></td>
						<td class='valor cierre'>$totalIngresos</td>
					</tr>";
				$consultaIngresos = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas WHERE TIPO='haber'");
				while($fila = mysqli_fetch_array($consultaIngresos)){
					echo"<tr>
							<td></td>
							<td>$fila[CUENTA"]."</td>
							<td class='valor'>$fila[VALOR"]."</td>
							<td></td>
						</tr>";
				}
				$totalGastos = 0;
				while($row2 = mysqli_fetch_array($consultaGastos)){
					$totalGastos = $totalGastos + ".$row2["VALOR"];
				}

				echo"<tr>
						<th>2.Total Gastos</th>
						<td></td>
						<td></td>
						<td class='valor cierre'>$totalGastos</td>
					</tr>";
				$consultaGastos = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas WHERE TIPO='debe'");
				while($fila = mysqli_fetch_array($consultaGastos)){
					echo"<tr>
							<td></td>
							<td>$fila[CUENTA"]."</td>
							<td class='valor'>$fila[VALOR"]."</td>
							<td></td>
						</tr>";
				}

				$utilidadAntesImpuestos = $totalIngresos - $totalGastos;

				echo"<tr>
						<th>3.Utilidad Antes de Impuestos</th>
						<td></td>
						<td></td>
						<td class='valor cierre'>$utilidadAntesImpuestos</td>
					</tr>";

				$impuesto = $utilidadAntesImpuestos*0.33;

				echo"<tr>
						<th>4.Impuestos 33%</th>
						<td></td>
						<td></td>
						<td class='valor cierre'>$impuesto</td>
					</tr>";
				$utilidadNeta = $utilidadAntesImpuestos - $impuesto;
				echo"<tr>
						<th>5.Utilidad Neta</th>
						<td></td>
						<td></td>
						<td class='valor cierre'>$utilidadNeta</td>
					</tr>";

			?>
			
			
		</table>
	</section>		

</body>
</html>