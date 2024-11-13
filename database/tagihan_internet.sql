-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2024 at 02:13 AM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 5.6.39

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tagihan_internet`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_kas`
--

CREATE TABLE `tb_kas` (
  `id_kas` int(11) NOT NULL,
  `id_transaksi` int(11) NOT NULL,
  `tgl_kas` date NOT NULL,
  `keterangan` varchar(255) NOT NULL,
  `penerimaan` int(11) NOT NULL,
  `pengeluaran` int(11) NOT NULL,
  `jenis_kas` varchar(15) NOT NULL,
  `status` int(11) NOT NULL,
  `id_tagihan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tb_paket`
--

CREATE TABLE `tb_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_paket`
--

INSERT INTO `tb_paket` (`id_paket`, `nama_paket`, `harga`) VALUES
(1, 'Iprime 30Mbps', 250000),
(2, 'Iprime 20Mbps', 166000),
(3, 'Iprime 10Mbps', 140000),
(4, 'Iprime 5Mbps', 111000),
(11, 'Paket 100', 100000),
(12, 'Paket 150', 150000),
(13, 'Paket 200', 200000),
(14, 'Paket 250', 250000),
(15, 'Paket 300', 300000),
(16, 'Paket 320', 320000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE `tb_pelanggan` (
  `id_pelanggan` int(11) NOT NULL,
  `nama_pelanggan` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no_telp` varchar(20) NOT NULL,
  `nama_agen` varchar(150) NOT NULL,
  `paket` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`id_pelanggan`, `nama_pelanggan`, `alamat`, `no_telp`, `nama_agen`, `paket`) VALUES
(23, 'A', 'jombang', '054745', '11-11-2024', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_profile`
--

CREATE TABLE `tb_profile` (
  `id` int(11) NOT NULL,
  `nama_sekolah` varchar(255) NOT NULL,
  `alamat` text NOT NULL,
  `telpon` varchar(20) NOT NULL,
  `website` varchar(100) NOT NULL,
  `kota` varchar(100) NOT NULL,
  `bendahara` varchar(100) NOT NULL,
  `nip` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `ktu` varchar(255) NOT NULL,
  `nip_ktu` varchar(30) NOT NULL,
  `catatan` varchar(234) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_profile`
--

INSERT INTO `tb_profile` (`id`, `nama_sekolah`, `alamat`, `telpon`, `website`, `kota`, `bendahara`, `nip`, `foto`, `ktu`, `nip_ktu`, `catatan`) VALUES
(1, 'SANSENA MEDIA', 'Sumberagung Megaluh Jombang', '083190781585', 'jagodigital.web.id', 'JAKARTA', 'HERI', '0', 'SMD.png', '0', '0', 'Terima Kasih Pelanggan Setia \r\nSimpanlah Struk Ini Sebagai Bukti Pembayaran ');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE `tb_tagihan` (
  `id_tagihan` int(11) NOT NULL,
  `id_pelanggan` int(11) NOT NULL,
  `bulan_tahun` varchar(30) NOT NULL,
  `jml_bayar` int(11) NOT NULL,
  `terbayar` int(11) NOT NULL,
  `tgl_bayar` date NOT NULL,
  `status_bayar` int(11) NOT NULL,
  `no_invoice` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`id_tagihan`, `id_pelanggan`, `bulan_tahun`, `jml_bayar`, `terbayar`, `tgl_bayar`, `status_bayar`, `no_invoice`) VALUES
(42, 8, '102023', 82000, 82000, '2023-10-18', 1, '00001.BLR.MST.'),
(43, 9, '102023', 82000, 82000, '2023-10-23', 1, '00002.BLR.MST.'),
(44, 8, '112023', 82000, 82000, '2024-02-05', 1, '00005.BLR.MST.'),
(45, 9, '112023', 82000, 0, '0000-00-00', 0, ''),
(46, 10, '102023', 109000, 109000, '2023-10-24', 1, '00003.BLR.MST.'),
(47, 10, '112023', 109000, 0, '0000-00-00', 0, ''),
(48, 11, '112023', 82000, 0, '0000-00-00', 0, ''),
(49, 8, '122023', 82000, 0, '0000-00-00', 0, ''),
(50, 9, '122023', 82000, 0, '0000-00-00', 0, ''),
(51, 10, '122023', 109000, 0, '0000-00-00', 0, ''),
(52, 11, '122023', 82000, 82000, '2023-12-16', 1, '00004.BLR.MST.'),
(53, 8, '122024', 82000, 0, '0000-00-00', 0, ''),
(54, 9, '122024', 82000, 0, '0000-00-00', 0, ''),
(55, 10, '122024', 109000, 0, '0000-00-00', 0, ''),
(56, 11, '122024', 82000, 0, '0000-00-00', 0, ''),
(57, 12, '122024', 82000, 0, '0000-00-00', 0, ''),
(58, 13, '122024', 82000, 0, '0000-00-00', 0, ''),
(59, 14, '122024', 82000, 0, '0000-00-00', 0, ''),
(60, 15, '122024', 214000, 0, '0000-00-00', 0, ''),
(61, 16, '122024', 82000, 0, '0000-00-00', 0, ''),
(62, 17, '122024', 82000, 0, '0000-00-00', 0, ''),
(63, 18, '122024', 82000, 0, '0000-00-00', 0, ''),
(64, 19, '052024', 100000, 100000, '2024-05-07', 1, '00006.BLR.MST.'),
(65, 20, '052024', 100000, 100000, '2024-05-10', 1, '00008.BLR.MST.'),
(66, 21, '052024', 100000, 100000, '2024-05-10', 1, '00013.BLR.MST.'),
(67, 22, '052024', 100000, 0, '0000-00-00', 0, '00012.BLR.MST.'),
(68, 23, '112024', 250000, 0, '0000-00-00', 0, '00014.BLR.MST.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `nama_user` varchar(255) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(30) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `id_pelanggan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `nama_user`, `password`, `level`, `foto`, `id_pelanggan`) VALUES
(13, 'admin', 'Admin', 'sansena1993', 'admin', 'SMD.png', 12),
(27, 'ani', 'ani', 'user', 'kasir', 'SMD.png', 22),
(28, 'A', 'A', 'user', 'user', 'admin.png', 23);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_kas`
--
ALTER TABLE `tb_kas`
  ADD PRIMARY KEY (`id_kas`);

--
-- Indexes for table `tb_paket`
--
ALTER TABLE `tb_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `tb_profile`
--
ALTER TABLE `tb_profile`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  ADD PRIMARY KEY (`id_tagihan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_kas`
--
ALTER TABLE `tb_kas`
  MODIFY `id_kas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `tb_paket`
--
ALTER TABLE `tb_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `tb_pelanggan`
--
ALTER TABLE `tb_pelanggan`
  MODIFY `id_pelanggan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `tb_profile`
--
ALTER TABLE `tb_profile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_tagihan`
--
ALTER TABLE `tb_tagihan`
  MODIFY `id_tagihan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
