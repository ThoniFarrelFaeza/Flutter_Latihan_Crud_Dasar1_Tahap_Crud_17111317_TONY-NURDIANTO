<?php

include 'koneksi.php';

$queryResult = $con->query("SELECT * FROM `tb_user`");

$result = array();

while ($fetchData = $queryResult->fetch_assoc()) {
    $result[] = $fetchData;
}

echo json_encode($result);