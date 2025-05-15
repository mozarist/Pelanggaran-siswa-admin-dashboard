<?php

//koneksi ke database
$host = "localhost";
$user = "root";
$pass = "";
$db = "pelanggaran_siswa"; //nama database

$koneksi = new mysqli($host, $user, $pass, $db);


//cek koneksi
if($koneksi->connect_error) {
    die("lost connection: " . $koneksi->connect_error);
 } //else {
//     echo "connection success anjay mabar";
// }