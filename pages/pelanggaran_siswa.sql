-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 20, 2025 at 08:29 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pelanggaran_siswa`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori_pelanggaran`
--

CREATE TABLE `tbl_kategori_pelanggaran` (
  `id_kategori_pelanggaran` int NOT NULL,
  `nama_pelanggaran` varchar(50) NOT NULL,
  `poin` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_kategori_pelanggaran`
--

INSERT INTO `tbl_kategori_pelanggaran` (`id_kategori_pelanggaran`, `nama_pelanggaran`, `poin`) VALUES
(1, 'terlambat', 10),
(2, 'tidak mengenakan sabuk', 20),
(3, 'tidak mengenakan dasi', 5),
(4, 'merokok', 100),
(5, 'keluar sekolah tanpa izin', 50),
(6, 'Membawa Narkoba', 200),
(7, 'Melakukan Penipuan Pulsa', 225);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kelas`
--

CREATE TABLE `tbl_kelas` (
  `id_kelas` int NOT NULL,
  `nama_kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_kelas`
--

INSERT INTO `tbl_kelas` (`id_kelas`, `nama_kelas`) VALUES
(1, 'X-1'),
(2, 'X-2'),
(3, 'X-3'),
(4, 'XI RPL-1'),
(5, 'XI RPL-2'),
(6, 'XI DKV'),
(7, 'XI TKJ'),
(8, 'XII RPL'),
(9, 'XII DKV'),
(10, 'XII TKJ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pelanggaran_siswa`
--

CREATE TABLE `tbl_pelanggaran_siswa` (
  `id_pelanggaran` int NOT NULL,
  `id_siswa` int NOT NULL,
  `id_kategori_pelanggaran` int NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_pelanggaran_siswa`
--

INSERT INTO `tbl_pelanggaran_siswa` (`id_pelanggaran`, `id_siswa`, `id_kategori_pelanggaran`, `tanggal`) VALUES
(1, 1, 5, '2024-04-24 17:00:00'),
(71, 1, 1, '2025-05-15 07:29:15'),
(72, 1, 1, '2025-05-15 07:33:18'),
(73, 2, 1, '2025-05-15 07:33:35'),
(74, 4, 2, '2025-05-15 07:36:47'),
(75, 17, 4, '2025-05-19 02:13:34'),
(76, 18, 2, '2025-05-19 03:15:44'),
(77, 18, 3, '2025-05-19 03:15:44'),
(78, 18, 4, '2025-05-19 03:15:44'),
(79, 18, 2, '2025-05-19 04:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_siswa`
--

CREATE TABLE `tbl_siswa` (
  `id_siswa` int NOT NULL,
  `nis` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kelas` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_siswa`
--

INSERT INTO `tbl_siswa` (`id_siswa`, `nis`, `nama`, `kelas`) VALUES
(1, '2324001', 'Ardika', 'XI RPL-2'),
(2, '2324002', 'Aufa', 'XI RPL-2'),
(3, '2324003', 'Raihanah', 'XI RPL-2'),
(4, '2324004', 'Dwiki', 'XI RPL-1'),
(5, '2324005', 'Salman', 'XI RPL-1'),
(6, '2324032', 'Agus', 'XI RPL-1'),
(12, '123141', 'Azzam ganteng', 'XI RPL-1'),
(17, '1113231', 'Ranggas', 'X-3'),
(18, '1241412', 'Rafa', 'X-1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `username`, `password`, `nama`) VALUES
(1, 'azzammozarist', 'admin123', 'Mozarist'),
(2, 'MamangD', 'admin321', 'Deniz'),
(3, 'Delisov', 'admin321', 'deniz'),
(4, 'Mozarist', '123456', 'Azzam ganteng');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori_pelanggaran`
--
ALTER TABLE `tbl_kategori_pelanggaran`
  ADD PRIMARY KEY (`id_kategori_pelanggaran`);

--
-- Indexes for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tbl_pelanggaran_siswa`
--
ALTER TABLE `tbl_pelanggaran_siswa`
  ADD PRIMARY KEY (`id_pelanggaran`);

--
-- Indexes for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  ADD PRIMARY KEY (`id_siswa`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori_pelanggaran`
--
ALTER TABLE `tbl_kategori_pelanggaran`
  MODIFY `id_kategori_pelanggaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_kelas`
--
ALTER TABLE `tbl_kelas`
  MODIFY `id_kelas` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_pelanggaran_siswa`
--
ALTER TABLE `tbl_pelanggaran_siswa`
  MODIFY `id_pelanggaran` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `tbl_siswa`
--
ALTER TABLE `tbl_siswa`
  MODIFY `id_siswa` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
