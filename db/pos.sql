-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 17, 2023 at 04:28 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id` int(11) NOT NULL,
  `kode_barang` varchar(20) NOT NULL,
  `id_supp` int(11) NOT NULL,
  `nama_barang` varchar(50) NOT NULL,
  `keterangan` text NOT NULL,
  `harga_modal` int(11) NOT NULL,
  `harga_jual` int(11) NOT NULL,
  `jenis` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `stock` int(11) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT current_timestamp(),
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang`
--

INSERT INTO `tb_barang` (`id`, `kode_barang`, `id_supp`, `nama_barang`, `keterangan`, `harga_modal`, `harga_jual`, `jenis`, `satuan`, `stock`, `last_update`, `foto`) VALUES
(1, 'S10', 2, 'Telkomsel 10K', '', 9000, 11000, 6, 'Pcs', 12, '2023-05-17 14:03:56', ''),
(2, 'I10', 2, 'Indosat 10K', '', 9500, 11000, 6, 'Pcs', 9, '2023-05-17 12:46:53', ''),
(3, 'CIP11', 2, 'Casing Iphone 11', '', 6000, 25000, 7, 'Pcs', 48, '2023-05-17 12:56:57', ''),
(4, 'P100', 2, 'Perdana Simpati', '', 11000, 15000, 8, 'Pcs', 9, '2023-05-17 13:56:26', '');

-- --------------------------------------------------------

--
-- Table structure for table `tb_barang_stok`
--

