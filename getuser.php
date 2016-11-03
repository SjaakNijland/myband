<!DOCTYPE html>
<html>
<head>
<body>

<?php
    //$q = "A";//test
//$q = intval($_GET['q']);
$q= $_GET['q'];
//$con = mysqli_connect('localhost','sjaak2','indrmpvl','19940_myband');
$con = mysqli_connect('localhost','root','','myBand');
if (!$con) {
    die('Could not connect: ' . mysqli_error($con));
}

mysqli_select_db($con,"myband");
$sql="SELECT * FROM newsarticles WHERE title LIKE '".$q.'%'."'";
//echo $sql;//debug
$result = mysqli_query($con,$sql);

echo "<table>
<tr>
<th>Title</th>
<th>Content</th>
<th>Date Created</th>

</tr>";
while($row = mysqli_fetch_array($result)) {
    echo "<tr>";
    echo "<td>".$row['title']."</td>";
//    echo "<br>";
    echo "<td id='teveel'>" . $row['content'] . "</td>";
    echo "<td>" . $row['date_created'] . "</td>";
;
    echo "</tr>";
}
echo "</table>";
mysqli_close($con);
?>
</body>
</html>