<?php
$sql = "SELECT * FROM newsarticles";
$articles = $mysqli->query($sql);
//var_dump($articles);

$total_number_articles = $articles->num_rows;



