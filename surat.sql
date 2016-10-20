-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2014 at 02:59 PM
-- Server version: 5.5.32
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `surat`
--
CREATE DATABASE IF NOT EXISTS `surat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `surat`;

-- --------------------------------------------------------

--
-- Table structure for table `dosens`
--

CREATE TABLE IF NOT EXISTS `dosens` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nik` int(11) NOT NULL,
  `nama` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `jenissurats`
--

CREATE TABLE IF NOT EXISTS `jenissurats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdjenis` int(11) NOT NULL,
  `namajenis` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `kontaks`
--

CREATE TABLE IF NOT EXISTS `kontaks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdkontak` int(11) NOT NULL,
  `nama` varchar(512) NOT NULL,
  `alamat` varchar(512) NOT NULL,
  `kota` varchar(512) NOT NULL,
  `kodepos` int(11) NOT NULL,
  `notelp` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `levels`
--

CREATE TABLE IF NOT EXISTS `levels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode` char(3) NOT NULL,
  `nama` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `levels`
--

INSERT INTO `levels` (`id`, `kode`, `nama`) VALUES
(1, 'FTI', 'Fakultas Teknologi Informasi'),
(2, 'PTI', 'Prodi Teknik Informatika'),
(3, 'PSI', 'Prodi Sistem Informasi');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswas`
--

CREATE TABLE IF NOT EXISTS `mahasiswas` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(8) NOT NULL,
  `nama` varchar(512) NOT NULL,
  `prodi` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `pejabats`
--

CREATE TABLE IF NOT EXISTS `pejabats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kdpejabat` int(11) NOT NULL,
  `namapejabat` varchar(512) NOT NULL,
  `jabatan` varchar(512) NOT NULL,
  `prodi` int(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `permohonans`
--

CREATE TABLE IF NOT EXISTS `permohonans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `idjs` int(11) NOT NULL,
  `tglpo` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `status` varchar(512) NOT NULL,
  `detilpo` text NOT NULL,
  `nama` varchar(100) NOT NULL,
  `alamat` varchar(400) NOT NULL,
  `tembusan` varchar(400) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suratkeluars`
--

CREATE TABLE IF NOT EXISTS `suratkeluars` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nosk` varchar(50) NOT NULL,
  `tglsk` date NOT NULL,
  `halsk` varchar(512) NOT NULL,
  `isisk` text NOT NULL,
  `idpejabat` int(11) NOT NULL,
  `idkontak` int(11) NOT NULL,
  `iduser` int(11) NOT NULL,
  `tembusan` varchar(512) NOT NULL,
  `filename` varchar(512) NOT NULL,
  `filepath` varchar(512) NOT NULL,
  `mime_path` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `suratmasuks`
--

CREATE TABLE IF NOT EXISTS `suratmasuks` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nosm` varchar(50) NOT NULL,
  `tglsm` date NOT NULL,
  `halsm` varchar(512) NOT NULL,
  `idkontak` int(11) NOT NULL,
  `filename` varchar(512) NOT NULL,
  `filepath` varchar(512) NOT NULL,
  `mime_type` varchar(256) NOT NULL,
  `iduser` int(11) NOT NULL,
  `idlevel` int(11) NOT NULL,
  `admin` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=16 ;

--
-- Dumping data for table `suratmasuks`
--

INSERT INTO `suratmasuks` (`id`, `nosm`, `tglsm`, `halsm`, `idkontak`, `filename`, `filepath`, `mime_type`, `iduser`, `idlevel`, `admin`) VALUES
(1, '349/B07e/a/FTI-UKDW/2012', '2012-10-08', 'Surat Tugas Dekan untuk menulis Jurnal Informatika Volume 8 No.2, November 2012', 1, '', '', '', 1, 1, 0),
(2, '350/B07e/a/FTI-UKDW/2014', '2014-10-09', 'Surat Undangan Seminar Technopreneurship', 3, '', '', '', 3, 1, 0),
(3, '351/B07e/a/FTI-UKDW/2014', '2014-10-16', 'Surat Undangan Programming Contest 2014', 8, '', '', '', 8, 2, 0),
(5, '352/B07e/a/FTI-UKDW/2014', '2014-10-18', 'Surat Undangan', 1, 'preview.jpg', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\students\\', 'image/jpeg', 1, 3, 0),
(6, '353/B07e/a/FTI-UKDW/2014', '2014-10-18', 'Surat Undangan 2', 2, 'mit shapeshifting.gif', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/gif', 2, 3, 0),
(7, '354/B07e/a/FTI-UKDW/2012', '2014-10-20', 'Surat Coba', 0, 'Chrysanthemum.jpg', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/jpeg', 71110012, 0, 0),
(8, '355/B07e/a/FTI-UKDW/2014', '2014-10-20', 'Surat Undangan Menkominfo', 8, 'Tulips.jpg', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/jpeg', 0, 0, 0),
(9, '356/B07e/a/FTI-UKDW/2014', '2014-10-20', 'Tes Upload', 9, 'Lighthouse.jpg', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/jpeg', 0, 0, 0),
(10, '357/B07e/a/FTI-UKDW/2014', '2014-11-01', 'Surat Coba November', 1, '1601041_10202728808775003_8531263971206100065_n.jpg', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/jpeg', 1, 2, 0),
(11, '351/B07e/a/FTI-UKDW/2013', '2014-11-01', 'Surat Pdf', 2, 'cakepdf.pdf', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'application/pdf', 2, 2, 0),
(12, '358/B07e/a/FTI-UKDW/2014', '2014-11-11', 'Surat Undangan Seminar Ilmiah', 1, '17381490-2013-chinese-lunar-new-year-greetings-text-wishing-health-good-fortune-prosperity-happiness-in-the-y.jpg', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/jpeg', 5, 1, 5),
(13, '359/B07e/a/FTI-UKDW/2014', '2014-11-14', 'Surat Coba Admin', 9, 'flowchartLZW.png', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/png', 5, 2, 0),
(14, '340/B07e/a/FTI-UKDW/2014', '2014-11-14', 'Surat Admin Coba', 3, 'F_27_8.gif', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/gif', 5, 3, 0),
(15, '360/B07e/a/FTI-UKDW/2014', '2014-11-14', 'Surat Try Again', 11, 'Untitled.png', 'C:/xampp/htdocs/suratbaru8OKT\\files\\photos\\suratmasuks\\', 'image/png', 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE IF NOT EXISTS `templates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `isitmp` text NOT NULL,
  `idjs` int(11) NOT NULL,
  `kdtmplt` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `userrs`
--

CREATE TABLE IF NOT EXISTS `userrs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nim` int(8) NOT NULL,
  `nik` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(20) NOT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(5, 'Oswin', '$2a$10$.ICD79m9pPH3oN0hU2GhRuajaq3Sa80BEaT.Owu9QYzzc63UlU4/S', 'admin', '2014-11-07 08:15:18', '2014-11-07 08:15:18'),
(6, 'Rony', '$2a$10$JFQMdBLdHXF5IxxiLNW7Qees.WQiNlzAoGrCps/4KXXljADkozDWu', 'admin', '2014-11-14 10:04:23', '2014-11-14 10:04:23');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
