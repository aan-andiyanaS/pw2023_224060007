-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 14 Jun 2023 pada 14.06
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
  `Nama` varchar(25) DEFAULT NULL,
  `NIM` int(11) DEFAULT NULL,
  `Jurusan` varchar(15) DEFAULT NULL,
  `Gambar` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `ans`
--

INSERT INTO `ans` (`Nama`, `NIM`, `Jurusan`, `Gambar`) VALUES
('Aan Andiyana Sandi', 24060007, 'Teknik Informat', 'IMG_9234.JPG'),
('Aan Andiyana S.', 24060007, 'Teknik Informat', 'IMG_9234-YTpPGbmvd-t'),
('Aan A. S,', 224060007, 'Teknik Informat', 'IMG_9234-PhotoRoom.p'),
('ANS', 30005, 'Teknik', '20190707_073417.jpg');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
