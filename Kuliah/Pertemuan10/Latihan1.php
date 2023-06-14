<?php
// Koneksi ke DB & Pilih Database
$conn = mysqli_connect('localhost', 'root', '', 'db_ans_univers');

// Query isi tabel mahasiswa
$result = mysqli_query($conn, "SELECT * FROM ans");

// Ubah dtaa ke dalam array
// $row = mysqli_fetch_row($result); Array Numerik
// $row = mysqli_fetch_assoc($result); Array associative
// $row = mysqli_fetch_array($result); Keduanya
$rows = [];
while ($row = mysqli_fetch_assoc($result)) {
  $rows[] = $row;
}

// Tampung ke variable mahasiswa
$ans = $rows
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
      <th>ID</th>
      <th>Nama</th>
      <th>NIM</th>
      <th>Email</th>
      <th>Jurusan</th>
      <th>Aksi</th>
    </tr>

    <?php $i = 1;
    foreach ($ans as $a) : ?>
      <tr>
        <td><?= $i++; ?></td>
        <td><img src="image/<?= $a['Gambar']; ?>" height="60px"></td>
        <td><?= $a['ID']; ?></td>
        <td><?= $a['Nama']; ?></td>
        <td><?= $a['NIM']; ?></td>
        <td><?= $a['Email']; ?></td>
        <td><?= $a['Jurusan']; ?></td>
        <td>
          <a href="">ubah</a> | <a href="">hapus</a>
        </td>
      </tr>
    <?php endforeach; ?>

  </table>
</body>

</html>