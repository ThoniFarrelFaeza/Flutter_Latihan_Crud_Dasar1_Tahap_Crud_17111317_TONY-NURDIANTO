<?php

include 'koneksi.php';


$Id = $_POST['Id'];
$con->query("DELETE FROM tb_user WHERE Id=" . $Id);