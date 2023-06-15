<?php
require 'functions.php';
$ans = query("SELECT * FROM ans");
?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Daftar Mahasiswa</title>
</head>

<body>
  <h3>Daftar mahasiswa</h3>
  <table border="1" cellpadding="10" cellspacing="0">
    <tr>
      <th>#</th>
      <th>Gambar</th>
      <th>Nama</th>
      <th>Aksi</th>
    </tr>

    <?php $i = 1;
    foreach ($ans as $a) : ?>
      <tr>
        <td><?= $i++; ?></td>
        <td><img src="image/<?= $a['Gambar']; ?>" height="60px"></td>
        <td><?= $a['Nama']; ?></td>
        <td>
          <a href="detail.php?id=<?= $a['id']; ?>">Lihat Detail</a>
        </td>
      </tr>
    <?php endforeach; ?>

  </table>
</body>

</html>