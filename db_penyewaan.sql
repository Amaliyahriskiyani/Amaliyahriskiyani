-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2023 at 06:40 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_penyewaan`
--

-- --------------------------------------------------------

--
-- Table structure for table `18073_alat`
--

CREATE TABLE `18073_alat` (
  `id_alat` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `harga_sewa` decimal(10,0) DEFAULT NULL,
  `gambar` varchar(100) DEFAULT NULL,
  `keterangan` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `18073_alat`
--

INSERT INTO `18073_alat` (`id_alat`, `nama`, `jumlah`, `harga_sewa`, `gambar`, `keterangan`) VALUES
(2, 'Tenda Kap 3-4 Orang', 99, '25000', 'default.png', ''),
(14, 'Sleeping Bag', 0, '10000', 'Matras-Gunung.jpg', ''),
(15, 'Rain Cover', 2, '14000', 'sepatu-gunung-hiking-boot-mid-snta-497-grey-red-1.jpg', ''),
(16, 'Gas Refil', 4, '15000', 'default.png', ''),
(17, 'Day Pack', 5, '8000', 'default.png', ''),
(18, 'Flaysheet', 5, '12000', 'default.jpg', NULL),
(20, 'baru1', 10, '1000', 'play.png', ''),
(21, 'alat 2', 20, '100', 'hutan.jpg', ''),
(22, 'alat 4', 6, '8000', 'play.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `18073_d_sewa`
--

CREATE TABLE `18073_d_sewa` (
  `id_sewa` char(10) DEFAULT NULL,
  `id_alat` int(11) DEFAULT NULL,
  `jumlah` int(11) DEFAULT NULL,
  `keterangan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `18073_d_sewa`
--

