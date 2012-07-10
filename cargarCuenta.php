<?
	include("conexion.php");
	$nombre = $_GET['id'];

	if($nombre!=''){
		$consulta = mysql_query("SELECT * FROM " .$nombre);
		$haber = mysql_query("SELECT * FROM ".$nombre." WHERE TIPO='haber' ORDER BY FECHA");
		$debe = mysql_query("SELECT * FROM ".$nombre." WHERE TIPO='debe' ORDER BY FECHA");
		echo "<table class='tab'>
			<tr>	
				<th colspan='4' class='tituloCuenta'>$nombre</th>	
		    </tr>
		    <tr>	
				<th>FECHA</th>
				<th>DEBE</th>
				<th>HABER</th>
				<th>FECHA</th>	
		    </tr>";

		$cantDebe = mysql_query("SELECT COUNT(*) as CANTIDAD FROM ".$nombre." WHERE TIPO='debe'");
		$cantHaber = mysql_query("SELECT COUNT(*) as CANTIDAD FROM ".$nombre." WHERE TIPO='haber'");

		$row1  = mysql_fetch_array($cantDebe);
		$row2 = mysql_fetch_array($cantHaber);

		$numDebe  = $row1[CANTIDAD];
		$numHaber = $row2[CANTIDAD];

		$max = 0;
		$i = 0;

		if($numDebe>$numHaber){
			$max = $numDebe;
		}
		else{
			$max = $numHaber;
		}

		while($i<$max){
			$linea1 = mysql_fetch_array($debe);
			$linea2 = mysql_fetch_array($haber);
			$col1 = $linea1[FECHA];
			$col2 = $linea1[VALOR];
			$col3 = $linea2[VALOR];
			$col4 = $linea2[FECHA];
			
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
	}
?>
</table>