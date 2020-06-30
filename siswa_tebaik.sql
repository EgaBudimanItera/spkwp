/*
SQLyog Enterprise - MySQL GUI v7.14 
MySQL - 5.5.5-10.4.8-MariaDB : Database - siswa_terbaik
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`siswa_terbaik` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `siswa_terbaik`;

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL,
  `hakakses` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

/*Data for the table `login` */

insert  into `login`(`username`,`password`,`hakakses`) values ('admin@gmail.com','admin','admin'),('kepsek@gmail.com','kepsek','kepsek');

/*Table structure for table `tbl_alternatif` */

DROP TABLE IF EXISTS `tbl_alternatif`;

CREATE TABLE `tbl_alternatif` (
  `nis` varchar(20) NOT NULL,
  `nama_siswa` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `tempat_lahir` varchar(100) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  PRIMARY KEY (`nis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tbl_alternatif` */

insert  into `tbl_alternatif`(`nis`,`nama_siswa`,`alamat`,`tempat_lahir`,`tanggal_lahir`) values ('0027680281','TIARA LEDY','Heni Arong','Tanjung Jati','2004-12-15'),('0037491691','HENGKI SAPUTRA','Gedung Ranau','Surabaya','2003-12-19'),('0038377237','ICA EJELINA','TALANG SEGARE','TALANG SEGARE','2005-11-04'),('0040454218','ANDI PRASATYO','way wangi','way wangi','2004-02-23'),('0046006234','ISSANI','Heni Arong','Heni Arong','2004-10-20'),('0046504164','NADIA OKTAVIANA','heni arong','heni arong','2004-03-24'),('0047176080','JESICA ZOEELI SABATH','heni arong','heni arong','2004-05-02'),('0048005825','ENDI SAKIUN','heni Arong','heni Arong','2004-04-29'),('0048391240','EDI KURNIAWAN','Heni Arong','Heni Arong','2004-07-21'),('0048619354','ENDANG LESTARI','BATU RAJA','Heni Arong','2004-05-13'),('0051865887','YOGI ANGGARA ','heni arong','heni arong','2005-09-07'),('0052542708','FEBRI PRAYOGA','heni arong','OKU SELATAN','2005-01-01'),('0052695333','RUDI SAPUTRA','heni arong','KOTA BATU','2005-11-06'),('0056318251','LIKFI GUNAWAN','GEDUNG RANAU','Heni Arong','2005-07-01'),('0058046902','AMRI JAYA','heni arong','heni arong','2005-12-06'),('0059205850','RIO MAULANA','oku selatan','Gedung ranau','2005-07-03'),('0065680138','YUDA DINATA','heni arong','heni arong','2008-08-10'),('0066091566','ARDIANTO','Heni Arong','GEDUNG RANAU','2006-07-01'),('0067840275','HENDI SAKIUN','HENI ARONG','LAMPUNG BARAT','2006-02-01'),('00712810791','AHMAD FARDIAN','HANI ARONG','HANI ARONG','2004-02-21'),('0079635053','ANDRIAN SAPUTRA','HENI ARONG','LUMBOK','2007-02-17'),('3041801638','TRI HANDOKO','heni arong','Teluk betung','2009-09-07'),('704767433','DWI PERMANA','JAGA RAGA','JAGARAGA','2005-05-22'),('705043197','SITI SAPRIDA','JAGA RAGA','KOTA BATU','2005-12-11'),('712794768','FACHRI KHOIRUL IMAM','Gedung Ranau','heni arong','2005-10-29'),('712810780','ADE STIAWAN','KOTA BATU','KOTA BATU','2005-08-10'),('714088909','DIANA','heni arong','kota batu','2005-09-25'),('714639684','RENY SANIYA','HENI ARONG','KOTA BATU','2005-12-12'),('716536850','TIARA KLUDIA ','JAGA RAGA ','JAGA RAGA ','2005-09-10'),('717830847','MULYANA','JAGA RAGA','JAGA RAGA','2005-11-20'),('717878559','ANISA AULIA PUTRI','KOTA BATU','TANJUNG JATI','2005-05-25'),('718073759','RUSLI OKTAPIANTO','heni arong','jaga raga','2004-08-07'),('719603393','ADINDA LISTARI','heni Arong','way wangi','2005-04-12'),('720574043','ANANDA FITRI WULANDARI','heni arong','tanjung jati','2004-10-23'),('720755397','ANAND RAJAB','heni arong ','kota batu','2005-11-06'),('720755427','ELVINA RACHMAWATI','Heni arong','heni arong','2005-11-18'),('721746067','NAJWA SIFA','WAY WANGI','JAGA RAGA','2004-07-06'),('721753180','PUTRA SUKA WIYANA','heni arong ','OKU SELATAN','2005-01-28'),('721891078','SEJA PRATAMA','WAY WANGI','KOTA BATU ','2004-03-20'),('721891103','ARNIKA NURBADANI','heni arong','jagaraga','2005-04-02'),('722011469','LULUK AMELIA','heni arong','heni arong','2005-04-14'),('722354932','INTAN PUTRI WULAN DARI','JAGA RAGA ','KOTA BATU','2004-07-15'),('722993682','FITRIA','heni arong ','suka mulya','2004-11-13'),('723012141','ANDIKA PRASATYA','heni arong ','jagaraga','2004-08-15'),('723013217','AMAALIA MUHLISA','heni arong ','Kota Batu','2006-03-11'),('723302166','IRFAN MALIK','TALANG KEPAYAG','TALANG KEPAYANG','2004-06-19'),('723311885','DIAN RISKA FRIANTI','TALANG KEPAYANG ','TALANG KEPAYANG','2004-03-13'),('7332707117','HARIADI','heni arong ','tanjung jati','2004-08-14'),('741203233','YULI YANTI','TALANG KEPAYANG','KOTA BATU','2005-10-18');

/*Table structure for table `tbl_evaluasi` */

DROP TABLE IF EXISTS `tbl_evaluasi`;

CREATE TABLE `tbl_evaluasi` (
  `id_evaluasi` int(11) NOT NULL AUTO_INCREMENT,
  `id_subkriteria` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nilai` int(11) NOT NULL,
  PRIMARY KEY (`id_evaluasi`),
  KEY `fk_id_subkriteria` (`id_subkriteria`),
  KEY `fk_nis_alternatif` (`nis`),
  CONSTRAINT `FK_tbl_evaluasi` FOREIGN KEY (`nis`) REFERENCES `tbl_alternatif` (`nis`),
  CONSTRAINT `FK_tbl_evaluasi1` FOREIGN KEY (`id_subkriteria`) REFERENCES `tbl_subkriteria` (`id_subkriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=277 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_evaluasi` */

insert  into `tbl_evaluasi`(`id_evaluasi`,`id_subkriteria`,`nis`,`nilai`) values (77,1,'0040454218',78),(78,2,'0040454218',78),(79,3,'0040454218',84),(80,4,'0040454218',90),(81,1,'0048619354',80),(82,2,'0048619354',92),(83,3,'0048619354',78),(84,4,'0048619354',50),(85,1,'0052542708',78),(86,2,'0052542708',87),(87,3,'0052542708',76),(88,4,'0052542708',70),(89,1,'3041801638',79),(90,2,'3041801638',85),(91,3,'3041801638',71),(92,4,'3041801638',60),(93,1,'0065680138',77),(94,2,'0065680138',92),(95,3,'0065680138',94),(96,4,'0065680138',50),(97,1,'0048005825',78),(98,2,'0048005825',90),(99,3,'0048005825',81),(100,4,'0048005825',80),(101,1,'0066091566',79),(102,2,'0066091566',74),(103,3,'0066091566',78),(104,4,'0066091566',50),(105,1,'0058046902',78),(106,2,'0058046902',80),(107,3,'0058046902',76),(108,4,'0058046902',70),(109,1,'0079635053',77),(110,2,'0079635053',84),(111,3,'0079635053',89),(112,4,'0079635053',50),(113,1,'0048391240',78),(114,2,'0048391240',80),(115,3,'0048391240',73),(116,4,'0048391240',50),(117,1,'0067840275',77),(118,2,'0067840275',90),(119,3,'0067840275',81),(120,4,'0067840275',80),(121,1,'0037491691',80),(122,2,'0037491691',85),(123,3,'0037491691',76),(124,4,'0037491691',50),(125,1,'0038377237',82),(126,2,'0038377237',88),(127,3,'0038377237',92),(128,4,'0038377237',50),(129,1,'0046006234',81),(130,2,'0046006234',92),(131,3,'0046006234',81),(132,4,'0046006234',70),(133,1,'0047176080',76),(134,2,'0047176080',92),(135,3,'0047176080',78),(136,4,'0047176080',50),(137,1,'0056318251',78),(138,2,'0056318251',84),(139,3,'0056318251',78),(140,4,'0056318251',50),(141,1,'0046504164',80),(142,2,'0046504164',87),(143,3,'0046504164',86),(144,4,'0046504164',70),(145,1,'0059205850',78),(146,2,'0059205850',80),(147,3,'0059205850',81),(148,4,'0059205850',50),(149,1,'0052695333',79),(150,2,'0052695333',84),(151,3,'0052695333',68),(152,4,'0052695333',60),(153,1,'0027680281',77),(154,2,'0027680281',92),(155,3,'0027680281',78),(156,4,'0027680281',80),(157,1,'0051865887',76),(158,2,'0051865887',83),(159,3,'0051865887',84),(160,4,'0051865887',50),(161,1,'00712810791',76),(162,2,'00712810791',85),(163,3,'00712810791',78),(164,4,'00712810791',70),(165,1,'719603393',78),(166,2,'719603393',92),(167,3,'719603393',81),(168,4,'719603393',60),(169,1,'723013217',0),(170,2,'723013217',0),(171,3,'723013217',0),(172,4,'723013217',0),(173,1,'720574043',78),(174,2,'720574043',75),(175,3,'720574043',76),(176,4,'720574043',60),(177,1,'720755397',77),(178,2,'720755397',84),(179,3,'720755397',76),(180,4,'720755397',70),(181,1,'723012141',80),(182,2,'723012141',92),(183,3,'723012141',76),(184,4,'723012141',0),(185,1,'717878559',80),(186,2,'717878559',87),(187,3,'717878559',89),(188,4,'717878559',80),(189,1,'721891103',81),(190,2,'721891103',85),(191,3,'721891103',84),(192,4,'721891103',70),(193,1,'723311885',0),(194,2,'723311885',0),(195,3,'723311885',0),(196,4,'723311885',0),(197,1,'704767433',79),(198,2,'704767433',87),(199,3,'704767433',84),(200,4,'704767433',70),(201,1,'720755427',78),(202,2,'720755427',87),(203,3,'720755427',81),(204,4,'720755427',50),(205,1,'712794768',77),(206,2,'712794768',92),(207,3,'712794768',86),(208,4,'712794768',80),(209,1,'722354932',78),(210,2,'722354932',84),(211,3,'722354932',89),(212,4,'722354932',70),(213,1,'723302166',0),(214,2,'723302166',0),(215,3,'723302166',0),(216,4,'723302166',0),(217,1,'712810780',80),(218,2,'712810780',92),(219,3,'712810780',81),(220,4,'712810780',70),(221,1,'722011469',82),(222,2,'722011469',87),(223,3,'722011469',76),(224,4,'722011469',70),(225,1,'721753180',78),(226,2,'721753180',92),(227,3,'721753180',84),(228,4,'721753180',70),(229,1,'722993682',78),(230,2,'722993682',85),(231,3,'722993682',81),(232,4,'722993682',60),(233,1,'716536850',77),(234,2,'716536850',92),(235,3,'716536850',78),(236,4,'716536850',70),(237,1,'721891078',80),(238,2,'721891078',84),(239,3,'721891078',81),(240,4,'721891078',60),(241,1,'718073759',82),(242,2,'718073759',92),(243,3,'718073759',84),(244,4,'718073759',70),(245,1,'714088909',76),(246,2,'714088909',92),(247,3,'714088909',81),(248,4,'714088909',70),(249,1,'721746067',76),(250,2,'721746067',92),(251,3,'721746067',84),(252,4,'721746067',80),(253,1,'741203233',80),(254,2,'741203233',90),(255,3,'741203233',80),(256,4,'741203233',79),(261,1,'705043197',77),(262,2,'705043197',87),(263,3,'705043197',73),(264,4,'705043197',80),(265,1,'7332707117',0),(266,2,'7332707117',0),(267,3,'7332707117',0),(268,4,'7332707117',0),(269,1,'717830847',77),(270,2,'717830847',92),(271,3,'717830847',84),(272,4,'717830847',70),(273,1,'714639684',80),(274,2,'714639684',79),(275,3,'714639684',73),(276,4,'714639684',70);

/*Table structure for table `tbl_kriteria` */

DROP TABLE IF EXISTS `tbl_kriteria`;

CREATE TABLE `tbl_kriteria` (
  `id_kriteria` int(11) NOT NULL AUTO_INCREMENT,
  `nama_kriteria` varchar(40) NOT NULL,
  `bobot` float NOT NULL,
  `hasil_bobot` float NOT NULL,
  PRIMARY KEY (`id_kriteria`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_kriteria` */

insert  into `tbl_kriteria`(`id_kriteria`,`nama_kriteria`,`bobot`,`hasil_bobot`) values (1,'Akademik',4,0.8),(2,'Non akademik',1,0.2);

/*Table structure for table `tbl_subkriteria` */

DROP TABLE IF EXISTS `tbl_subkriteria`;

CREATE TABLE `tbl_subkriteria` (
  `id_subkriteria` int(11) NOT NULL AUTO_INCREMENT,
  `id_kriteria` int(11) NOT NULL,
  `nama_subkriteria` varchar(40) NOT NULL,
  `bobot` int(11) NOT NULL,
  `hasil_bobot` float NOT NULL,
  `bobot_global` float NOT NULL,
  PRIMARY KEY (`id_subkriteria`),
  KEY `fk_id_kriteria` (`id_kriteria`),
  CONSTRAINT `FK_tbl_subkriteria` FOREIGN KEY (`id_kriteria`) REFERENCES `tbl_kriteria` (`id_kriteria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `tbl_subkriteria` */

insert  into `tbl_subkriteria`(`id_subkriteria`,`id_kriteria`,`nama_subkriteria`,`bobot`,`hasil_bobot`,`bobot_global`) values (1,1,'Rata-rata Raport',5,0.416667,0.333334),(2,1,'Nilai kedisiplinan',4,0.333333,0.266666),(3,1,'Nilai kehadiran',3,0.25,0.2),(4,2,'Nilai extra kulikuler',2,1,0.2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
