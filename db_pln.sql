-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 06, 2019 at 10:18 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `db_pln`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_berita`
--

CREATE TABLE IF NOT EXISTS `tb_berita` (
  `idberita` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `tglposting` varchar(12) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `redaksi` text NOT NULL,
  `gambar` text NOT NULL,
  PRIMARY KEY (`idberita`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_berita`
--

INSERT INTO `tb_berita` (`idberita`, `iduser`, `tglposting`, `kategori`, `judul`, `redaksi`, `gambar`) VALUES
(1, 2, '31/03/2019', 'Pengumuman', 'Mencoba Tabel News', ' Mencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaruMencoba berita terbaru', 'LOGO KABUPATEN PANDEGLANG.png'),
(2, 2, '31/03/2019', 'Pengumuman', 'Sosilaisasi Narkoba Dua', 'Mencoba kembali berita, kali ini berita pengumuman, entah pengumuman apa yang mau di posting', '200px-Perusahaan_Listrik_Negara.png');

-- --------------------------------------------------------

--
-- Table structure for table `tb_dayalistrik`
--

CREATE TABLE IF NOT EXISTS `tb_dayalistrik` (
  `iddaya` int(11) NOT NULL AUTO_INCREMENT,
  `daya` varchar(10) NOT NULL,
  `tarif` varchar(10) NOT NULL,
  PRIMARY KEY (`iddaya`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_dayalistrik`
--

INSERT INTO `tb_dayalistrik` (`iddaya`, `daya`, `tarif`) VALUES
(1, '40 Amper', '20000'),
(2, '900', '60000');

-- --------------------------------------------------------

--
-- Table structure for table `tb_keluhan`
--

CREATE TABLE IF NOT EXISTS `tb_keluhan` (
  `idkeluhan` int(11) NOT NULL AUTO_INCREMENT,
  `idpelanggan` int(11) NOT NULL,
  `tglkeluhan` date NOT NULL,
  `isikeluhan` text NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`idkeluhan`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Dumping data for table `tb_keluhan`
--


-- --------------------------------------------------------

--
-- Table structure for table `tb_pelanggan`
--

CREATE TABLE IF NOT EXISTS `tb_pelanggan` (
  `idpelanggan` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `NIK` varchar(16) NOT NULL,
  `namalengkap` varchar(50) NOT NULL,
  `hp` varchar(12) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `kp` varchar(50) NOT NULL,
  `rt` varchar(3) NOT NULL,
  `rw` varchar(3) NOT NULL,
  `ds` varchar(50) NOT NULL,
  `kec` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`idpelanggan`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `tb_pelanggan`
--

INSERT INTO `tb_pelanggan` (`idpelanggan`, `iduser`, `NIK`, `namalengkap`, `hp`, `jk`, `kp`, `rt`, `rw`, `ds`, `kec`, `status`) VALUES
(1, 1, '12321432432', 'MOH. ILYAS', '08571060561', 'P', 'CIMAJA BATAS', '016', '004', 'BOJONG', 'BOJONG', 'Y'),
(2, 3, '6756764564565465', 'ENTIS SAEPULLAH', '082211132525', 'L', 'JASUGIH', '008', '002', 'BOJONG', 'BOJONG', 'Y'),
(3, 4, '98234987235497', 'ikhsanmahruri', '', 'L', 'muncang', '1', '2', 'BOJONG', 'BOJONG', 'Y'),
(5, 6, '5467866', 'budi', '', 'L', 'menes ', '3', '5', 'menes', 'menes', 'Y'),
(6, 9, '34457457', 'ZAM ZAM', '', 'L', 'BOJONG', '12', '013', 'BOJONG', 'BOJONG', 'Y'),
(7, 11, '23849832684', 'PERCOBAAN', '', 'L', 'KAMPUNG PERCOBAAN', '081', '98', 'BOJONG', 'BOJONG', 'T');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pemasangan`
--

CREATE TABLE IF NOT EXISTS `tb_pemasangan` (
  `idpemasangan` varchar(30) NOT NULL,
  `idpelanggan` int(11) NOT NULL,
  `idpetugas` int(11) NOT NULL,
  `tglpermohonan` date NOT NULL,
  `iddaya` int(11) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pemasangan`
--

INSERT INTO `tb_pemasangan` (`idpemasangan`, `idpelanggan`, `idpetugas`, `tglpermohonan`, `iddaya`, `status`) VALUES
('P-280420190556', 1, 1, '2019-04-28', 1, 1),
('P-280420190620', 2, 1, '2019-04-28', 2, 1),
('P-290420190143', 6, 2, '2019-04-29', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pembayaran`
--

CREATE TABLE IF NOT EXISTS `tb_pembayaran` (
  `idpembayaran` int(11) NOT NULL AUTO_INCREMENT,
  `idtagihan` int(11) NOT NULL,
  `tglpembayaran` date NOT NULL,
  `jenisbayar` varchar(50) NOT NULL,
  `jumlahbayar` varchar(6) NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`idpembayaran`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `tb_pembayaran`
--

INSERT INTO `tb_pembayaran` (`idpembayaran`, `idtagihan`, `tglpembayaran`, `jenisbayar`, `jumlahbayar`, `status`) VALUES
(1, 1, '2019-04-29', 'Tunai', '60000', 1),
(2, 2, '2019-04-29', 'Tunai', '60000', 1),
(3, 13, '2019-07-31', 'Tunai', '20000', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_perubahannama`
--

CREATE TABLE IF NOT EXISTS `tb_perubahannama` (
  `idperubahannama` int(11) NOT NULL AUTO_INCREMENT,
  `idpelanggan` int(11) NOT NULL,
  `tglperubahan` varchar(12) NOT NULL,
  `NIK` bigint(16) NOT NULL,
  `namapelanggan` varchar(50) NOT NULL,
  `hp` varchar(12) NOT NULL,
  `jk` varchar(1) NOT NULL,
  `kp` varchar(50) NOT NULL,
  `rt` int(3) NOT NULL,
  `rw` int(3) NOT NULL,
  `ds` varchar(50) NOT NULL,
  `kec` varchar(50) NOT NULL,
  `status` varchar(1) NOT NULL,
  PRIMARY KEY (`idperubahannama`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_perubahannama`
--


-- --------------------------------------------------------

--
-- Table structure for table `tb_petugas`
--

CREATE TABLE IF NOT EXISTS `tb_petugas` (
  `idpetugas` int(11) NOT NULL AUTO_INCREMENT,
  `iduser` int(11) NOT NULL,
  `NIP` bigint(16) NOT NULL,
  `namapetugas` varchar(50) NOT NULL,
  `hp` varchar(12) NOT NULL,
  `email` varchar(50) NOT NULL,
  PRIMARY KEY (`idpetugas`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `tb_petugas`
--

INSERT INTO `tb_petugas` (`idpetugas`, `iduser`, `NIP`, `namapetugas`, `hp`, `email`) VALUES
(1, 8, 124234324234234, 'DEVI', '082211132524', 'devi@gmail.com'),
(2, 10, 67856457547, 'BUDI SANTOSO', '083434634463', 'budi@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `tb_tagihan`
--

CREATE TABLE IF NOT EXISTS `tb_tagihan` (
  `idtagihan` int(11) NOT NULL AUTO_INCREMENT,
  `idpelanggan` varchar(30) NOT NULL,
  `iddaya` int(11) NOT NULL,
  `idpetugas` int(11) NOT NULL,
  `bulan` varchar(40) NOT NULL,
  `tahun` int(4) NOT NULL,
  `status` text NOT NULL,
  `ket` text NOT NULL,
  PRIMARY KEY (`idtagihan`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `tb_tagihan`
--

INSERT INTO `tb_tagihan` (`idtagihan`, `idpelanggan`, `iddaya`, `idpetugas`, `bulan`, `tahun`, `status`, `ket`) VALUES
(1, '1', 2, 1, 'Januari', 2019, '1', 'Tagihan Bulanan Januari Tahun 2019'),
(2, '1', 2, 1, 'Februari', 2019, '1', 'Tagihan Bulanan Februari Tahun 2019'),
(3, '1', 2, 1, 'Mei', 2019, '0', 'Tagihan Bulanan Mei Tahun 2019'),
(4, '1', 2, 1, 'Juni', 2019, '0', 'Tagihan Bulanan Juni Tahun 2019'),
(5, '1', 2, 1, 'Juli', 2019, '0', 'Tagihan Bulanan Juli Tahun 2019'),
(6, '1', 2, 1, 'Agustus', 2019, '0', 'Tagihan Bulanan Agustus Tahun 2019'),
(7, '1', 2, 1, 'September', 2019, '0', 'Tagihan Bulanan September Tahun 2019'),
(8, '2', 2, 1, 'Agustus', 2019, '0', 'Tagihan Bulanan Agustus Tahun 2019'),
(9, '2', 2, 1, 'September', 2019, '0', 'Tagihan Bulanan September Tahun 2019'),
(10, '2', 2, 1, 'Oktober', 2019, '0', 'Tagihan Bulanan Oktober Tahun 2019'),
(11, '2', 2, 1, 'November', 2019, '0', 'Tagihan Bulanan November Tahun 2019'),
(12, '2', 2, 1, 'Desember', 2019, '0', 'Tagihan Bulanan Desember Tahun 2019'),
(13, '1', 1, 1, 'Juli', 2019, '0', 'Tagihan Bulanan Juli Tahun 2019');

-- --------------------------------------------------------

--
-- Table structure for table `tb_ubahdaya`
--

CREATE TABLE IF NOT EXISTS `tb_ubahdaya` (
  `idubahdaya` int(11) NOT NULL AUTO_INCREMENT,
  `idpelanggan` int(11) NOT NULL,
  `iddayalama` int(11) NOT NULL,
  `iddayabaru` int(11) NOT NULL,
  `tglpermohonan` date NOT NULL,
  `status` int(1) NOT NULL,
  PRIMARY KEY (`idubahdaya`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `tb_ubahdaya`
--

INSERT INTO `tb_ubahdaya` (`idubahdaya`, `idpelanggan`, `iddayalama`, `iddayabaru`, `tglpermohonan`, `status`) VALUES
(1, 1, 2, 1, '2019-04-29', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE IF NOT EXISTS `tb_user` (
  `iduser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `level` varchar(10) NOT NULL,
  `photo` text NOT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`iduser`, `username`, `password`, `level`, `photo`) VALUES
(1, 'DEDE', 'manohara', 'Member', 'dede.jpg'),
(2, 'admin', 'admin', 'Admin', 'admin.jpg'),
(3, 'entis', 'entis', 'Member', 'K3006001300614.jpg'),
(4, 'im', '1234', 'Member', ''),
(6, 'bd', '1234', 'Member', 'K3006001300658.jpg'),
(8, 'devi', 'devi', 'Petugas', 'K3006001302649.jpg'),
(9, 'zam', 'zam', 'Member', 'home 1.jpg'),
(10, 'budi', 'budi', 'Petugas', 'K3006001301778.jpg'),
(11, 'COBA', 'COBA', 'Member', '20180724_184409.jpg');
