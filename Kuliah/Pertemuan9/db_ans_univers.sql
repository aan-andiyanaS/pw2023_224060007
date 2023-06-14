-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 17.38
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_ans_univers`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ans`
--

CREATE TABLE `ans` (
  `ID` int(11) NOT NULL,
  `Nama` varchar(30) NOT NULL,
  `NIM` int(11) NOT NULL,
  `Email` varchar(35) NOT NULL,
  `Jurusan` varchar(20) NOT NULL,
  `Gambar` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ans`
--

INSERT INTO `ans` (`ID`, `Nama`, `NIM`, `Email`, `Jurusan`, `Gambar`) VALUES
(246060007, 'Aan Andiyana Sandi', 224060007, '224060007.mhs@stmikjabar.ac.id', 'Teknik Informatika', 'IMG_9234-1.JPG'),
(224060008, 'Aan Andiyana S.', 224060008, '224060007.mhs@stmikjbr.ac.id', 'Teknik Informatika', 'IMG_9234-2.png'),
(224060009, 'Aan A. S,', 224060009, '224060007.mhs@stmik_jbr.ac.id', 'Teknik Informatika', 'IMG_9234-3.png'),
(30005, 'ANS', 30005, 'ans030005@gmail.com', 'Teknik', 'ANS-DAL-II.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
