<?php
require 'functions.php';
//  Ambil id dari URL
$id = $_GET['id'];
$ans = query("SELECT * FROM ans WHERE id = $id");
var_dump($ans);
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
    <li><img src="image/IMG_9234-1.JPG" height="60px"></li>
    <li>NIM : 224060007</li>
    <li>Nama : Aan Andiyana Sandi</li>
    <li>Email : 224060007.mhs@stmikjabar.ac.id</li>
    <li>Jurusan : Teknik Informatika</li>
    <li><a href="">Ubah</a><a href="">Hapus</a></li>
    <li><a href="Latihan3.php">Kembali Ke daftar mahasiswa</a></li>
  </ul>
</body>

</html>