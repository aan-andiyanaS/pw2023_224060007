-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 24, 2023 at 09:52 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_mabel`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_barang`
--

CREATE TABLE `daftar_barang` (
  `kd_brg` varchar(3) NOT NULL,
  `nm_brg` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_barang`
--

INSERT INTO `daftar_barang` (`kd_brg`, `nm_brg`) VALUES
('B2', 'Meja'),
('B3', 'Kursi'),
('B4', 'Lemari'),
('B5', 'Rak Buku'),
('B6', 'Televisi');

-- --------------------------------------------------------

--
-- Table structure for table `daftar_pembelian`
--

CREATE TABLE `daftar_pembelian` (
  `kd_brg` varchar(2) NOT NULL,
  `no_faktur` int(3) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_pembelian`
--

INSERT INTO `daftar_pembelian` (`kd_brg`, `no_faktur`, `jumlah`) VALUES
('B2', 273, 3),
('B2', 274, 3),
('B3', 273, 2),
('B3', 274, 5),
('B4', 273, 4),
('B5', 273, 4),
('B6', 273, 2),
('B6', 275, 2);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `no_faktur` int(3) NOT NULL,
  `tgl` date NOT NULL,
  `kd_splr` int(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`no_faktur`, `tgl`, `kd_splr`) VALUES
(273, '2023-05-02', 335),
(274, '2023-05-02', 275),
(275, '2023-05-02', 223);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `kd_splr` int(3) NOT NULL,
  `nm_splr` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`kd_splr`, `nm_splr`) VALUES
(223, 'PT. Asri'),
(275, 'PT. Permai'),
(335, 'PT. Indah');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_barang`
--
ALTER TABLE `daftar_barang`
  ADD PRIMARY KEY (`kd_brg`);

--
-- Indexes for table `daftar_pembelian`
--
ALTER TABLE `daftar_pembelian`
  ADD PRIMARY KEY (`kd_brg`,`no_faktur`),
  ADD KEY `no_faktur` (`no_faktur`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kd_splr`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `daftar_barang`
--
ALTER TABLE `daftar_barang`
  ADD CONSTRAINT `daftar_barang_ibfk_1` FOREIGN KEY (`kd_brg`) REFERENCES `daftar_pembelian` (`kd_brg`) ON UPDATE CASCADE;

--
-- Constraints for table `daftar_pembelian`
--
ALTER TABLE `daftar_pembelian`
  ADD CONSTRAINT `daftar_pembelian_ibfk_1` FOREIGN KEY (`no_faktur`) REFERENCES `pembelian` (`no_faktur`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
