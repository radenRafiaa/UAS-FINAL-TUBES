-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 06, 2023 at 03:14 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_anxiety`
--

-- --------------------------------------------------------

--
-- Table structure for table `catatan_konsultasi`
--

CREATE TABLE `catatan_konsultasi` (
  `id_catatan` varchar(36) NOT NULL,
  `id_dokter` varchar(36) NOT NULL,
  `id_pasien` varchar(36) NOT NULL,
  `nama_dokter` varchar(30) NOT NULL,
  `tgl_waktu_catatan` datetime NOT NULL,
  `isi_catatan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `catatan_konsultasi`
--

INSERT INTO `catatan_konsultasi` (`id_catatan`, `id_dokter`, `id_pasien`, `nama_dokter`, `tgl_waktu_catatan`, `isi_catatan`) VALUES
('fVoiNsDYJditBDzxrsJxyW1p7pQl9pJfVuEC', '!@#$%', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', 'Abdul Ghofur', '2023-01-03 10:17:38', ''),
('MW8YMRjJFp8FRhHPZjxsgc5doTnsTSmrhePG', '!@#$%', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', 'Abdul Ghofur', '2023-01-03 10:17:30', 'banyak-banyak tidur'),
('OZDI3JmNDQXDAzxtIteiL8SorHIVWZ4P70fX', '12345', 'abcdefg', 'Firman Panji Utama', '2022-07-04 09:35:33', 'kamu harus tidur banyak'),
('v8f1vnhReiO6bBPHpCGBQIelaYgQX3zIEclG', '12345', 'abcdefg', 'Firman Panji Utama', '2023-01-03 10:11:21', 'Kurangi kebiasaan toxic'),
('yznX465joVA1O4QKGyj3VKRPIx6bU21QrKcK', '!@#$%', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', 'Abdul Ghofur', '2023-01-03 10:17:40', '');

-- --------------------------------------------------------

--
-- Table structure for table `chat`
--

CREATE TABLE `chat` (
  `id_chat` varchar(36) NOT NULL,
  `id_awal` varchar(36) NOT NULL,
  `id_tujuan` varchar(36) NOT NULL,
  `pengirim` varchar(30) NOT NULL,
  `isi_chat` text NOT NULL,
  `tgl_waktu_chat` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `chat`
--

INSERT INTO `chat` (`id_chat`, `id_awal`, `id_tujuan`, `pengirim`, `isi_chat`, `tgl_waktu_chat`) VALUES
('1sKrxXd9kxCYW4XRp4ENpgnEYruZcZjNFvdB', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', '!@#$%', 'Abdul Ghofur', 'Apa  Saja Keluhannya?', '2022-12-20 08:53:09'),
('1vMgZ6dIFF0v1tVXoKJmff43jdWxK5VH6xUq', 'abcdefg', '!@#$%', 'Qalbun Saliim', 'hai bang pur', '2022-10-27 14:18:26'),
('8jgUWGWqXlDC79NhNItEIQVxDe69xCyzjRJf', 'abcdefg', '12345', 'Qalbun Saliim', 'halo bang asat', '2022-10-27 13:57:22'),
('9mCcWKYLxLjqUIM7H67g2xqhuqCevoJOxYlt', 'abcdefg', '12345', 'Qalbun Saliim', 'halo pak', '2022-07-04 09:34:05'),
('AWuFHNm0nWlDlHF3FpYlOTTf7yqFZU15SWhV', 'abcdefg', '12345', 'Firman Panji Utama', 'hai juga', '2022-07-04 09:35:22'),
('EVNakuaCV1nAHQn1WmoaToXrhIvUL0KDOQbX', 'abcdefg', '!@#$%', 'Qalbun Saliim', '', '2022-10-27 14:18:26'),
('NixdDLL1Qzvo89iy2XW33cgE70ZdKJrvcUoR', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', '!@#$%', 'Saeful Anwar', 'Hai dok saya anxiety nich', '2022-12-20 08:42:58'),
('rOqQjTYoYDS0t8PYhcxv4XfuqFmLAbfgWeNM', 'abcdefg', '12345', 'Firman Panji Utama', 'santai sat', '2022-10-27 13:58:05'),
('tsS1KOL90NIF7z8vA19NedhU0nLRt7bngTSd', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', '!@#$%', 'Saeful Anwar', 'Hai dok saya anxiety nich', '2022-12-20 08:43:46'),
('y9vp4J8UMMFqovWMPOuP6Tt0rjf9ZTaiCykz', 'abcdefg', '!@#$%', 'Qalbun Saliim', 'hi bang!!!', '2022-10-27 14:18:55');

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id_informasi` varchar(36) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `source` text NOT NULL,
  `tgl_pembuatan` date NOT NULL,
  `isi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id_informasi`, `judul`, `source`, `tgl_pembuatan`, `isi`) VALUES
('!@#$%^^', 'TestKedua', 'DokterAnak', '2022-05-10', 'hehehehehehe'),
('123456', 'TestPertama', 'https://www.youtube.com/watch?v=F83kSqH6WrY', '2022-06-01', 'Sudah tidak tahan lagi'),
('1YF5DQMPAxYhYDLeRkRIfuvmsDfTblXO9yBN', 'sehati dirimu', 'sehati.com', '2012-04-16', 'turu dek'),
('cnkyaFYWY5jbin5ThcLGcabGCESO8ctq1Kpj', 'Rokok itu tidak sehat', 'halodoc.com', '2022-05-30', '1. menyebabkan kerusakan paru-paru\n2. menurunkan kesehatan jantung\n3. mengalami gangguan imun tubuh\n4. merokok memicumunculnya sel kanker'),
('DSMXaBKTTCtx9elICt3PimEP1zYJTP6lYhW8', 'Manfaat Tidur', 'tidur.com', '2017-06-18', 'Tidur dapat meningkatkan produktifitas pagi'),
('dxZ8AS5iOBK3KJCpeU5CeErXgqcfNBaBSYEb', 'sanipdna', 'sinspcoe', '2016-05-17', 'woiefnosindcpasodmw'),
('K92Aa5lzemHh1QtQ6XjLVYsvJOaLF8bLPvpP', 'tes3', 'tes3', '2014-10-30', 'tes3tes3'),
('Uq7Qrzfqmjg9qejaXzJF5CXaMopF5p5N7cPt', 'tes', 'tes.cpm', '2012-09-21', 'testestes'),
('z3Lxa469XKdkkXaFxYqmd6YQrvnOXhK6fyT1', 'TES GAGAL', 'tes.com', '2010-01-01', '');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` varchar(36) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(36) NOT NULL,
  `email` varchar(60) NOT NULL,
  `role` varchar(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `usia` int(11) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `alamat` text NOT NULL,
  `kota` varchar(30) NOT NULL,
  `no_kontak` varchar(15) NOT NULL,
  `status_login` varchar(3) NOT NULL,
  `connect_id` varchar(36) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `email`, `role`, `nama`, `usia`, `tgl_lahir`, `alamat`, `kota`, `no_kontak`, `status_login`, `connect_id`) VALUES
('!@#$%', 'gopur', 'gopur123', 'gopur@gmail.com', 'Psikiater', 'Abdul Ghofur', 20, '2002-05-14', 'jl. bersama', 'Pekalongan', '+6282149279475', 'off', 'NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e'),
('12345', 'panjikeun', 'panji123', 'panji@gmail.com', 'Psikolog', 'Firman Panji Utama', 20, '2002-06-21', 'jl. rumah panji', 'Malang', '+6282149275941', 'off', ''),
('1asc234dscv34tdsfgvr', 'tes', 'tes123', 'tes@gmail.com', 'tes', 'tes', 11, '2023-01-10', 'tes', 'tes', '9318203', '', ''),
('8UJSvvvKIC1fWp0t2jV76j0EZOIRjvKnqBtG', 'rizky', 'rizky123', 'rizky@gmail.com', 'Psikolog', 'Rizky Ganteng', 20, '2001-09-10', 'jl. layangan', 'Bandung', '083275849386', 'off', ''),
('abcdefg', 'saliim11', 'saliim123', 'saliim@gmail.com', 'Pasien', 'Qalbun Saliim', 20, '2002-10-08', 'jl. rumah saya', 'Jakarta', '+6285757606701', 'off', ''),
('admn1111', 'admin', 'admin123', '-', 'Admin', 'anonymous', 0, '2022-07-01', '-', '-', '-', 'off', ''),
('b456edd497585017bfd1f90b69690788', 'doni', 'f9330f242ff516494a21d3fd94f0807f', 'doni@gmail.com', 'on', 'Bang Sat', 20, '2023-01-04', 'jalan jalan', 'kota kotaan', '082147586', 'off', ''),
('gQXhEoPElrl82Qnl8gKvskdcM6mqreWjqzUy', 'rapi', 'rapi', 'rafi@gmail.com', 'Pasien', 'Raden Rafi', 19, '2002-07-07', 'jl. terbang', 'Bandung', '082175894783', 'off', ''),
('NhS1OQqlnP9CyW9txpMkMtskrh5yOiRWWs9e', 'saeful', 'saeful123', 'saeful@gmail.com', 'Pasien', 'Saeful Anwar', 20, '2002-12-12', 'Jl. Kenangan', 'Karawang', '085784958672', 'off', '!@#$%');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `catatan_konsultasi`
--
ALTER TABLE `catatan_konsultasi`
  ADD PRIMARY KEY (`id_catatan`),
  ADD KEY `id_dokter` (`id_dokter`),
  ADD KEY `id_pasien` (`id_pasien`);

--
-- Indexes for table `chat`
--
ALTER TABLE `chat`
  ADD PRIMARY KEY (`id_chat`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id_informasi`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
