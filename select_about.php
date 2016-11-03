<?php

$offset = $page_nr *NR_ITEMS_PER_PAGE -1;
$sql = "SELECT * FROM players order by date_created desc LIMIT " . $offset .", " . NR_ITEMS_PER_PAGE;
//echo $sql;
$result = $mysqli->query($sql);

$result = convertResultsToArray($result);
