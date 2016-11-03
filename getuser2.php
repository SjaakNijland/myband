<!DOCTYPE html>
<html>
<head>
<body>

<?php
//$q = "A";//test
//$q = intval($_GET['q']);
$q= $_GET['q'];
$con = mysqli_connect('localhost','root','','myBand');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"myband");
$sql="SELECT * FROM schema WHERE datum LIKE '".$q.'%'."'";
//echo $sql;//debug
$result = mysqli_query($con,$sql);

echo "<table>
<tr>
<th>uit</th>
<th>thuis</th>
<th>datum</th>
<th>competitie</th>

</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>".$row['thuis']."</td>";
//    echo "<br>";
    echo "<td>" . $row['uit'] . "</td>";
    echo "<td>" . $row['datum'] . "</td>";
    echo "<td>" . $row['Competitie'] . "</td>";
    ;
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>