-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2022 at 07:56 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblogin`
--

CREATE TABLE `tblogin` (
  `ID` varchar(10) NOT NULL,
  `History` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblogin`
--

INSERT INTO `tblogin` (`ID`, `History`) VALUES
('32210022', '2022-06-09 08:25:12'),
('32210022', '2022-06-09 09:12:59'),
('32210022', '2022-06-09 12:00:41'),
('32210033', '2022-06-09 12:40:07'),
('32210022', '2022-06-09 12:44:30'),
('32210022', '2022-06-10 07:50:00'),
('32210022', '2022-06-10 14:15:51'),
('32210022', '2022-06-10 14:16:29'),
('32210022', '2022-06-10 14:17:00'),
('32210022', '2022-06-10 15:51:11'),
('32210022', '2022-06-10 15:53:32'),
('32210022', '2022-06-10 18:18:07'),
('32210022', '2022-06-10 18:18:54'),
('32210022', '2022-06-11 09:02:00'),
('32210022', '2022-06-11 09:10:25'),
('32210088', '2022-06-11 15:49:48');

-- --------------------------------------------------------

--
-- Table structure for table `tbobatcair`
--

CREATE TABLE `tbobatcair` (
  `Kode` int(10) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Kd_Kategori` varchar(10) NOT NULL,
  `Kategori_Obat` varchar(20) NOT NULL,
  `Tanggal_Kadaluarsa` date NOT NULL,
  `Keterangan` enum('Belum Kadaluarsa','Sudah Kadaluarsa') DEFAULT NULL,
  `Harga_Beli` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Total_Harga_Jual` int(100) NOT NULL,
  `Total_Harga_Beli` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbobatcair`
--

INSERT INTO `tbobatcair` (`Kode`, `Nama_Obat`, `Kd_Kategori`, `Kategori_Obat`, `Tanggal_Kadaluarsa`, `Keterangan`, `Harga_Beli`, `Harga_Jual`, `Quantity`, `Total_Harga_Jual`, `Total_Harga_Beli`) VALUES
(101, 'Mylanta', '10', 'Obat Cair', '2025-12-03', 'Belum Kadaluarsa', '10000', 12000, 49, 588000, 490000),
(102, 'Konidin', '10', 'Obat Cair', '2023-06-15', 'Belum Kadaluarsa', '10000', 12000, 27, 324000, 270000),
(103, 'Promag', '10', 'Obat Cair', '2020-01-19', 'Sudah Kadaluarsa', '15000', 18000, 50, 900000, 750000),
(104, 'Normalife', '10', 'Obat Cair', '2026-01-01', 'Belum Kadaluarsa', '30000', 36000, 15, 540000, 450000),
(105, 'Hexadol', '10', 'Obat Cair', '2023-01-01', 'Belum Kadaluarsa', '25000', 30000, 13, 390000, 325000),
(106, 'OBH Combi', '10', 'Obat Cair', '2022-12-12', 'Belum Kadaluarsa', '18000', 21600, 21, 453600, 378000),
(107, 'Obat Batuk Ibu dan Anak', '10', 'Obat Cair', '2022-09-12', 'Belum Kadaluarsa', '32000', 38400, 40, 1536000, 1280000),
(108, 'Albothyl', '10', 'Obat Cair', '2021-12-01', 'Sudah Kadaluarsa', '15000', 18000, 2, 36000, 30000),
(109, 'Callusol', '10', 'Obat Cair', '2022-05-01', 'Sudah Kadaluarsa', '12000', 14400, 14, 201600, 168000),
(1010, 'Gastrucid', '10', 'Obat Cair', '2023-10-01', 'Belum Kadaluarsa', '17000', 20400, 12, 244800, 204000),
(1012, 'Scoots', '10', 'Obat Cair', '2022-12-01', 'Belum Kadaluarsa', '40000', 48000, 10, 480000, 400000);

-- --------------------------------------------------------

--
-- Table structure for table `tbobatkapsul`
--

CREATE TABLE `tbobatkapsul` (
  `Kode` int(10) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Kd_Kategori` varchar(10) NOT NULL,
  `Kategori_Obat` varchar(20) NOT NULL,
  `Tanggal_Kadaluarsa` date NOT NULL,
  `Keterangan` enum('Belum Kadaluarsa','Sudah Kadaluarsa') DEFAULT NULL,
  `Harga_Beli` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Total_Harga_Jual` int(100) NOT NULL,
  `Total_Harga_Beli` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbobatkapsul`
--

INSERT INTO `tbobatkapsul` (`Kode`, `Nama_Obat`, `Kd_Kategori`, `Kategori_Obat`, `Tanggal_Kadaluarsa`, `Keterangan`, `Harga_Beli`, `Harga_Jual`, `Quantity`, `Total_Harga_Jual`, `Total_Harga_Beli`) VALUES
(301, 'Celebrex', '30', 'Obat Kapsul', '2022-10-01', 'Belum Kadaluarsa', '5000', 6000, 66, 396000, 330000),
(302, 'Tetracycline', '30', 'Obat Kapsul', '2022-12-01', 'Belum Kadaluarsa', '10000', 12000, 23, 276000, 230000),
(303, 'Amoxicillin', '30', 'Obat Kapsul', '2021-01-01', 'Sudah Kadaluarsa', '12000', 14400, 12, 172800, 144000);

-- --------------------------------------------------------

--
-- Table structure for table `tbobatoles`
--

CREATE TABLE `tbobatoles` (
  `Kode` int(10) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Kd_Kategori` varchar(10) NOT NULL,
  `Kategori_Obat` varchar(20) NOT NULL,
  `Tanggal_Kadaluarsa` date NOT NULL,
  `Keterangan` enum('Belum Kadaluarsa','Sudah Kadaluarsa') NOT NULL,
  `Harga_Beli` int(15) NOT NULL,
  `Harga_Jual` int(15) NOT NULL,
  `Quantity` int(15) NOT NULL,
  `Total_Harga_Jual` int(15) NOT NULL,
  `Total_Harga_Beli` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbobatoles`
--

INSERT INTO `tbobatoles` (`Kode`, `Nama_Obat`, `Kd_Kategori`, `Kategori_Obat`, `Tanggal_Kadaluarsa`, `Keterangan`, `Harga_Beli`, `Harga_Jual`, `Quantity`, `Total_Harga_Jual`, `Total_Harga_Beli`) VALUES
(401, 'Kaltrofen', '40', 'Obat Oles', '2022-01-01', 'Sudah Kadaluarsa', 10000, 12000, 23, 276000, 230000),
(402, 'Benzolac', '40', 'Obat Oles', '2025-12-01', 'Belum Kadaluarsa', 13000, 15600, 4, 62400, 52000);

-- --------------------------------------------------------

--
-- Table structure for table `tbobattablet`
--

CREATE TABLE `tbobattablet` (
  `Kode` int(10) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Kd_Kategori` varchar(10) NOT NULL,
  `Kategori_Obat` varchar(20) NOT NULL,
  `Tanggal_Kadaluarsa` date NOT NULL,
  `Keterangan` enum('Belum Kadaluarsa','Sudah Kadaluarsa') DEFAULT NULL,
  `Harga_Beli` varchar(100) NOT NULL,
  `Harga_Jual` int(100) NOT NULL,
  `Quantity` int(100) NOT NULL,
  `Total_Harga_Jual` int(100) NOT NULL,
  `Total_Harga_Beli` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbobattablet`
--

INSERT INTO `tbobattablet` (`Kode`, `Nama_Obat`, `Kd_Kategori`, `Kategori_Obat`, `Tanggal_Kadaluarsa`, `Keterangan`, `Harga_Beli`, `Harga_Jual`, `Quantity`, `Total_Harga_Jual`, `Total_Harga_Beli`) VALUES
(201, 'Paracetamol', '20', 'Obat Tablet', '2021-12-01', 'Sudah Kadaluarsa', '5000', 6000, 20, 120000, 100000),
(202, 'Mylanta Tablet', '20', 'Obat Tablet', '2026-12-01', 'Belum Kadaluarsa', '7000', 8400, 20, 168000, 140000),
(203, 'Panadol', '20', 'Obat Tablet', '2025-01-01', 'Belum Kadaluarsa', '5000', 6000, 50, 300000, 250000),
(204, 'Dexamethasone', '20', 'Obat Tablet', '2025-12-01', 'Belum Kadaluarsa', '15000', 18000, 30, 540000, 450000),
(205, 'Hufamag Plus', '20', 'Obat Tablet', '2025-12-01', 'Belum Kadaluarsa', '5000', 6000, 23, 138000, 115000);

-- --------------------------------------------------------

--
-- Table structure for table `tbsignup`
--

CREATE TABLE `tbsignup` (
  `ID` int(10) NOT NULL,
  `password` varchar(50) NOT NULL,
  `repassword` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbsignup`
--

INSERT INTO `tbsignup` (`ID`, `password`, `repassword`) VALUES
(32210022, '123', '123'),
(32210033, '12', '12'),
(32210088, '11', '11');

-- --------------------------------------------------------

--
-- Table structure for table `tbstokobat`
--

CREATE TABLE `tbstokobat` (
  `Kode` int(10) NOT NULL,
  `Nama_Obat` varchar(50) NOT NULL,
  `Kd_Kategori` varchar(10) NOT NULL,
  `Kategori_Obat` varchar(20) NOT NULL,
  `Tanggal_Kadaluarsa` date NOT NULL,
  `Keterangan` enum('Belum Kadaluarsa','Sudah Kadaluarsa') NOT NULL,
  `Harga_Beli` int(15) NOT NULL,
  `Harga_Jual` int(15) NOT NULL,
  `Quantity` int(15) NOT NULL,
  `Total_Harga_Jual` int(15) NOT NULL,
  `Total_Harga_Beli` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbstokobat`
--

INSERT INTO `tbstokobat` (`Kode`, `Nama_Obat`, `Kd_Kategori`, `Kategori_Obat`, `Tanggal_Kadaluarsa`, `Keterangan`, `Harga_Beli`, `Harga_Jual`, `Quantity`, `Total_Harga_Jual`, `Total_Harga_Beli`) VALUES
(101, 'Mylanta', '10', 'Obat Cair', '2025-12-03', 'Belum Kadaluarsa', 10000, 12000, 49, 588000, 490000),
(102, 'Konidin', '10', 'Obat Cair', '2023-06-15', 'Belum Kadaluarsa', 10000, 12000, 27, 324000, 270000),
(103, 'Promag', '10', 'Obat Cair', '2020-01-19', 'Sudah Kadaluarsa', 15000, 18000, 50, 900000, 750000),
(104, 'Normalife', '10', 'Obat Cair', '2026-01-01', 'Belum Kadaluarsa', 30000, 36000, 15, 540000, 450000),
(105, 'Hexadol', '10', 'Obat Cair', '2023-01-01', 'Belum Kadaluarsa', 25000, 30000, 13, 390000, 325000),
(106, 'OBH Combi', '10', 'Obat Cair', '2022-12-12', 'Belum Kadaluarsa', 18000, 21600, 21, 453600, 378000),
(107, 'Obat Batuk Ibu dan Anak', '10', 'Obat Cair', '2022-09-12', 'Belum Kadaluarsa', 32000, 38400, 40, 1536000, 1280000),
(108, 'Albothyl', '10', 'Obat Cair', '2021-12-01', 'Sudah Kadaluarsa', 15000, 18000, 2, 36000, 30000),
(201, 'Paracetamol', '20', 'Obat Tablet', '2021-12-01', 'Sudah Kadaluarsa', 5000, 6000, 20, 120000, 100000),
(202, 'Mylanta Tablet', '20', 'Obat Tablet', '2026-12-01', 'Belum Kadaluarsa', 7000, 8400, 20, 168000, 140000),
(203, 'Panadol', '20', 'Obat Tablet', '2025-01-01', 'Belum Kadaluarsa', 5000, 6000, 50, 300000, 250000),
(204, 'Dexamethasone', '20', 'Obat Tablet', '2025-12-01', 'Belum Kadaluarsa', 15000, 18000, 30, 540000, 450000),
(205, 'Hufamag Plus', '20', 'Obat Tablet', '2025-12-01', 'Belum Kadaluarsa', 5000, 6000, 23, 138000, 115000),
(301, 'Celebrex', '30', 'Obat Kapsul', '2022-10-01', 'Belum Kadaluarsa', 5000, 6000, 66, 396000, 330000),
(302, 'Tetracycline', '30', 'Obat Kapsul', '2022-12-01', 'Belum Kadaluarsa', 10000, 12000, 23, 276000, 230000),
(303, 'Amoxicillin', '30', 'Obat Kapsul', '2021-01-01', 'Sudah Kadaluarsa', 12000, 14400, 12, 172800, 144000),
(401, 'Kaltrofen', '40', 'Obat Oles', '2022-01-01', 'Sudah Kadaluarsa', 10000, 12000, 23, 276000, 230000),
(402, 'Benzolac', '40', 'Obat Oles', '2025-12-01', 'Belum Kadaluarsa', 13000, 15600, 4, 62400, 52000),
(1010, 'Gastrucid', '10', 'Obat Cair', '2023-10-01', 'Belum Kadaluarsa', 17000, 20400, 12, 244800, 204000),
(1012, 'Scoots', '10', 'Obat Cair', '2022-12-01', 'Belum Kadaluarsa', 40000, 48000, 10, 480000, 400000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbobatcair`
--
ALTER TABLE `tbobatcair`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `tbobatkapsul`
--
ALTER TABLE `tbobatkapsul`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `tbobatoles`
--
ALTER TABLE `tbobatoles`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `tbobattablet`
--
ALTER TABLE `tbobattablet`
  ADD PRIMARY KEY (`Kode`);

--
-- Indexes for table `tbsignup`
--
ALTER TABLE `tbsignup`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbstokobat`
--
ALTER TABLE `tbstokobat`
  ADD PRIMARY KEY (`Kode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
