<? 
	include("header.php");
?>
	<section class="contenido">
		<header class="tituloContenido"><h2>Estado de Cuenta</h2></header>
		<section id="nuevaCuenta">
			<form method="POST" action="creaCuenta.php">	
				<label class="cuentaTitulo"><h3>Escoge la Cuenta</h3></label>
					<?
						include("conexion.php");
						echo"<select name='tipo' class='opcionCuenta' id='verCuenta'>";
					?>
						<script type="text/javascript">
							$(document).ready(function(){
						        $("#verCuenta").change(function(){
								var id = $("#verCuenta").val();
								$("#mostrarCuenta").load('cargarCuenta.php?id=' + id);
								});
						    });	
						</script>
						<option id='verCuenta' value=""></option>
					<?
						$cuentas = mysql_query("SELECT * FROM cuentas ORDER BY CODIGO");
						while($row = mysql_fetch_row($cuentas))
							echo"<option id='verCuenta' value='".$row['1']."'> ".$row['0']."    "  .$row['1']."</option>";
					?>
				</select>
				<section id="mostrarCuenta"></section>	
			</form>
		</section>
	</section>		

</body>
</html>