INSERT INTO `18073_d_sewa` (`id_sewa`, `id_alat`, `jumlah`, `keterangan`) VALUES
('sewa03', 2, 1, ''),
('sewa01', 2, 2, ''),
('sewa02', 2, 2, ''),
('sewa02', 16, 1, ''),
('sewa03', 14, 1, ''),
('sewa08', 2, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `18073_pembayaran`
--

CREATE TABLE `18073_pembayaran` (
  `id_bayar` int(11) NOT NULL,
  `id_sewa` char(10) DEFAULT NULL,
  `tgl_bayar` datetime DEFAULT NULL,
  `jml_uang` decimal(10,0) DEFAULT NULL,
  `total_bayar` decimal(10,0) DEFAULT NULL,
  `kembalian` decimal(10,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `18073_pembayaran`
--

INSERT INTO `18073_pembayaran` (`id_bayar`, `id_sewa`, `tgl_bayar`, `jml_uang`, `total_bayar`, `kembalian`) VALUES
(1, 'sewa02', '2021-01-01 08:49:56', '35000', '35000', '0'),
(2, 'sewa03', '2021-01-01 11:08:47', '35000', '35000', '0'),
(5, 'sewa04', '2021-01-01 18:58:32', '40000', '35000', '5000'),
(6, 'sewa05', '2021-01-02 13:08:36', '100000', '66000', '34000'),
(7, 'sewa01', '2021-01-02 13:21:20', '50000', '50000', '0'),
(8, 'sewa02', '2021-01-02 13:28:18', '150000', '146000', '4000'),
(9, 'sewa05', '2021-01-09 12:14:23', '200000', '182000', '18000'),
(10, 'sewa07', '2023-02-02 20:06:18', '0', '0', '0');

-- --------------------------------------------------------

--
-- Table structure for table `18073_penyewaan`
--

CREATE TABLE `18073_penyewaan` (
  `id_sewa` char(10) NOT NULL,
  `id_user` int(11) DEFAULT NULL,
  `tgl_sewa` datetime DEFAULT NULL,
  `tgl_kembali` datetime DEFAULT NULL,
  `lama_sewa` int(11) NOT NULL,
  `jaminan` varchar(50) DEFAULT NULL,
  `biaya_sewa` decimal(10,0) DEFAULT NULL,
  `keterangan` text DEFAULT NULL,
  `uang_muka` decimal(10,0) DEFAULT NULL,
  `status` enum('pre-sewa','disewa','selesai','temp') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `18073_penyewaan`
--

INSERT INTO `18073_penyewaan` (`id_sewa`, `id_user`, `tgl_sewa`, `tgl_kembali`, `lama_sewa`, `jaminan`, `biaya_sewa`, `keterangan`, `uang_muka`, `status`) VALUES
('sewa01', NULL, '2021-01-03 13:18:00', '2021-01-05 13:18:00', 2, 'KTP a/n Andi', '100000', '', '50000', 'selesai'),
('sewa02', NULL, '2021-01-03 13:23:00', '2021-01-05 13:23:00', 2, 'KTP a/n Andi', '246000', '', '100000', 'selesai'),
('sewa03', NULL, '2021-01-02 16:40:00', '2021-01-04 16:40:00', 2, 'KTP', '70000', '', '20000', 'disewa'),
('sewa04', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'temp'),
('sewa05', NULL, '2021-01-10 12:08:00', '2021-01-12 12:08:00', 2, 'KTM', '232000', '', '50000', 'selesai'),
('sewa06', NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 'temp'),
('sewa07', 14, '2023-02-04 19:54:00', '2023-02-06 19:54:00', 2, 'KTP', '58000', '', '58000', 'selesai'),
('sewa08', 14, '2023-02-16 21:04:00', '2023-02-18 21:04:00', 2, NULL, '50000', NULL, NULL, 'pre-sewa');

-- --------------------------------------------------------

--
-- Table structure for table `18073_user`
--

CREATE TABLE `18073_user` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `telp` varchar(15) DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `role` enum('admin','penyewa') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `18073_user`
--

INSERT INTO `18073_user` (`id_user`, `nama`, `telp`, `alamat`, `username`, `password`, `role`) VALUES
(1, 'admin', '082335685138', '-', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(14, 'user', '08937483728', 'User', 'user', 'ee11cbb19052e40b07aac0ca060c23ee', 'penyewa');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `18073_alat`
--
ALTER TABLE `18073_alat`
  ADD PRIMARY KEY (`id_alat`);

--
-- Indexes for table `18073_d_sewa`
--
ALTER TABLE `18073_d_sewa`
  ADD KEY `id_sewa` (`id_sewa`),
  ADD KEY `id_alat` (`id_alat`);

--
-- Indexes for table `18073_pembayaran`
--
ALTER TABLE `18073_pembayaran`
  ADD PRIMARY KEY (`id_bayar`),
  ADD KEY `id_sewa` (`id_sewa`);

--
-- Indexes for table `18073_penyewaan`
--
ALTER TABLE `18073_penyewaan`
  ADD PRIMARY KEY (`id_sewa`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `18073_user`
--
ALTER TABLE `18073_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `18073_alat`
--
ALTER TABLE `18073_alat`
  MODIFY `id_alat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `18073_pembayaran`
--
ALTER TABLE `18073_pembayaran`
  MODIFY `id_bayar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `18073_user`
--
ALTER TABLE `18073_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `18073_d_sewa`
--
ALTER TABLE `18073_d_sewa`
  ADD CONSTRAINT `18073_d_sewa_ibfk_1` FOREIGN KEY (`id_sewa`) REFERENCES `18073_penyewaan` (`id_sewa`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `18073_d_sewa_ibfk_2` FOREIGN KEY (`id_alat`) REFERENCES `18073_alat` (`id_alat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `18073_pembayaran`
--
ALTER TABLE `18073_pembayaran`
  ADD CONSTRAINT `18073_pembayaran_ibfk_1` FOREIGN KEY (`id_sewa`) REFERENCES `18073_penyewaan` (`id_sewa`);

--
-- Constraints for table `18073_penyewaan`
--
ALTER TABLE `18073_penyewaan`
  ADD CONSTRAINT `18073_penyewaan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `18073_user` (`id_user`) ON DELETE SET NULL ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
