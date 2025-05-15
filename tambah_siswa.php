<?php 
include "koneksi.php";

// ambil data
if ($_SERVER['REQUEST_METHOD'] == "POST") {
    $nis = $_POST["nis"];
    $nama = $_POST["nama"];
    $kelas = $_POST["kelas"];

    //sql untuk tambah data ke db
    $sql = "insert into tbl_siswa (nis, nama, kelas) values('$nis', '$nama', '$kelas')";

    //eksekusi
    $go = mysqli_query($koneksi,$sql);
    
    if ($go) {
        $berhasil = true;
    } else {
  
    }
}
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Halaman Data Siswa</title>
</head>
<body>
    <h2>Form Tambah Data</h2>

    <form action="" method="POST">
        <label for="">NIS</label>
        <input type="text" name="nis" required>
        <br><br>
        <label for="">Nama</label>
        <input type="text" name="nama" required>
        <br><br>
        <label for="">Kelas</label>
        <input type="text" name="kelas" required>
        <br><br>
        <button type="submit">Simpan</button>
    </form>

    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <?php 
    if ($berhasil) : ?>
    <script>
        swal({
            title: "Berhasil",
            text: "Data berhasil disimpan anjass ✌️✌️",
            icon: "success",
            button: "oke in aja brew",
        }).then(() => {
            window.location.href =
            "daftar_siswa.php"
        });
    </script>
    <?php endif; ?>
</body>
</html>