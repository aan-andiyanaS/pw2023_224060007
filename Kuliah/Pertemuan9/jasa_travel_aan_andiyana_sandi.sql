-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 03:17 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.1.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jasa_travel`
--

-- --------------------------------------------------------

--
-- Table structure for table `kembali`
--

CREATE TABLE `kembali` (
  `no_fk` varchar(10) NOT NULL,
  `tgl_fk` date NOT NULL,
  `tgl_kembali` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kembali`
--

INSERT INTO `kembali` (`no_fk`, `tgl_fk`, `tgl_kembali`) VALUES
('b476782c', '2023-06-13', '2023-06-14'),
('c325426d', '2023-06-20', '2023-06-21'),
('d876582e', '2023-06-26', '2023-06-27');

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `no_pol` varchar(10) NOT NULL,
  `jns_mbl` varchar(15) NOT NULL,
  `merk` varchar(10) NOT NULL,
  `no_mesin` varchar(10) NOT NULL,
  `kasitas` int(11) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`no_pol`, `jns_mbl`, `merk`, `no_mesin`, `kasitas`, `tarif`) VALUES
('A4346AXT', 'APV', 'Suzuki ', 'AZ356928', 9, 300000),
('C3394ATX', 'HiAce', 'Toyota ', 'AX546721', 15, 500000),
('Z7124AXT', 'Ertiga', 'Suzuki ', 'AY4671923', 7, 250000);

-- --------------------------------------------------------

--
-- Table structure for table `kwitansi_sewa`
--

CREATE TABLE `kwitansi_sewa` (
  `no_kwt` varchar(10) NOT NULL,
  `tgl_kwt` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kwitansi_sewa`
--

INSERT INTO `kwitansi_sewa` (`no_kwt`, `tgl_kwt`) VALUES
('a658726b', '2023-06-01'),
('b364847c', '2023-05-05'),
('c364781d', '2023-05-15');

-- --------------------------------------------------------

--
-- Table structure for table `kwitansi_tambahan`
--

CREATE TABLE `kwitansi_tambahan` (
  `no_kwt_denda` varchar(10) NOT NULL,
  `tgl_kwt_denda` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kwitansi_tambahan`
--

INSERT INTO `kwitansi_tambahan` (`no_kwt_denda`, `tgl_kwt_denda`) VALUES
('a674892c', '2023-06-12'),
('b356472d', '2023-06-19'),
('c287326e', '2023-06-25');

-- --------------------------------------------------------

--
-- Table structure for table `penyewa`
--

CREATE TABLE `penyewa` (
  `id_penyewa` varchar(10) NOT NULL,
  `nm_penyewa` varchar(25) NOT NULL,
  `alamat` varchar(150) NOT NULL,
  `telp` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `penyewa`
--

INSERT INTO `penyewa` (`id_penyewa`, `nm_penyewa`, `alamat`, `telp`) VALUES
('a8un88', 'Agung', 'Sidanglayang', '087678682454'),
('m41d1a', 'Aldi', 'Bandung', '082364872692'),
('r1dw4nf', 'Ridwan', 'Majalaya', '082456723571');

-- --------------------------------------------------------

--
-- Table structure for table `sewa`
--

CREATE TABLE `sewa` (
  `no_fs` varchar(10) NOT NULL,
  `tlp_tujuan` varchar(15) NOT NULL,
  `kota` varchar(10) NOT NULL,
  `almt_tujuan` varchar(150) NOT NULL,
  `jml_penumpang` int(11) NOT NULL,
  `tgl_sewa` date NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `biaya_supir` int(11) NOT NULL,
  `biaya_sewa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sewa`
--

INSERT INTO `sewa` (`no_fs`, `tlp_tujuan`, `kota`, `almt_tujuan`, `jml_penumpang`, `tgl_sewa`, `tgl_mulai`, `tgl_selesai`, `biaya_supir`, `biaya_sewa`) VALUES
('a36482', '082536171234', 'Bandung', 'Jawa Timur, surabaya', 9, '2023-06-01', '2023-06-04', '2023-06-11', 500000, 5000000),
('b46612', '086372832353', 'Majayala', 'Banten, Serang', 7, '2023-06-05', '2023-06-09', '2023-06-18', 400000, 4000000),
('c54672', '084527238543', 'Bandung', 'Yogyakarta', 5, '2023-06-15', '2023-06-17', '2023-06-24', 450000, 3400000);

-- --------------------------------------------------------

--
-- Table structure for table `sopir`
--

CREATE TABLE `sopir` (
  `id_supir` varchar(10) NOT NULL,
  `nm_supir` varchar(25) NOT NULL,
  `tlp_supir` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sopir`
--

INSERT INTO `sopir` (`id_supir`, `nm_supir`, `tlp_supir`) VALUES
('4hm4dy', 'Yoga', '086782362354'),
('c3c39', 'cecep', '086786374522'),
('r124l', 'Rizal', '083267822421');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kembali`
--
ALTER TABLE `kembali`
  ADD PRIMARY KEY (`no_fk`);

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`no_pol`);

--
-- Indexes for table `kwitansi_sewa`
--
ALTER TABLE `kwitansi_sewa`
  ADD PRIMARY KEY (`no_kwt`);

--
-- Indexes for table `penyewa`
--
ALTER TABLE `penyewa`
  ADD PRIMARY KEY (`id_penyewa`);

--
-- Indexes for table `sewa`
--
ALTER TABLE `sewa`
  ADD PRIMARY KEY (`no_fs`);

--
-- Indexes for table `sopir`
--
ALTER TABLE `sopir`
  ADD PRIMARY KEY (`id_supir`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
