CREATE DATABASE  IF NOT EXISTS `qlkara` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `qlkara`;
-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: localhost    Database: qlkara
-- ------------------------------------------------------
-- Server version	5.7.18-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `bcdoanhthu`
--

DROP TABLE IF EXISTS `bcdoanhthu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bcdoanhthu` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `NgayLap` datetime NOT NULL,
  `DoanhThu` int(11) NOT NULL,
  `ChiPhi` int(11) NOT NULL,
  `Thang` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bcdoanhthu`
--

LOCK TABLES `bcdoanhthu` WRITE;
/*!40000 ALTER TABLE `bcdoanhthu` DISABLE KEYS */;
/*!40000 ALTER TABLE `bcdoanhthu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bctonkho`
--

DROP TABLE IF EXISTS `bctonkho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bctonkho` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Thang` datetime NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bctonkho`
--

LOCK TABLES `bctonkho` WRITE;
/*!40000 ALTER TABLE `bctonkho` DISABLE KEYS */;
/*!40000 ALTER TABLE `bctonkho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_bctonkho`
--

DROP TABLE IF EXISTS `ct_bctonkho`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ct_bctonkho` (
  `ID_BCTonKho` int(11) NOT NULL,
  `ID_Hang` int(11) NOT NULL,
  `TonDau` int(11) NOT NULL,
  `SuDung` int(11) NOT NULL,
  `TonCuoi` int(11) NOT NULL,
  `SoLuongNhap` int(11) NOT NULL,
  PRIMARY KEY (`ID_BCTonKho`,`ID_Hang`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_bctonkho`
--

LOCK TABLES `ct_bctonkho` WRITE;
/*!40000 ALTER TABLE `ct_bctonkho` DISABLE KEYS */;
/*!40000 ALTER TABLE `ct_bctonkho` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_hdnhap`
--

DROP TABLE IF EXISTS `ct_hdnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ct_hdnhap` (
  `ID` int(11) not null PRIMARY key AUTO_INCREMENT ,
  `IDHang` int(11) NOT NULL,
  `IDHoaDon` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGiaNhap` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_hdnhap`
--

LOCK TABLES `ct_hdnhap` WRITE;
/*!40000 ALTER TABLE `ct_hdnhap` DISABLE KEYS */;
INSERT INTO `ct_hdnhap`(IDHang,IDHoaDon,SoLuong,DonGiaNhap,ThanhTien) VALUES (1,1,2,10000,20000),(1,2,100,10000,1000000),(1,3,10,10000,100000),(1,5,100,10000,1000000),(1,8,50,10000,500000),(2,2,14,5000,70000),(2,3,1,5000,5000),(2,5,100,5000,500000),(7,2,4,100000,400000),(7,3,100,10000,1000000),(7,5,100,3000,300000),(7,9,14,10000,140000),(8,2,100,2000,200000),(8,3,3,2000,6000),(8,5,100,4000,400000),(8,9,13,12000,156000),(10,2,100,10000,1000000),(10,3,6,10000,60000),(10,6,50,20000,1000000),(11,6,50,8000,400000),(11,13,100,12000,1200000),(12,6,20,15000,300000),(12,9,17,18000,306000),(13,11,100,5000,500000),(14,6,50,10000,500000),(14,8,20,15000,300000),(15,7,30,16000,480000),(15,9,16,13000,208000),(15,10,14,10000,140000),(16,7,20,12000,240000),(16,8,10,8000,80000),(16,12,20,12000,240000),(17,7,20,20000,400000),(17,9,20,18000,360000),(18,7,30,16000,480000),(19,8,20,3000,60000),(19,10,15,8000,120000);
/*!40000 ALTER TABLE `ct_hdnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ct_hoadondv`
--

DROP TABLE IF EXISTS `ct_hoadondv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ct_hoadondv` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_HoaDonDV` int(11) NOT NULL,
  `ID_Hang` int(11) NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` int(11) NOT NULL,
  `ThanhTien` int(11) NOT NULL,
  `TenHang` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ct_hoadondv`
--

LOCK TABLES `ct_hoadondv` WRITE;
/*!40000 ALTER TABLE `ct_hoadondv` DISABLE KEYS */;
INSERT INTO `ct_hoadondv` VALUES (2,68,2,2,12000,24000,NULL),(3,68,12,3,15000,45000,NULL),(4,69,10,3,20000,60000,NULL),(5,69,14,2,15000,30000,NULL),(6,70,15,6,15000,90000,NULL),(7,71,13,4,10000,40000,NULL),(8,72,13,4,10000,40000,NULL),(9,73,13,4,10000,40000,NULL),(10,74,8,2,10000,20000,NULL),(11,75,16,5,15000,75000,NULL),(12,85,1,1,12000,12000,NULL),(19,67,10,13,20000,260000,NULL),(21,86,16,1,15000,15000,NULL);
/*!40000 ALTER TABLE `ct_hoadondv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hang`
--

DROP TABLE IF EXISTS `hang`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hang` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ten` varchar(200) NOT NULL,
  `DonGiaNhap` int(11) NOT NULL,
  `DonGiaBan` int(11) NOT NULL,
  `SLTon` int(11) NOT NULL,
  `DonVi` varchar(50) DEFAULT NULL,
  `Requested` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hang`
--

LOCK TABLES `hang` WRITE;
/*!40000 ALTER TABLE `hang` DISABLE KEYS */;
INSERT INTO `hang` VALUES (1,'Bia',10000,12000,111,'lonf',0),(2,'Tra Dao',9000,12000,23,'ly',0),(7,'Nước suối',4000,10000,123,'chai',0),(8,'Bánh Snack',5000,10000,120,'bịch',0),(10,'Trái cây',10000,20000,105,'đĩa',0),(11,'Pepsi',5000,13000,123,'chai',0),(12,'Nước cam',8000,15000,120,'ly',0),(13,'Trà đá',3000,10000,117,'ly',0),(14,'Sữa',5000,15000,118,'ly',0),(15,'Sinh tố',5000,15000,117,'ly',0),(16,'Bánh bông lan',5000,15000,117,'cái',0),(17,'Nước ép nho',10000,20000,123,'ly',0),(18,'Nước ép cam',10000,20000,123,'ly',0),(19,'Mì gói',5000,15000,24,'tô',0);
/*!40000 ALTER TABLE `hang` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadondv`
--

DROP TABLE IF EXISTS `hoadondv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadondv` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_ThuePhong` int(11) NOT NULL,
  `NgayGioLap` datetime NOT NULL,
  `SoGio` float DEFAULT NULL,
  `TenKH` char(50) DEFAULT NULL,
  `TongTien` int(11) NOT NULL,
  `TienPhong` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadondv`
--

LOCK TABLES `hoadondv` WRITE;
/*!40000 ALTER TABLE `hoadondv` DISABLE KEYS */;
INSERT INTO `hoadondv` VALUES (67,1,'2017-03-03 00:00:00',1.48653e15,'',250000,210000),(68,2,'2017-03-03 00:00:00',2.41357e15,'',477000,408000),(69,3,'2017-03-03 00:00:00',3.3724e15,'',1001000,911000),(70,4,'2017-03-03 00:00:00',2.22221e15,'',697000,607000),(71,5,'2017-03-03 00:00:00',1.48653e15,'',250000,210000),(72,6,'2017-03-03 00:00:00',1.48653e15,'',250000,210000),(73,7,'2017-03-03 00:00:00',1.48653e15,'',250000,210000),(74,8,'2017-03-03 00:00:00',2.78876e16,'',21000,1000),(75,9,'2017-03-03 00:00:00',1.37736e16,'',78000,3000),(77,16,'2018-01-01 10:00:00',0,NULL,0,0),(85,24,'2017-05-24 20:27:03',0,'',0,0),(86,25,'2017-05-25 14:23:32',0,'',0,0);
/*!40000 ALTER TABLE `hoadondv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hoadonnhap`
--

DROP TABLE IF EXISTS `hoadonnhap`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hoadonnhap` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NgayNhap` datetime NOT NULL,
  `TongTien` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hoadonnhap`
--

LOCK TABLES `hoadonnhap` WRITE;
/*!40000 ALTER TABLE `hoadonnhap` DISABLE KEYS */;
INSERT INTO `hoadonnhap` VALUES (1,'2017-03-04 00:00:00',20000),(2,'2017-03-03 00:00:00',0),(3,'2017-03-03 00:00:00',1171000),(4,'2017-03-03 00:00:00',0),(5,'2017-03-03 00:00:00',2380000),(6,'2017-03-03 00:00:00',2200000),(7,'2017-03-03 00:00:00',1600000),(8,'2017-03-03 00:00:00',940000),(9,'2017-03-03 00:00:00',1170000),(10,'2017-03-03 00:00:00',260000),(11,'2017-03-03 00:00:00',500000),(12,'2017-03-03 00:00:00',240000),(13,'2017-03-03 00:00:00',1200000);
/*!40000 ALTER TABLE `hoadonnhap` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nguoidung`
--

DROP TABLE IF EXISTS `nguoidung`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nguoidung` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `MaDangNhap` varchar(50) NOT NULL,
  `MatKhau` varchar(50) NOT NULL,
  `HoTen` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `SoDT` varchar(50) DEFAULT NULL,
  `MaNhomQuyen` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nguoidung`
--

LOCK TABLES `nguoidung` WRITE;
/*!40000 ALTER TABLE `nguoidung` DISABLE KEYS */;
INSERT INTO `nguoidung` VALUES (1,'3tm','3tm',NULL,NULL,NULL,1),(2,'toan','3tm','','','',2),(3,'minh','3tm','minh',NULL,NULL,2),(4,'tien','3tm',NULL,NULL,NULL,2),(5,'thao','3tm',NULL,NULL,NULL,2);
/*!40000 ALTER TABLE `nguoidung` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nhomquyen`
--

DROP TABLE IF EXISTS `nhomquyen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nhomquyen` (
  `MaNhomQuyen` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `TenNhomQuyen` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`MaNhomQuyen`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nhomquyen`
--

LOCK TABLES `nhomquyen` WRITE;
/*!40000 ALTER TABLE `nhomquyen` DISABLE KEYS */;
INSERT INTO `nhomquyen` VALUES (1,'admin'),(2,'user');
/*!40000 ALTER TABLE `nhomquyen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phieuchi`
--

DROP TABLE IF EXISTS `phieuchi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phieuchi` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `NgayLap` datetime NOT NULL,
  `NoiDung` varchar(500) NOT NULL,
  `TongTien` int(11) NOT NULL,
  `GhiChu` varchar(500) DEFAULT NULL,
  `Deleted` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phieuchi`
--

LOCK TABLES `phieuchi` WRITE;
/*!40000 ALTER TABLE `phieuchi` DISABLE KEYS */;
INSERT INTO `phieuchi` VALUES (1,'2017-03-03 00:00:00','Tiền điện',300000,'none',NULL),(2,'2017-03-03 00:00:00','Tiền nước ',200000,'none',NULL),(3,'2017-03-03 00:00:00','Tiền sửa mic',20000,'none',NULL),(4,'2017-03-03 00:00:00','Bể ly',15000,'jh',NULL),(5,'2017-03-03 00:00:00','Ma',1000000000,'none',NULL),(6,'2017-03-03 00:00:00','Sửa mái hiên',100000,'',NULL),(7,'2017-03-03 00:00:00','Mua cửa mới',200000,NULL,NULL),(8,'2017-03-03 00:00:00','Thưởng tết',500000000,NULL,NULL),(10,'2017-03-03 00:00:00','Lương nhân viên',10000000,NULL,NULL),(11,'2017-03-03 00:00:00','Xây thêm phòng',10000000,NULL,NULL),(12,'2017-03-03 00:00:00','Quảng cáo',2000000,NULL,NULL),(13,'2017-03-03 00:00:00','Thưởng',3000000,NULL,NULL),(14,'2017-03-03 00:00:00','sdf',100000,'0',NULL);
/*!40000 ALTER TABLE `phieuchi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `phong`
--

DROP TABLE IF EXISTS `phong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `phong` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `Ten` char(10) DEFAULT NULL,
  `StatusID` int(11) DEFAULT NULL,
  `GiaNgay` int(11) DEFAULT NULL,
  `GiaDem` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `phong`
--

LOCK TABLES `phong` WRITE;
/*!40000 ALTER TABLE `phong` DISABLE KEYS */;
INSERT INTO `phong` VALUES (1,'C1',1,100000,200000),(4,'C2',1,100000,200000),(5,'C3',0,100000,200000),(6,'C4',0,100000,200000),(7,'C5',0,100000,200000),(8,'C6',0,100000,200000),(9,'C7',0,100000,200000),(10,'C8',0,100000,200000),(11,'C9',0,100000,200000),(12,'C10',0,100000,200000),(13,'P1',1,100000,200000),(14,'P2',0,100000,200000),(15,'x',1,100000,200000);
/*!40000 ALTER TABLE `phong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thamso`
--

DROP TABLE IF EXISTS `thamso`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thamso` (
  `Name` varchar(50) NOT NULL,
  `Value` varchar(500) DEFAULT NULL,
  `Deleted` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thamso`
--

LOCK TABLES `thamso` WRITE;
/*!40000 ALTER TABLE `thamso` DISABLE KEYS */;
INSERT INTO `thamso` VALUES ('ChuKy','7',0),('GioiHanDatHang','3',0),('GioNgayDem','18:00:00',0),('TienPhat','100',0),('WarningNum','3',0);
/*!40000 ALTER TABLE `thamso` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `thuephong`
--

DROP TABLE IF EXISTS `thuephong`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `thuephong` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `ID_Phong` varchar(200) NOT NULL,
  `TGStart` datetime DEFAULT NULL,
  `TGEnd` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `thuephong`
--

LOCK TABLES `thuephong` WRITE;
/*!40000 ALTER TABLE `thuephong` DISABLE KEYS */;
INSERT INTO `thuephong` VALUES (1,'15','2016-01-01 10:00:00',NULL),(2,'13','2016-01-01 10:00:00',NULL),(24,'4','2017-05-24 20:27:03',NULL),(25,'1','2017-05-25 14:23:32',NULL);
/*!40000 ALTER TABLE `thuephong` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'qlkara'
--
/*!50003 DROP PROCEDURE IF EXISTS `addct_hoadondv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `addct_hoadondv`(in idhoadon int,in idhang int,in sl int)
BEGIN
	if((select SLTon from hang where idhang=ID)>sl) then
		if((select count(ID) from ct_hoadondv where ID_Hang=idhang and idhoadon=ID_HoaDonDV)=1)
        then 
			update ct_hoadondv set SoLuong = SoLuong + sl
            where  ID_Hang=idhang and idhoadon=ID_HoaDonDV;
		else
			insert into ct_hoadondv(ID_HoaDonDV,ID_Hang,SoLuong,DonGia,ThanhTien) 
			values (idhoadon,idhang,sl,(select DonGiaBan from hang where ID=idhang),0);
		end if;
		
		update ct_hoadondv a
		set ThanhTien = SoLuong * DonGia
		where a.ID_HoaDonDV = idhoadon and a.ID_Hang=idhang;
		
		update hang 
		set SLTon = SLTon - sl
		where idhang=ID;
		
		select * from ct_hoadondv group by ID desc limit 1 offset 0; 
    else select 0;
    end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `createHoaDonDV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `createHoaDonDV`(in idphong int, in startdate datetime)
BEGIN
	insert into thuephong(ID_Phong,TGStart,TGEnd) values (idphong,startdate,null);
    
    insert into hoadondv(ID_ThuePhong,NgayGioLap,SoGio,TenKH,TongTien,TienPhong) 
		values ((select ID from thuephong where ID_Phong=idphong and TGStart=startdate)
				,startdate,0,"",0,0);
	
    update phong 
    set StatusID = 1
    where idphong = ID;
    
    select * from hoadondv group by ID desc limit 1 offset 0; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `deletect_hoadondv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `deletect_hoadondv`(in idhoadon int,in idhang int)
BEGIN
	set @sl = (select SoLuong from ct_hoadondv where idhoadon=ID_HoaDonDV and idhang=ID_Hang);
	if(@sl is not null) then
    delete from ct_hoadondv
    where idhoadon=ID_HoaDonDV and idhang=ID_Hang;
    
    update hang 
    set SLTon = SLTon + @sl;
	
    select 0;
	else select 1;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getHoaDonDV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
USE `qlkara`;
DROP procedure IF EXISTS `getHoaDonDV`;
DELIMITER $$
USE `qlkara`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getHoaDonDV`(in idphong int)
begin
	select a.ID,a.ID_ThuePhong,a.NgayGioLap,a.SoGio,a.TenKH from
    hoadondv a join thuephong b on a.ID_ThuePhong =b.ID
    join phong c on b.ID_Phong = c.ID
    where c.StatusID=1 and c.ID=idphong
    order by a.ID DESC;
end$$
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getListCT_HoaDonDV` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getListCT_HoaDonDV`(in idhoadondv int)
begin
	select a.ID,a.ID_HoaDonDV,a.ID_Hang,a.SoLuong,a.DonGia,a.ThanhTien,b.Ten from
    ct_hoadondv a join hang b on a.ID_Hang =b.ID
    where a.ID_HoaDonDV=idhoadondv
	 and 1=(select StatusID from Phong where ID=(select ID_Phong from thuephong where ID= (select ID_ThuePhong from hoadondv where idhoadondv=ID)));
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `updatect_hoadondv` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `updatect_hoadondv`(in idhoadon int,in idhang int,in slmoi int)
BEGIN
	set @slcu = (select SoLuong from ct_hoadondv where idhoadon=ID_HoaDonDV and idhang=ID_Hang);
	set @sltonmoi = (select SLTon from hang where ID=idhang) - slmoi + @slcu;
    if(@slcu is not null and @sltonmoi >=0) then
    
		update ct_hoadondv
        set SoLuong = slmoi,
			ThanhTien = slmoi * DonGia
        where ID_Hang=idhang and ID_HoaDonDV = idhoadon;
        
        update hang
        set SLTon = @sltonmoi
        where ID = idhang;
        
    select 1;
	else select 0;
	end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-05-26  9:32:27

DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `baocaodoanhso`(in thang  int,in nam int)
BEGIN
	set @doanhthu = (select Sum(TongTien) from hoadondv where month(NgayGioLap) = thang and year(NgayGioLap)=nam);
    set @chiphi = (select sum(TongTien) from hoadonnhap where month(NgayNhap) = thang and year(NgayNhap)=nam);
    set @chiphi = @chiphi + (select sum(TongTien) from phieuchi where month(NgayLap) = thang and year(NgayLap)=nam);
    
    select thang as thang 
		,nam as Nam
        ,@doanhthu as DoanhThu
        ,@chiphi as ChiPhi;

END ;;
DELIMITER ;

/*///////////////////////////////////////////////*/
USE `qlkara`;
DROP procedure IF EXISTS `getTienPhong`;
DELIMITER $$
USE `qlkara`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getTienPhong`(in idhoadondv int)
begin	
	set @id_thuephong = (select ID_ThuePhong from hoadondv where ID = idhoadondv);
    
    set @statusid = (select StatusID from phong p join thuephong t on p.ID=t.ID_Phong where t.ID = @id_thuephong);
    if(@statusid = 1) then
    
	update thuephong
    set TGEnd = now()
    where ID = @id_thuephong;

    set @bd= (select TGStart
    from thuephong
    where ID=@id_thuephong);
    
    set @kt= (select TGEnd 
    from thuephong
    where ID=@id_thuephong);
	
    set @sogio = (timestampdiff(second, @bd, @kt)/3600);
    
    set @gia = (select p.GiaNgay from phong p join thuephong t on p.ID=t.ID_Phong where t.ID = @id_thuephong);
    
    set @tiendo= (select sum(ThanhTien) 
    from ct_hoadondv ct join hoadondv h on ct.ID_HoaDonDV=h.ID 
    where h.ID = idhoadondv
    group by ID_HoaDonDV);
    
    update hoadondv 
    set SoGio = @sogio, TienPhong = @sogio*@gia, TongTien = @tiendo + TienPhong
    where ID = idhoadondv;
    
    update phong
    set StatusID = 0
    where ID = (select ID_Phong from thuephong where ID = @id_thuephong);
    
    end if;
    
    select * from hoadondv where ID=idhoadondv;
    
end$$

/*//////////////////////////////////////////////////////////////////*/
USE `qlkara`;
DROP procedure IF EXISTS `getListCT_HoaDonDV_Toan`;
DELIMITER $$
USE `qlkara`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `getListCT_HoaDonDV_Toan`(in idhoadondv int)
begin
 select a.ID,a.ID_HoaDonDV,a.ID_Hang,a.SoLuong,a.DonGia,a.ThanhTien,b.Ten from
    ct_hoadondv a join hang b on a.ID_Hang =b.ID
    where a.ID_HoaDonDV=idhoadondv;

end$$

--------------------------------------------------------- hoadonnhap---------------------------------
USE `qlkara`;
DROP procedure IF EXISTS `createHoaDonNhap`;
DELIMITER $$
USE `qlkara`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `createHoaDonNhap`()
begin

	insert into hoadonnhap(NgayNhap,TongTien) values(now(),0);
	
    select max(ID) from hoadonnhap;
end$$
--------------
USE `qlkara`;
DROP procedure IF EXISTS `tinhtienhdnhap`;
DELIMITER $$
USE `qlkara`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `tinhtienhdnhap`(in idhoadonxx int)
begin

	delete from xxx;
	update ct_hdnhap set DonGiaNhap = (select DonGiaNhap from hang where ID=IDHang) where DonGiaNhap=0;
	update ct_hdnhap set ThanhTien = SoLuong*DonGiaNhap;
    
    insert into xxx (ID,IDHoaDon,IDHang,SoLuong,DonGiaNhap,ThanhTien)
   select ID,IDHoaDon,IDHang,SoLuong,DonGiaNhap,ThanhTien from ct_hdnhap where IDHoaDon=idhoadonxx;
   
   set @m = 0;
  
  oop: while (1=1) do
    set @m = ifnull((select min(IDHang) from xxx where IDHang > @m),0);
    if @m= 0 then
      LEAVE oop;
	end if;
    
    
    update hang set SLTon = SLTon + (select SoLuong from xxx where IDHang=@m and IDHoaDon=idhoadon);
    update hoadonnhap set TongTien = TongTien + (select ThanhTien from xxx where IDHang=@m and IDHoaDon=idhoadon);
   end while; 
  

	select TongTien from hoadonnhap where ID = idhoadonxx;
end$$
----------------------------sang--------------
CREATE TABLE `session` (
  `sessionkey` varchar(50) NOT NULL,
  `madangnhap` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`sessionkey`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;