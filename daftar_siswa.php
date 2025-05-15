<?php 
include "koneksi.php";
?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>
        table{
            border-collapse:collapse;
        }
        th{
            background-color:azure;
        }
    </style>
</head>
<body>
    <h1>Daftar Siswa</h1>
    <a href="tambah_siswa.php">+ Tambah tambah siswa lagi</a>
    <br> <br>
    <table border=1 cellpadding=20>
        <tr>
            <th>No.</th>
            <th>NIS</th>
            <th>Nama</th>
            <th>Kelas</th>
        </tr>
        <?php
        $no = 1;
        $sql = "select * from tbl_siswa order by nama desc";

        $hasil = mysqli_query($koneksi,$sql);

        foreach ($hasil as $hsl){

        
        ?>
        <tr>
            <td><?=$no++?></td>
            <td><?=$hsl['nis']?></td>
            <td><?=$hsl['nama']?></td>
            <td><?=$hsl['kelas']?></td>
        </tr>
        <?php
        };
        ?>
    </table>
</body>
</html>