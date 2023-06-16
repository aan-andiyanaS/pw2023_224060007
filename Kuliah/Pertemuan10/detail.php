<?php
require 'functions.php';
//  Ambil id dari URL
$ID = $_GET['ID'];
$a = query("SELECT * FROM ans WHERE ID = $ID");

?>


<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Detail Mahasiswa</title>
</head>

<body>
  <h3>Detail Mahasiswa</h3>
  <ul>
    <li><img src="image/<?= $a["Gambar"]; ?>" height="60px"></li>
    <li>ID : <?= $a['ID']; ?></li>
    <li>Nama : <?= $a['Nama']; ?></li>
    <li>NIM : <?= $a['NIM']; ?></li>
    <li>Email : <?= $a['Email']; ?></li>
    <li>Jurusan : <?= $a['Jurusan']; ?></li>
    <li><a href="">Ubah</a> | <a href="">Hapus</a></li>
    <li><a href="Latihan3.php">Kembali Ke daftar mahasiswa</a></li>
  </ul>
</body>

</html>