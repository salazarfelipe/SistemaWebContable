<? 
	include("header.php");
?>

	<section class="contenido">
		<header class="tituloContenido"><h2>Crear Nueva Cuenta</h2></header>
		<section id="nuevaCuenta">
			<form method="POST" action="creaCuenta.php">	
				<label class="cuentaTitulo"><h3>Tipo de Cuenta</h3></label>
				<select name="tipo" class="opcionCuenta">
					<option value="Activo">Activo</option>
					<option value="Pasivo">Pasivo</option>
					<option value="Patrimonio">Patrimonio</option>
					<option value="Gasto">Gastos</option>
					<option value="Ingreso">Ingresos</option>
				</select>
				<label class="cuentaTitulo"><h3>Nombre de Cuenta</h3></label>
				<input type="text" name="nombre" class="opcionCuenta" placeholder="Nombre de la cuenta" required>

				<label class="cuentaTitulo"><h3>Codigo de Cuenta</h3></label>
				<input type="number" name="codigo" class="opcionCuenta" placeholder="Codigo de la cuenta" required>
	
				<input type="submit" class="boton" value="Crear Cuenta">
			</form>
		</section>
	</section>		

</body>
</html>
<?
	include("conexion.php");
	$nombre = $_POST[nombre];
	$codigo = $_POST[codigo];
	$razon = $_POST[tipo];
	if($codigo!=NULL){
		mysql_query("CREATE TABLE $nombre (`ID` INT(30) AUTO_INCREMENT PRIMARY KEY,`FECHA` DATE NOT NULL ,`VALOR` FLOAT( 30 ) NOT NULL ,`TIPO` VARCHAR( 50 ) NOT NULL) ENGINE = MYISAM ;");
		mysql_query("INSERT INTO `contabilidad`.`cuentas` (`CODIGO` ,`DETALLE` ,`RAZON`) VALUES ('$codigo', '$nombre', '$razon');");
	}
?>