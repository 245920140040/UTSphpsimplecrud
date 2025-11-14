/*
SQLyog Community v12.5.1 (64 bit)
MySQL - 8.0.30 : Database - db_simplecrud
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db_simplecrud` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db_simplecrud`;

/*Table structure for table `tb_departemen` */

DROP TABLE IF EXISTS `tb_departemen`;

CREATE TABLE `tb_departemen` (
  `id_departemen` smallint NOT NULL AUTO_INCREMENT,
  `nama_departemen` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id_departemen`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_departemen` */

LOCK TABLES `tb_departemen` WRITE;

insert  into `tb_departemen`(`id_departemen`,`nama_departemen`) values 
(1,'HRD'),
(2,'KEUANGAN'),
(3,'IT'),
(4,'PRODUKSI'),
(5,'MARKETING'),
(6,'LOGISTIK'),
(7,'CUSTOMER SERVICE'),
(8,'MANAJEMEN');

UNLOCK TABLES;

/*Table structure for table `tb_jabatan` */

DROP TABLE IF EXISTS `tb_jabatan`;

CREATE TABLE `tb_jabatan` (
  `kode_jabatan` char(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`kode_jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_jabatan` */

LOCK TABLES `tb_jabatan` WRITE;

insert  into `tb_jabatan`(`kode_jabatan`,`nama_jabatan`) values 
('CS','Customer Servicen'),
('D','Direktur'),
('HRD','Human Resource'),
('MRT','Marketing'),
('OBG','Office Boy/Girl'),
('SITP','Staf IT Programmer'),
('SP','Supervisor');

UNLOCK TABLES;

/*Table structure for table `tb_pegawai` */

DROP TABLE IF EXISTS `tb_pegawai`;

CREATE TABLE `tb_pegawai` (
  `id_pgw` int NOT NULL AUTO_INCREMENT,
  `nik_pgw` char(12) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_pgw` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jabatan_pgw` char(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `departemen` mediumint NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telp` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status_pgw` tinyint(1) NOT NULL,
  PRIMARY KEY (`id_pgw`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

/*Data for the table `tb_pegawai` */

LOCK TABLES `tb_pegawai` WRITE;

insert  into `tb_pegawai`(`id_pgw`,`nik_pgw`,`nama_pgw`,`jabatan_pgw`,`alamat`,`departemen`,`email`,`telp`,`status_pgw`) values 
(4,'234638902','HSU3HI3','D','H2IH2HR',4,'broo@gmail.com','19AS',1),
(5,'34526789302','brooclyn','CS','borong',5,'lisa@gmail.com','45678910',2),
(6,'097847227462','hugo anggol','HRD','ruteng',7,'huhgo@gmail.com','7849726e62',1);

UNLOCK TABLES;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
