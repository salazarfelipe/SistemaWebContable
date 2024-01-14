<? 
	include("header.php");
?>

	<section class="contenido">
		<header class="tituloContenido">
			<hgroup>
					<h2>Empresa S.A.</h2>
					<h2>Balance General</h2>
					<h2>Junio 2012</h2>
			</hgroup>	
		</header>
		<table class='tab' id='tab'>
			<tr>
				<td rowspan='3'>
					<table class="tab2">
						<tr>
							<th colspan='2'>Activos</th>
						</tr>
						<?
							include("conexion.php");
							$consultaActivos = mysqli_query($connection,"SELECT * FROM Resumen_Cuentas WHERE TIPO ='Activo'");
							$consultaPasivos = mysqli_query($connection,"SELECT * FROM Resumen_Cuentas WHERE TIPO ='Pasivo'");
							$consultaPatrimonio = mysqli_query($connection,"SELECT * FROM Resumen_Cuentas WHERE TIPO ='Patrimonio'");
							$ConsultaTotalActivos = mysqli_query($connection,"SELECT SUM(VALOR) AS TOTAL FROM Resumen_Cuentas WHERE TIPO='Activo'");
							$ConsultaTotalPasivos = mysqli_query($connection,"SELECT SUM(VALOR) AS TOTAL FROM Resumen_Cuentas WHERE TIPO='Pasivo'");
							$ConsultaTotalPatrimonio = mysqli_query($connection,"SELECT SUM(VALOR) AS TOTAL FROM Resumen_Cuentas WHERE TIPO='Patrimonio'");
							$ConsultaTotalPatrimonio2 = mysqli_query($connection,"SELECT VALOR FROM Utilidad_Del_Ejercicio");
							$totalActivos = mysqli_fetch_array($ConsultaTotalActivos);
							$totalPasivos = mysqli_fetch_array($ConsultaTotalPasivos);
							$totalPatrimonio = mysqli_fetch_array($ConsultaTotalPatrimonio);
							$totalPatrimonio2 = mysqli_fetch_array($ConsultaTotalPatrimonio2);
							while($row1 = mysqli_fetch_array($consultaActivos)){
								echo"<tr>
										<td>".$row1['CUENTA']."</td>
										<td class='valor'>".$row1["VALOR"]."</td>
									</tr>";
							}
							echo"<tr>
									<th>Total Activos</th>
									<td class='valor cierreTmp'>".$totalActivos["TOTAL"]."</td>
								</tr>";

						?>
						
					</table>
				</td>
				<td colspan='2'>
					<table class="tab2">
						<tr>
							<th colspan='2'>Pasivos</th>
						</tr>
						<?
						while($row2 = mysqli_fetch_array($consultaPasivos)){
								echo"<tr>
										<td>".$row2["CUENTA"]."</td>
										<td class='valor'>".$row2["VALOR"]."</td>
									</tr>";
						}
						echo"<tr>
								<th>Total Pasivos</th>
								<td class='valor'>".$totalPasivos["TOTAL"]."</td>
							</tr>";
						?>
						<tr>
							<th colspan='2'>Patrimonio</th>
						</tr>
						<?
						while($row3 = mysqli_fetch_array($consultaPatrimonio)){
								echo"<tr>
										<td>".$row3["CUENTA"]."</td>
										<td class='valor'>".$row3["VALOR"]."</td>
									</tr>";
						}
						echo"<tr>
								<td>Utilidad Del Ejercicio</td>
								<td class='valor'>".$totalPatrimonio2["VALOR"]."</td>
							</tr>";
						$patrimonioTotal = $totalPatrimonio["TOTAL"] + $totalPatrimonio2["VALOR"];
						echo"<tr>
								<th>Total Patrimonio</th>
								<td class='valor'>$patrimonioTotal</td>
							</tr>";
						$patrimonioMasPasivo = $patrimonioTotal + $totalPasivos["TOTAL"];

						echo"<tr>
								<th>Total Patrimonio + Pasivos</th>
								<td class='valor cierreTmp'>".$patrimonioMasPasivo."</td>
							</tr>";
						?>
						
					</table>
				</td>
			</tr>
		</table>
	</section>		

</body>
</html>