<? 
	include("header.php");
?>

	<section class="contenido">
		<header class="tituloContenido">
			<hgroup>
					<h2>Empresa S.A.</h2>
					<h2>Libro Mayor</h2>
					<h2>Julio 2012</h2>
			</hgroup>	
		</header>

		<section id="libro">
			<?
				include("conexion.php");
				$cuentas = mysqli_query($connection,"SELECT * FROM cuentas ORDER BY RAZON");
				mysqli_query($connection,"DROP TABLE `ganancias_y_perdidas`");
				mysqli_query($connection,"DROP TABLE `Utilidad_Del_Ejercicio`");
				mysqli_query($connection,"DROP TABLE `Resumen_Cuentas`");
				mysqli_query($connection,"CREATE TABLE Ganancias_Y_Perdidas (`ID` INT(30) AUTO_INCREMENT PRIMARY KEY,`VALOR` FLOAT( 30 ) NOT NULL ,`TIPO` VARCHAR( 50 ) NOT NULL, `CUENTA` VARCHAR( 50 ) NOT NULL) ENGINE = MYISAM ;");
				mysqli_query($connection,"CREATE TABLE Utilidad_Del_Ejercicio (`ID` INT(30) AUTO_INCREMENT PRIMARY KEY, `FECHA` DATE NOT NULL ,`VALOR` FLOAT( 30 ) NOT NULL ,`TIPO` VARCHAR( 50 ) NOT NULL) ENGINE = MYISAM ;");
				mysqli_query($connection,"CREATE TABLE Resumen_Cuentas (`ID` INT(30) AUTO_INCREMENT PRIMARY KEY, `CUENTA` VARCHAR( 50 ) NOT NULL ,`VALOR` FLOAT( 30 ) NOT NULL ,`TIPO` VARCHAR( 50 ) NOT NULL) ENGINE = MYISAM ;");

				while($cuent = mysqli_fetch_array($cuentas)){

					$nombre = $cuent[DETALLE"];

					$consulta = mysqli_query($connection,"SELECT * FROM " .$nombre);
					$haber = mysqli_query($connection,"SELECT * FROM ".$nombre." WHERE TIPO='haber' ORDER BY FECHA");
					$debe = mysqli_query($connection,"SELECT * FROM ".$nombre." WHERE TIPO='debe' ORDER BY FECHA");
					echo "<table class='cerrada'>
						<tr>	
							<th colspan='4' class='tituloCuenta'>$nombre</th>	
					    </tr>
					    <tr>	
							<th>FECHA</th>
							<th>DEBE</th>
							<th>HABER</th>
							<th>FECHA</th>	
					    </tr>";

					$cantDebe = mysqli_query($connection,"SELECT COUNT(*) as CANTIDAD FROM ".$nombre." WHERE TIPO='debe'");
					$cantHaber = mysqli_query($connection,"SELECT COUNT(*) as CANTIDAD FROM ".$nombre." WHERE TIPO='haber'");

					$row1  = mysqli_fetch_array($cantDebe);
					$row2 = mysqli_fetch_array($cantHaber);

					$numDebe  = $row1[CANTIDAD"];
					$numHaber = $row2[CANTIDAD"];

					$max = 0;
					$i = 0;

					if($numDebe>$numHaber){
						$max = $numDebe;
					}
					else{
						$max = $numHaber;
					}

					while($i<$max){
						$linea1 = mysqli_fetch_array($debe);
						$linea2 = mysqli_fetch_array($haber);
						$col1 = $linea1[FECHA"];
						$col2 = $linea1[VALOR"];
						$col3 = $linea2[VALOR"];
						$col4 = $linea2[FECHA"];
						
						if($col1 == NULL){
							$col1 = '';
						}
						if($col2 == NULL){
							$col2 = '';
						}
						if($col3 == NULL){
							$col3 = '';
						}
						if($col4 == NULL){
							$col4 = '';
						}
						
						echo "<tr>
								<td>$col1</td>
								<td>$col2</td>
								<td>$col3</td>
								<td>$col4</td>
							</tr>	
							";
						$i = $i + 1;
					}
					$tipo = $cuent[RAZON"];
					if($tipo == 'Activo' || $tipo == 'Pasivo' || $tipo == 'Patrimonio' ){
						$sumDebe = mysqli_query($connection,"SELECT SUM(VALOR) as TOTALDEBE  FROM ".$nombre." WHERE TIPO = 'debe'");
						$sumHaber = mysqli_query($connection,"SELECT SUM(VALOR) as TOTALHABER  FROM ".$nombre." WHERE TIPO = 'haber'");
						$consulta1 = mysqli_fetch_array($sumDebe);
						$consulta2 = mysqli_fetch_array($sumHaber);
						$totalDebe = $consulta1[TOTALDEBE"];
						$totalHaber = $consulta2[TOTALHABER"];
						if($totalHaber == NULL){
							$totalHaber = 0;
						}
						if($totalDebe == NULL){
							$totalDebe = 0;
						}

						echo "<tr'>
								<td colspan='2'>$totalDebe</td>
								<td colspan='2'>$totalHaber</td>
							</tr>";
						if($totalDebe>$totalHaber){
							$total = $totalDebe - $totalHaber;
							echo "<tr class='cierre'>
								<td colspan='2'>$total</td>
								<td colspan='2'></td>
							</tr>";
							mysqli_query($connection,"INSERT INTO `contabilidad`.`Resumen_Cuentas` (`CUENTA`,`VALOR` ,`TIPO`) VALUES('$cuent[DETALLE]',$total, '$cuent[RAZON]')");
						}
						if($totalHaber>$totalDebe){
							$total = $totalHaber - $totalDebe;
							echo "<tr class='cierre'>
								<td colspan='2'></td>
								<td colspan='2'>$total</td>
							</tr>";
							mysqli_query($connection,"INSERT INTO `contabilidad`.`Resumen_Cuentas` (`CUENTA`,`VALOR` ,`TIPO`) VALUES('$cuent[DETALLE]',$total, '$cuent[RAZON]')");
						}

					}

					if($tipo == 'Ingresos'|| $tipo == 'Gastos'){
						$sumDebe = mysqli_query($connection,"SELECT SUM(VALOR) as TOTALDEBE  FROM ".$nombre." WHERE TIPO = 'debe'");
						$sumHaber = mysqli_query($connection,"SELECT SUM(VALOR) as TOTALHABER  FROM ".$nombre." WHERE TIPO = 'haber'");
						$consulta1 = mysqli_fetch_array($sumDebe);
						$consulta2 = mysqli_fetch_array($sumHaber);
						$totalDebe = $consulta1[TOTALDEBE"];
						$totalHaber = $consulta2[TOTALHABER"];
						if($totalHaber == NULL){
							$totalHaber = $totalDebe;
							echo "<tr'>
								<td colspan='2'>$totalDebe</td>
								<td colspan='2' class='red'>$totalHaber</td>
							</tr>";
						}
						if($totalDebe == NULL){
							$totalDebe = $totalHaber;
							echo "<tr'>
								<td colspan='2' class='red'>$totalDebe</td>
								<td colspan='2'>$totalHaber</td>
							</tr>";
						}

					}
					$total2 = $totalDebe - $totalHaber;
					if($tipo == 'Ingresos'){
						mysqli_query($connection,"INSERT INTO `contabilidad`.`Ganancias_Y_Perdidas` (`VALOR` ,`TIPO`, `CUENTA`) VALUES($totalHaber, 'haber', '$cuent[DETALLE]')");
						echo "<tr class='cierre'>
								<td colspan='2'></td>
								<td colspan='2'>$total2</td>
							</tr>";
					}
					if($tipo == 'Gastos'){
						mysqli_query($connection,"INSERT INTO `contabilidad`.`Ganancias_Y_Perdidas` (`VALOR` ,`TIPO`, `CUENTA`) VALUES($totalDebe, 'debe' , '$cuent[DETALLE]')");
						echo "<tr class='cierre'>
								<td colspan='2'>$total2</td>
								<td colspan='2'></td>
							</tr>";
					}

					echo  "</table>";
				}

				$consulta = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas");
				$haber = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas WHERE TIPO='haber'");
				$debe = mysqli_query($connection,"SELECT * FROM Ganancias_Y_Perdidas WHERE TIPO='debe'");
				echo "<table class='tab'>
					<tr>	
						<th colspan='4' class='tituloCuenta'>Ganancias_Y_Perdidas</th>	
				    </tr>
				    <tr>
				    	<th>Gastos</th>	
						<th>DEBE</th>
						<th>HABER</th>
						<th>Ingresos</th>
				    </tr>";

				/*
					Muestro en pantalla la cuenta temporal Ganancias  Perdidas
				*/
				$cantDebe = mysqli_query($connection,"SELECT COUNT(*) as CANTIDAD FROM Ganancias_Y_Perdidas WHERE TIPO='debe'");
				$cantHaber = mysqli_query($connection,"SELECT COUNT(*) as CANTIDAD FROM Ganancias_Y_Perdidas WHERE TIPO='haber'");
				$cuentasDebe = mysqli_query($connection,"SELECT CUENTA FROM Ganancias_Y_Perdidas WHERE TIPO = 'debe'");
				$cuentasHaber = mysqli_query($connection,"SELECT CUENTA FROM Ganancias_Y_Perdidas WHERE TIPO = 'haber'");
				
				$row1  = mysqli_fetch_array($cantDebe);
				$row2 = mysqli_fetch_array($cantHaber);
				

				$numDebe  = $row1[CANTIDAD"];
				$numHaber = $row2[CANTIDAD"];

				$max = 0;
				$i = 0;

				if($numDebe>$numHaber){
					$max = $numDebe;
				}
				else{
					$max = $numHaber;
				}

				while($i<$max){
					$linea1 = mysqli_fetch_array($debe);
					$linea2 = mysqli_fetch_array($haber);
					$row3  = mysqli_fetch_array($cuentasDebe);
					$row4 = mysqli_fetch_array($cuentasHaber);
					$col2 = $linea1[VALOR"];
					$col3 = $linea2[VALOR"];
					$cuentaDebe = $row3[CUENTA"];
					$cuentaHaber = $row4[CUENTA"];
					
					if($col2 == NULL){
						$col2 = '';
					}
					if($col3 == NULL){
						$col3 = '';
					}
					
						$col1 = $cuentaDebe;
						$col4 = $cuentaHaber;
					echo "<tr>
							<td>$col1</td>
							<td>$col2</td>
							<td>$col3</td>
							<td>$col4</td>
						</tr>";
					$i = $i + 1;
				}


				$sumDebeTmp = mysqli_query($connection,"SELECT SUM(VALOR) as TOTALDEBE  FROM Ganancias_Y_Perdidas WHERE TIPO = 'debe'");
				$sumHaberTmp = mysqli_query($connection,"SELECT SUM(VALOR) as TOTALHABER  FROM Ganancias_Y_Perdidas WHERE TIPO = 'haber'");
				$consultaTmp1 = mysqli_fetch_array($sumDebeTmp);
				$consultaTmp2 = mysqli_fetch_array($sumHaberTmp);
				$totalDebeTmp = $consultaTmp1[TOTALDEBE"];
				$totalHaberTmp = $consultaTmp2[TOTALHABER"];
				if($totalHaberTmp == NULL){
					$totalHaberTmp = 0;
				}
				if($totalDebeTmp == NULL){
					$totalDebeTmp = 0;
				}
				echo "<tr class='cierreTmp'>
						<td colspan='2'>$totalDebeTmp</td>
						<td colspan='2'>$totalHaberTmp</td>
					</tr>";
				$utilidad = $totalHaberTmp - $totalDebeTmp;

				echo "<tr class='cierreTmp'>
						<td colspan='2'>$utilidad</td><td colspan='2'></td>
					  </tr><tr class='cierre'><td colspan='2'></td><td colspan='2'>0</td></tr>";

				/*
					Ingreso de utilidad y Se muestra la Tabla en Pantalla
				*/
				mysqli_query($connection,"INSERT INTO `contabilidad`.`Utilidad_Del_Ejercicio` (`FECHA`, `VALOR` ,`TIPO`) VALUES('2012-06-30',$utilidad, 'haber')");
				$consulta = mysqli_query($connection,"SELECT * FROM Utilidad_Del_Ejercicio");
				$haberUtil = mysqli_query($connection,"SELECT * FROM Utilidad_Del_Ejercicio WHERE TIPO='haber'");
				$debeUtil = mysqli_query($connection,"SELECT * FROM Utilidad_Del_Ejercicio WHERE TIPO='debe'");
				echo "<table class='tab'>
					<tr>	
						<th colspan='4' class='tituloCuenta'>Utilidad_Del_Ejercicio</th>	
				    </tr>
				    <tr>	
						<th>FECHA</th>
						<th>DEBE</th>
						<th>HABER</th>
						<th>FECHA</th>	
				    </tr>";

				$cantDebeUtil = mysqli_query($connection,"SELECT COUNT(*) as CANTIDAD FROM Utilidad_Del_Ejercicio WHERE TIPO='debe'");
				$cantHaberUtil = mysqli_query($connection,"SELECT COUNT(*) as CANTIDAD FROM Utilidad_Del_Ejercicio WHERE TIPO='haber'");

				$row1  = mysqli_fetch_array($cantDebeUtil);
				$row2 = mysqli_fetch_array($cantHaberUtil);

				$numDebe  = $row1[CANTIDAD"];
				$numHaber = $row2[CANTIDAD"];

				$max = 0;
				$i = 0;

				if($numDebe>$numHaber){
					$max = $numDebe;
				}
				else{
					$max = $numHaber;
				}

				while($i<$max){
					$linea1 = mysqli_fetch_array($debeUtil);
					$linea2 = mysqli_fetch_array($haberUtil);
					$col1 = $linea1[FECHA"];
					$col2 = $linea1[VALOR"];
					$col3 = $linea2[VALOR"];
					$col4 = $linea2[FECHA"];
					
					if($col1 == NULL){
						$col1 = '';
					}
					if($col2 == NULL){
						$col2 = '';
					}
					if($col3 == NULL){
						$col3 = '';
					}
					if($col4 == NULL){
						$col4 = '';
					}
					
					echo "<tr class='cierreTmp'>
							<td>$col1</td>
							<td>$col2</td>
							<td>$col3</td>
							<td>$col4</td>
						</tr>	
						";
					$i = $i + 1;
				}
			?>	
		</section>


	</section>		

</body>
</html>