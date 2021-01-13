<?php

$con = mysqli_connect("localhost", "root", "", "db_data");

if (!$con) {
    echo "Koneksi gagal";
    die();
}