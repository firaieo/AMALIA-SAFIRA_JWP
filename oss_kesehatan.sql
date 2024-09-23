-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2024 at 12:29 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 7.4.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `oss_kesehatan`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`) VALUES
('admin', '$2y$10$S/rkfvHUnYJO0xPwm3uOYOmUAPdSy5dP4n.Qs1y5Eoy9DLya5TU2u');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `namaLengkap` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kota` varchar(255) NOT NULL,
  `contact` varchar(15) NOT NULL,
  `paypalID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`username`, `password`, `namaLengkap`, `email`, `dob`, `gender`, `alamat`, `kota`, `contact`, `paypalID`) VALUES
('fira', '$2y$10$MguQYN.0q60zq.brAqSbwuPutFgbVo0URdaBgWTw5mYD.yOLyHO.m', 'Amalia Safira', 'firasafira@gmail.com', '2013-06-11', 'female', 'JL. KENDANGSARI NO.81', 'Kota Surabaya', '08976548261', '67654');

-- --------------------------------------------------------

--
-- Table structure for table `guestbook`
--

CREATE TABLE `guestbook` (
  `idGuest` varchar(255) NOT NULL,
  `namaGuest` varchar(255) NOT NULL,
  `emailGuest` varchar(255) NOT NULL,
  `pesanGuest` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `idKeranjang` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `idProduk` varchar(255) NOT NULL,
  `jumlah` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` enum('Belum Dibayar','Dibayar','Dibatalkan') NOT NULL,
  `idTransaksi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `keranjang`
--

INSERT INTO `keranjang` (`idKeranjang`, `username`, `idProduk`, `jumlah`, `harga`, `status`, `idTransaksi`) VALUES
(118, 'fira', 'PRD-1717705090', 1, 21000, 'Belum Dibayar', ''),
(119, 'fira', 'PRD-1717705225', 1, 216000, 'Belum Dibayar', '');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `idProduk` varchar(255) NOT NULL,
  `namaProduk` varchar(255) NOT NULL,
  `kategoriProduk` varchar(255) NOT NULL,
  `hargaProduk` int(11) NOT NULL,
  `stokProduk` int(11) NOT NULL,
  `gambarProduk` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`idProduk`, `namaProduk`, `kategoriProduk`, `hargaProduk`, `stokProduk`, `gambarProduk`) VALUES
('PRD-1717705090', 'Sakatonik ABC', 'Vitamin Anak', 21000, 14, '666219821b0d6.jpg'),
('PRD-1717705225', 'Blackmores Multivitamin', 'Vitamin Dewasa', 216000, 9, '66621a0946d6a.jpg'),
('PRD-1717705983', 'Vegeblend 21 Jr 30 Tablet', 'Vitamin Anak', 135000, 15, '66621cff4947b.jpg'),
('PRD-1717706097', 'Baju APD', 'Perlengkapan Perawat', 250000, 20, '66621d7159c2d.jfif'),
('PRD-1717727585', 'Sepeda Kebugaran Cardio Workout', 'Perlengkapan Olahraga', 620000, 15, '6662716160dcf.jfif'),
('PRD-1717727697', 'Stetoscope Riester', 'Perlengkapan Dokter', 345000, 10, '666271d15071e.jpg'),
('PRD-1717727782', 'Alat Tensi Darah Digital', 'Alat Kesehatan', 160000, 15, '66627226a323a.jfif'),
('PRD-1717727784', 'Degirol Tenggorokan', 'Obat-Obatan', 12000, 15, 'degirol.jpg'),
('PRD-1717727785', 'Freshcare Smash GRATIS Lanyard', 'Obat-Obatan', 17000, 23, 'smash.jpg'),
('PRD-1717727783', 'Vitamin Vermint Kesehatan', 'Vitamin Dewasa', 25000, 20, '10526-1665780907.jpeg'),
('PRD-1717727786', 'Salonpas KOYO', 'Obat-Obatan', 12000, 25, 'salonpas.jpg'),
('PRD-1717727787', 'HOLLY Sabun Hijau Antiseptik', 'Obat-Obatan', 6000, 25, 'sabunhijau.jpg'),
('PRD-1717727788', 'Bedak Marcks TEEN Compact Powder', 'Produk Kecantikan', 28000, 25, 'marcksteen.jpeg'),
('PRD-1717727789', 'Byebye Fever Pereda Demam Anak', 'Obat-Obatan', 13000, 25, 'byebye.jpg'),
('PRD-1717727790', 'Cek Gula Darah', 'Perlengkapan Rumah Sakit', 67000, 25, 'cekgula.jpg'),
('PRD-1717727791', 'Tes Urine', 'lain-lain', 9000, 15, 'tesurine.jpg'),
('PRD-1717727792', 'Guasha Face Massage Totok Wajah', 'Produk Kecantikan', 15000, 20, 'guasha.jpeg'),
('PRD-1717727793', 'Tongkat Kaki Tiga', 'lain-lain', 120000, 5, 'tongkat.jpg');


-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `idTransaksi` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `tanggalTransaksi` date NOT NULL,
  `caraBayar` enum('Prepaid','Postpaid') NOT NULL,
  `bank` varchar(255) NOT NULL,
  `statusTransaksi` enum('Pending','Accepted','Rejected','Cancelled') NOT NULL,
  `totalHarga` int(11) NOT NULL,
  `statusPengiriman` enum('Pending','Dalam Perjalanan','Terkirim','Dibatalkan') NOT NULL,
  `feedBack` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `guestbook`
--
ALTER TABLE `guestbook`
  ADD PRIMARY KEY (`idGuest`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`idKeranjang`),
  ADD KEY `username` (`username`,`idProduk`),
  ADD KEY `idProduk` (`idProduk`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`idProduk`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`idTransaksi`),
  ADD KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `idKeranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=120;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD CONSTRAINT `keranjang_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`username`),
  ADD CONSTRAINT `keranjang_ibfk_2` FOREIGN KEY (`idProduk`) REFERENCES `produk` (`idProduk`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`username`) REFERENCES `customer` (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
