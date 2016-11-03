<?php
/**
 * Created by PhpStorm.
 * User: Sjaak
 * Date: 2-11-2016
 * Time: 15:37
 */


$sql = "SELECT * FROM players";
$players = $mysqli->query($sql);
//var_dump($articles);

$total_number_players = $players->num_rows;