CREATE TABLE `tb_barang_stok` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `tgl_masuk` timestamp NOT NULL DEFAULT current_timestamp(),
  `tgl_expired` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_barang_stok`
--

INSERT INTO `tb_barang_stok` (`id`, `id_barang`, `tgl_masuk`, `tgl_expired`) VALUES
(4, 1, '2023-05-17 12:41:17', '2025-06-06'),
(5, 1, '2023-05-17 12:41:17', '2025-06-06'),
(6, 1, '2023-05-17 12:41:17', '2025-06-06'),
(7, 1, '2023-05-17 12:41:17', '2025-06-06'),
(8, 1, '2023-05-17 12:41:17', '2025-06-06'),
(9, 1, '2023-05-17 12:41:17', '2025-06-06'),
(10, 1, '2023-05-17 12:41:17', '2025-06-06'),
(12, 2, '2023-05-17 12:46:53', '2025-08-16'),
(13, 2, '2023-05-17 12:46:53', '2025-08-16'),
(14, 2, '2023-05-17 12:46:53', '2025-08-16'),
(15, 2, '2023-05-17 12:46:53', '2025-08-16'),
(16, 2, '2023-05-17 12:46:53', '2025-08-16'),
(17, 2, '2023-05-17 12:46:53', '2025-08-16'),
(18, 2, '2023-05-17 12:46:53', '2025-08-16'),
(19, 2, '2023-05-17 12:46:53', '2025-08-16'),
(20, 2, '2023-05-17 12:46:53', '2025-08-16'),
(23, 3, '2023-05-17 12:56:57', '2023-05-17'),
(24, 3, '2023-05-17 12:56:57', '2023-05-17'),
(25, 3, '2023-05-17 12:56:57', '2023-05-17'),
(26, 3, '2023-05-17 12:56:57', '2023-05-17'),
(27, 3, '2023-05-17 12:56:57', '2023-05-17'),
(28, 3, '2023-05-17 12:56:57', '2023-05-17'),
(29, 3, '2023-05-17 12:56:57', '2023-05-17'),
(30, 3, '2023-05-17 12:56:57', '2023-05-17'),
(31, 3, '2023-05-17 12:56:57', '2023-05-17'),
(32, 3, '2023-05-17 12:56:57', '2023-05-17'),
(33, 3, '2023-05-17 12:56:57', '2023-05-17'),
(34, 3, '2023-05-17 12:56:57', '2023-05-17'),
(35, 3, '2023-05-17 12:56:57', '2023-05-17'),
(36, 3, '2023-05-17 12:56:57', '2023-05-17'),
(37, 3, '2023-05-17 12:56:57', '2023-05-17'),
(38, 3, '2023-05-17 12:56:57', '2023-05-17'),
(39, 3, '2023-05-17 12:56:57', '2023-05-17'),
(40, 3, '2023-05-17 12:56:57', '2023-05-17'),
(41, 3, '2023-05-17 12:56:57', '2023-05-17'),
(42, 3, '2023-05-17 12:56:57', '2023-05-17'),
(43, 3, '2023-05-17 12:56:57', '2023-05-17'),
(44, 3, '2023-05-17 12:56:57', '2023-05-17'),
(45, 3, '2023-05-17 12:56:57', '2023-05-17'),
(46, 3, '2023-05-17 12:56:57', '2023-05-17'),
(47, 3, '2023-05-17 12:56:57', '2023-05-17'),
(48, 3, '2023-05-17 12:56:57', '2023-05-17'),
(49, 3, '2023-05-17 12:56:57', '2023-05-17'),
(50, 3, '2023-05-17 12:56:57', '2023-05-17'),
(51, 3, '2023-05-17 12:56:57', '2023-05-17'),
(52, 3, '2023-05-17 12:56:57', '2023-05-17'),
(53, 3, '2023-05-17 12:56:57', '2023-05-17'),
(54, 3, '2023-05-17 12:56:57', '2023-05-17'),
(55, 3, '2023-05-17 12:56:57', '2023-05-17'),
(56, 3, '2023-05-17 12:56:57', '2023-05-17'),
(57, 3, '2023-05-17 12:56:57', '2023-05-17'),
(58, 3, '2023-05-17 12:56:57', '2023-05-17'),
(59, 3, '2023-05-17 12:56:57', '2023-05-17'),
(60, 3, '2023-05-17 12:56:57', '2023-05-17'),
(61, 3, '2023-05-17 12:56:57', '2023-05-17'),
(62, 3, '2023-05-17 12:56:57', '2023-05-17'),
(63, 3, '2023-05-17 12:56:57', '2023-05-17'),
(64, 3, '2023-05-17 12:56:57', '2023-05-17'),
(65, 3, '2023-05-17 12:56:57', '2023-05-17'),
(66, 3, '2023-05-17 12:56:57', '2023-05-17'),
(67, 3, '2023-05-17 12:56:57', '2023-05-17'),
(68, 3, '2023-05-17 12:56:57', '2023-05-17'),
(69, 3, '2023-05-17 12:56:57', '2023-05-17'),
(70, 3, '2023-05-17 12:56:57', '2023-05-17'),
(72, 4, '2023-05-17 13:56:26', '2020-06-18'),
(73, 4, '2023-05-17 13:56:26', '2020-06-18'),
(74, 4, '2023-05-17 13:56:26', '2020-06-18'),
(75, 4, '2023-05-17 13:56:26', '2020-06-18'),
(76, 4, '2023-05-17 13:56:26', '2020-06-18'),
(77, 4, '2023-05-17 13:56:26', '2020-06-18'),
(78, 4, '2023-05-17 13:56:26', '2020-06-18'),
(79, 4, '2023-05-17 13:56:26', '2020-06-18'),
(80, 4, '2023-05-17 13:56:26', '2020-06-18'),
(81, 1, '2023-05-17 14:03:56', '2030-07-11'),
(82, 1, '2023-05-17 14:03:56', '2030-07-11'),
(83, 1, '2023-05-17 14:03:56', '2030-07-11'),
(84, 1, '2023-05-17 14:03:56', '2030-07-11'),
(85, 1, '2023-05-17 14:03:56', '2030-07-11');

-- --------------------------------------------------------

--
-- Table structure for table `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `id` int(11) NOT NULL,
  `nama_jenis` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_jenis`
--

INSERT INTO `tb_jenis` (`id`, `nama_jenis`) VALUES
(6, 'Voucher'),
(7, 'Casing'),
(8, 'Perdana');

-- --------------------------------------------------------

--
-- Table structure for table `tb_permintaan`
--

CREATE TABLE `tb_permintaan` (
  `id_per` int(11) NOT NULL,
  `id_supp` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `keterangan` text NOT NULL,
  `tgl` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_permintaan`
