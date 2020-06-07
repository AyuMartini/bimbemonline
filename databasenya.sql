/*
SQLyog Ultimate v12.5.1 (64 bit)
MySQL - 10.4.11-MariaDB : Database - bimble_online
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`bimble_online` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `bimble_online`;

/*Table structure for table `detail_soal` */

DROP TABLE IF EXISTS `detail_soal`;

CREATE TABLE `detail_soal` (
  `KODE_SOAL` char(5) DEFAULT NULL,
  `SOAL` varchar(500) DEFAULT NULL,
  `JAWABAN_A` varchar(300) DEFAULT NULL,
  `JAWABAN_B` varchar(300) DEFAULT NULL,
  `JAWABAN_C` varchar(300) DEFAULT NULL,
  `JAWABAN_D` varchar(300) DEFAULT NULL,
  `KUNCI` char(1) DEFAULT NULL,
  `NO` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `detail_soal` */

insert  into `detail_soal`(`KODE_SOAL`,`SOAL`,`JAWABAN_A`,`JAWABAN_B`,`JAWABAN_C`,`JAWABAN_D`,`KUNCI`,`NO`) values 
('Q0001','1.	Watashi wa kono tochi de teishoku ni tsuki, seikatsu no ( 	) o kizuita.','Konkyo ','Kiban','Kongen','Kichi','B',1),
('Q0001','Giron wa nankÅ suru to omottaga, sugu ni iken ga matomari,(	 ) ketsuron ga deta.','Sun nari','Uttori','Funwari','Kossori','A',2),
('Q0001','Sakki ekimae de SatÅ-san o ( 	) ndesuga, ima, kaigai ni iru hazunanoni hendesu ne.','Miawaseta','Misugoshita','Mikaketa','Michigaeta','C',3),
('Q0001','ShichÅ no sekinin aru kÅdÅ ga jÅ«min no fuan o ( ) shi, gyÅsei ni taisuru kitai ga ikkini takamatta.','Issou','Tsuihou','Sakujo','Haishutsu','A',4),
('Q0001','JÅ«bun ni nita yasai wa aji ga ( ) yawarakaku, totemo oishikatta.','Tokete','Shimite','Juntte','Shizunde','B',5),
('Q0003','a','a','a','a','a','A',1),
('Q0003','a','a','a','a','a','A',2),
('Q0003','a','a','a','a','a','A',3),
('Q0003','a','a','a','a','a','A',4),
('Q0003','a','a','a','a','a','A',5);

/*Table structure for table `diskusi` */

DROP TABLE IF EXISTS `diskusi`;

CREATE TABLE `diskusi` (
  `ID_CHAT` varchar(5) DEFAULT NULL,
  `ID_USER` varchar(5) DEFAULT NULL,
  `NAMA_USER` varchar(50) DEFAULT NULL,
  `DATETIME` datetime DEFAULT NULL,
  `PESAN` varchar(300) DEFAULT NULL,
  `KODE_KELAS` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `diskusi` */

insert  into `diskusi`(`ID_CHAT`,`ID_USER`,`NAMA_USER`,`DATETIME`,`PESAN`,`KODE_KELAS`) values 
('D0001','S0001','SISWA','2020-06-05 19:54:43','TEST','K0003'),
('D0002','P0001','Pengajar1','2020-06-05 19:55:58','HI','K0001');

/*Table structure for table `kelas` */

DROP TABLE IF EXISTS `kelas`;

CREATE TABLE `kelas` (
  `KODE_KELAS` char(5) NOT NULL,
  `NAMA_KELAS` varchar(20) NOT NULL,
  `HARGA_KELAS` int(11) NOT NULL,
  `JUMLAH_SISWA` int(11) NOT NULL,
  PRIMARY KEY (`KODE_KELAS`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `kelas` */

insert  into `kelas`(`KODE_KELAS`,`NAMA_KELAS`,`HARGA_KELAS`,`JUMLAH_SISWA`) values 
('K0001','N1',1000000,0),
('K0002','N2',2000000,0),
('K0003','N3',2500000,0),
('K0004','N4',10000,0);

/*Table structure for table `latihan` */

DROP TABLE IF EXISTS `latihan`;

CREATE TABLE `latihan` (
  `KODE_LATIHAN` char(5) DEFAULT NULL,
  `KODE_KELAS` char(5) DEFAULT NULL,
  `ID_SISWA` char(5) DEFAULT NULL,
  `KODE_MATERI` char(5) DEFAULT NULL,
  `NILAI` int(11) DEFAULT NULL,
  `TGL_LATIHAN` datetime DEFAULT NULL,
  `KODE_SOAL` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `latihan` */

insert  into `latihan`(`KODE_LATIHAN`,`KODE_KELAS`,`ID_SISWA`,`KODE_MATERI`,`NILAI`,`TGL_LATIHAN`,`KODE_SOAL`) values 
('L0001','K0001','S0001','K0001',100,'2020-06-03 20:15:54','Q0001'),
('L0002','K0003','S0001','V0001',50,'2020-06-05 14:59:30','Q0001'),
('L0003','K0003','S0001','V0001',100,'2020-06-05 15:06:03','Q0001'),
('L0004','K0003','S0001','V0001',0,'2020-06-05 15:06:30','Q0001');

/*Table structure for table `materi_text` */

DROP TABLE IF EXISTS `materi_text`;

CREATE TABLE `materi_text` (
  `KODE_MATERI` char(5) DEFAULT NULL,
  `JUDUL` varchar(30) DEFAULT NULL,
  `DESKRIPSI` varchar(50) DEFAULT NULL,
  `LINK` varchar(6534) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materi_text` */

insert  into `materi_text`(`KODE_MATERI`,`JUDUL`,`DESKRIPSI`,`LINK`) values 
('T0001','N1','Bunpou JLPT N1: Bagian 1','https://mufieandherstuff.com/2017/11/19/bunpou-jlpt-n1-bagian-1/'),
('T0002','N2','Bunpou JLPT N2: Bagian 1','https://mufieandherstuff.com/2017/11/18/bunpou-jlpt-n2-bagian-1/'),
('T0003','N3','Grammar/Bunpou JLPT N3 ','http://jpn-learningjapanese.blogspot.com/2014/10/grammarbunpou-jlpt-n3.html'),
('T0004','N4','Belajar Bahasa Jepang JLPT N4 ','http://blogphatar.com/belajar-bahasa-jepang-jlpt-n4-daftar-pola-kalimat-bunkei/');

/*Table structure for table `materi_video` */

DROP TABLE IF EXISTS `materi_video`;

CREATE TABLE `materi_video` (
  `KODE_MATERI` char(5) DEFAULT NULL,
  `JUDUL` varchar(30) DEFAULT NULL,
  `DESKRIPSI` varchar(100) DEFAULT NULL,
  `LINK` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `materi_video` */

insert  into `materi_video`(`KODE_MATERI`,`JUDUL`,`DESKRIPSI`,`LINK`) values 
('V0001','N1','Japanese language lessons! JLPT N1 Grammar (1/14) ','https://www.youtube.com/watch?v=NI80gaNbysE'),
('V0002','N2','Belajar Bahasa Jepang N2 ~ni kagiru','https://www.youtube.com/watch?v=OkqzV6oeRos'),
('V0003','N3','Belajar Bahasa Jepang JLPT N3 - Tabi ni - ini japanese','https://www.youtube.com/watch?v=yiO6xs_h0TY'),
('V0004','N4','Pola kalimat Tsumori - Belajar Bahasa Jepang JLPT N4','https://www.youtube.com/watch?v=dWhwDZUbPU4');

/*Table structure for table `pengajar` */

DROP TABLE IF EXISTS `pengajar`;

CREATE TABLE `pengajar` (
  `ID_PENGAJAR` char(5) NOT NULL,
  `NAMA` varchar(30) DEFAULT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `ALMAMATER` varchar(30) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(10) DEFAULT NULL,
  `EMAIL` varchar(25) DEFAULT NULL,
  `ID_KELAS` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID_PENGAJAR`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pengajar` */

insert  into `pengajar`(`ID_PENGAJAR`,`NAMA`,`TGL_LAHIR`,`ALAMAT`,`ALMAMATER`,`NO_HP`,`JENIS_KELAMIN`,`EMAIL`,`ID_KELAS`) values 
('P0001','Pengajar1','2020-05-31','almamater11','alamamter343','erer23','Laki-laki','email@email.comDFD4','K0001');

/*Table structure for table `siswa` */

DROP TABLE IF EXISTS `siswa`;

CREATE TABLE `siswa` (
  `ID_SISWA` char(5) NOT NULL,
  `NAMA` varchar(30) DEFAULT NULL,
  `TGL_LAHIR` date DEFAULT NULL,
  `ALAMAT` varchar(50) DEFAULT NULL,
  `JENIS_KELAMIN` varchar(10) DEFAULT NULL,
  `NO_HP` varchar(15) DEFAULT NULL,
  `EMAIL` varchar(20) DEFAULT NULL,
  `ID_KELAS` char(5) DEFAULT NULL,
  PRIMARY KEY (`ID_SISWA`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `siswa` */

insert  into `siswa`(`ID_SISWA`,`NAMA`,`TGL_LAHIR`,`ALAMAT`,`JENIS_KELAMIN`,`NO_HP`,`EMAIL`,`ID_KELAS`) values 
('S0001','SISWA','2020-07-10','11341','Perempuan','083434143','sddf@gm.owrwer','K0003'),
('S0002','SISWA 2',NULL,NULL,NULL,'083434143','sddf@gm.owrwer','K0003'),
('S0003','SISWA 3',NULL,NULL,NULL,'0857308521212','sddf@gm.owrwer','K0001');

/*Table structure for table `soal` */

DROP TABLE IF EXISTS `soal`;

CREATE TABLE `soal` (
  `KODE_SOAL` char(5) DEFAULT NULL,
  `JUDUL` varchar(100) DEFAULT NULL,
  `DESKRIPSI` varchar(100) DEFAULT NULL,
  `KODE_MATERI` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `soal` */

insert  into `soal`(`KODE_SOAL`,`JUDUL`,`DESKRIPSI`,`KODE_MATERI`) values 
('Q0001','N1','Latihan soal N1','V0001'),
('Q0003','a','a','V0001');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `ID_USER` varchar(60) NOT NULL,
  `PASSWORD` varchar(60) NOT NULL,
  `USER_TYPE` int(11) NOT NULL,
  PRIMARY KEY (`ID_USER`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`ID_USER`,`PASSWORD`,`USER_TYPE`) values 
('P0001','123',2),
('S0001','admin',1),
('S0002','a',1),
('S0003','1',1);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
