<? 
	include("header.php");
	include("conexion.php");
?>

	<section class="contenido">
		<header class="tituloContenido"><h2>Nueva Transaccion</h2></header>

		<section id="nuevaTransacion">
			
			<table class='tab'>
				<form action="transaccion.php" method="POST">
					<div class="fecha" >
						<label for="fecha">Fecha</label>
						<input name="fecha" type="date" placeholder="aaaa-mm-dd" required>
					</div>
					<tr>
						<th>CUENTA</th>
						<th>VALOR</th>
						<th>TIPO TRANSACCION</th>
				    </tr>
				    <tr>
				    	<td>
				    	<?
							$cuentas = mysql_query("SELECT * FROM cuentas ORDER BY RAZON");
							echo "<select name='cuenta1'><option value=''></option>";
							while($row = mysql_fetch_row($cuentas))
								echo"<option id='verCuenta' value='".$row['1']."'> ".$row['0']."    "  .$row['1']."</option>";
							echo "</select>";
						?>
						</td>
				    	<td><input name="valor1" type="number" required></td>
				    	<td>
				    	<select name='tipo1'>
				    		<option class="tipo1">debe</option>
				    		<option class="tipo1">haber</option>
				    	</select>
				    </tr>
				   
				    <tr>
				    	<td colspan="3"><input type="submit" value="Hacer Transaccion"></td>
				    </tr>
				    <?
				    	include('conexion.php');
						$cuenta1 = $_POST[cuenta1];
						$valor1 = $_POST[valor1];
						$haber1 = $_POST[tipo1];
						$fecha = $_POST[fecha];
						mysql_query("INSERT INTO `contabilidad`.`$cuenta1` (`FECHA` ,`VALOR` ,`TIPO`)VALUES('$fecha', $valor1, '$tipo1');");
					?>
		    	</form>
		    </table>
		</section>
	</section>		
</body>
</html>