--

INSERT INTO `tb_permintaan` (`id_per`, `id_supp`, `jumlah`, `keterangan`, `tgl`) VALUES
(1, 2, 1000, '', '2023-05-17 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tb_permintaan_list`
--

CREATE TABLE `tb_permintaan_list` (
  `id_list` int(11) NOT NULL,
  `id_per` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_permintaan_list`
--

INSERT INTO `tb_permintaan_list` (`id_list`, `id_per`, `id_barang`, `jumlah`) VALUES
(1, 1, 1, 1000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_supplier`
--

CREATE TABLE `tb_supplier` (
  `id_supplier` int(11) NOT NULL,
  `nama_supp` varchar(50) NOT NULL,
  `alamat_supp` text NOT NULL,
  `tlp_supp` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_supplier`
--

INSERT INTO `tb_supplier` (`id_supplier`, `nama_supp`, `alamat_supp`, `tlp_supp`) VALUES
(2, 'Pusat', 'Cikarang', '123123');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id` int(11) NOT NULL,
  `jumlah_menu` int(11) NOT NULL,
  `total_harga` int(12) NOT NULL,
  `bayar` int(11) NOT NULL,
  `kembali` int(11) NOT NULL,
  `tgl_transaksi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id`, `jumlah_menu`, `total_harga`, `bayar`, `kembali`, `tgl_transaksi`) VALUES
(1, 2, 33000, 50000, 17000, '2023-05-17 12:48:55'),
(2, 1, 25000, 50000, 25000, '2023-05-17 12:57:37'),
(3, 2, 40000, 50000, 10000, '2023-05-17 14:01:28'),
(4, 1, 11000, 20000, 9000, '2023-05-17 14:04:36');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_list`
--

CREATE TABLE `tb_transaksi_list` (
  `id` int(11) NOT NULL,
  `id_trans` int(11) NOT NULL,
  `id_menu` int(11) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga_total` int(12) NOT NULL,
  `laba` int(12) NOT NULL,
  `tgl_trans` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi_list`
--

INSERT INTO `tb_transaksi_list` (`id`, `id_trans`, `id_menu`, `jumlah`, `harga_total`, `laba`, `tgl_trans`) VALUES
(1, 1, 2, 1, 11000, 1500, '2023-05-17 12:48:38'),
(2, 1, 1, 2, 22000, 4000, '2023-05-17 12:48:40'),
(3, 2, 3, 1, 25000, 19000, '2023-05-17 12:57:03'),
(4, 3, 4, 1, 15000, 4000, '2023-05-17 14:00:45'),
(5, 3, 3, 1, 25000, 19000, '2023-05-17 14:01:04'),
(6, 4, 1, 1, 11000, 2000, '2023-05-17 14:04:19');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `password`, `level`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 0),
(2, 'gudang', '202446dd1d6028084426867365b0c7a1', 1),
(3, 'kasir', 'c7911af3adbd12a035b289556d96470a', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_barang_stok`
--
ALTER TABLE `tb_barang_stok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_permintaan`
--
ALTER TABLE `tb_permintaan`
  ADD PRIMARY KEY (`id_per`);

--
-- Indexes for table `tb_permintaan_list`
--
ALTER TABLE `tb_permintaan_list`
  ADD PRIMARY KEY (`id_list`);

--
-- Indexes for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_transaksi_list`
--
ALTER TABLE `tb_transaksi_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_barang_stok`
--
ALTER TABLE `tb_barang_stok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- AUTO_INCREMENT for table `tb_jenis`
--
ALTER TABLE `tb_jenis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tb_permintaan`
--
ALTER TABLE `tb_permintaan`
  MODIFY `id_per` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_permintaan_list`
--
ALTER TABLE `tb_permintaan_list`
  MODIFY `id_list` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_supplier`
--
ALTER TABLE `tb_supplier`
  MODIFY `id_supplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_transaksi_list`
--
ALTER TABLE `tb_transaksi_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
