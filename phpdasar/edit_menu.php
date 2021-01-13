<?php

include 'koneksi.php';


$Id = $_POST['Id'];
$Nama = $_POST['Nama'];
$Tlp = $_POST['Tlp'];
$Email = $_POST['Email'];
$NPM = $_POST['NPM'];

$con->query("UPDATE tb_user SET Nama='" . $Nama . "', Tlp='" . $Tlp . "', Email='" . $Email . "', NPM='" . $NPM . "' WHERE Id=" . $Id);