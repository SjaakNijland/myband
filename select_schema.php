<?php
$sql = "SELECT * FROM `schema` ";

$result = $mysqli->query($sql);

$result = convertResultsToArray($result);
?>