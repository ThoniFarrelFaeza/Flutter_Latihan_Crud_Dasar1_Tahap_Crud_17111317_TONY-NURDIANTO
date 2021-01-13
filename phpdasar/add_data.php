<?php






include 'koneksi.php';

$Nama = $_POST['Nama'];
$Tlp = $_POST['Tlp'];
$Email = $_POST['Email'];
$NPM = $_POST['NPM'];

$con->query("INSERT INTO `tb_user` (Nama, Tlp, Email, NPM) VALUES ('" . $Nama . "','" . $Tlp . "','" . $Email . "','" . $NPM . "')");