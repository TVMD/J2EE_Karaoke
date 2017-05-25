
CREATE DATABASE qlkara;

use qlkara;

CREATE TABLE CT_HOADONDV(
	ID int not  null  auto_increment primary key,
	ID_HoaDonDV int NOT NULL,
	ID_Hang int NOT NULL,
	SoLuong int NOT NULL,
	DonGia int NOT NULL,
	ThanhTien int NOT NULL
 );

INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (67, 13, 4, 10000, 40000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (68, 2, 2, 12000, 24000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (68, 12, 3, 15000, 45000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (69, 10, 3, 20000, 60000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (69, 14, 2, 15000, 30000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (70, 15, 6, 15000, 90000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (71, 13, 4, 10000, 40000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (72, 13, 4, 10000, 40000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (73, 13, 4, 10000, 40000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (74, 8, 2, 10000, 20000);
INSERT CT_HOADONDV (ID_HoaDonDV, ID_Hang, SoLuong, DonGia, ThanhTien) VALUES (75, 16, 5, 15000, 75000);


CREATE TABLE CT_HDNHAP(
	IDHang int NOT NULL,
	IDHoaDon int NOT NULL,
	SoLuong int NOT NULL,
	DonGiaNhap int NOT NULL,
	ThanhTien int NOT NULL,
	CONSTRAINT PK_CTHD PRIMARY KEY (IDHang,IDHoaDon)
 ) ;

INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (1, 1, 2, 10000, 20000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (1, 2, 100, 10000, 1000000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (1, 3, 10, 10000, 100000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (1, 5, 100, 10000, 1000000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (1, 8, 50, 10000, 500000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (2, 2, 14, 5000, 70000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (2, 3, 1, 5000, 5000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (2, 5, 100, 5000, 500000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (7, 2, 4, 100000, 400000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (7, 3, 100, 10000, 1000000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (7, 5, 100, 3000, 300000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (7, 9, 14, 10000, 140000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (8, 2, 100, 2000, 200000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (8, 3, 3, 2000, 6000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (8, 5, 100, 4000, 400000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (8, 9, 13, 12000, 156000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (10, 2, 100, 10000, 1000000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (10, 3, 6, 10000, 60000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (10, 6, 50, 20000, 1000000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (11, 6, 50, 8000, 400000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (11, 13, 100, 12000, 1200000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (12, 6, 20, 15000, 300000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (12, 9, 17, 18000, 306000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (13, 11, 100, 5000, 500000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (14, 6, 50, 10000, 500000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (14, 8, 20, 15000, 300000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (15, 7, 30, 16000, 480000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (15, 9, 16, 13000, 208000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (15, 10, 14, 10000, 140000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (16, 7, 20, 12000, 240000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (16, 8, 10, 8000, 80000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (16, 12, 20, 12000, 240000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (17, 7, 20, 20000, 400000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (17, 9, 20, 18000, 360000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (18, 7, 30, 16000, 480000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (19, 8, 20, 3000, 60000);
INSERT CT_HDNHAP (IDHang, IDHoaDon, SoLuong, DonGiaNhap, ThanhTien) VALUES (19, 10, 15, 8000, 120000);
/****** Object:  Table CT_BCTONKHO    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE CT_BCTONKHO(
	ID_BCTonKho int NOT NULL,
	ID_Hang int NOT NULL,
	TonDau int NOT NULL,
	SuDung int NOT NULL,
	TonCuoi int NOT NULL,
	SoLuongNhap int NOT NULL,
 CONSTRAINT PK_CT_BCTONKHO PRIMARY KEY (ID_BCTonKho,ID_Hang)
 
) ;

/* INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 1, 0, 0, 0, 150);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 2, 0, 2, 0, 14);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 7, 0, 0, 0, 18);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 8, 0, 2, 0, 113);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 10, 0, 3, 0, 150);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 11, 0, 0, 0, 50);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 12, 0, 3, 0, 37);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 13, 0, 16, 0);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 14, 0, 2, 0, 70);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 15, 0, 6, 0, 60);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 16, 0, 5, 0, 30);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 17, 0, 0, 0, 40);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 18, 0, 0, 0, 30);
INSERT CT_BCTONKHO (ID_BCTonKho, ID_Hang, TonDau, SuDung, TonCuoi, SoLuongNhap) VALUES (5, 19, 0, 0, 0, 35); */
/****** Object:  Table BCTONKHO    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE BCTONKHO(
	ID int  NOT NULL auto_increment primary key,
	Thang datetime NOT NULL
);

/****** Object:  Table BCDOANHTHU    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE BCDOANHTHU(
	ID int NOT NULL auto_increment primary key,
	NgayLap datetime NOT NULL,
	DoanhThu int NOT NULL,
	ChiPhi int NOT NULL,
	Thang datetime NOT NULL
 );

/****** Object:  Table THAMSO    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE THAMSO(
	Name nvarchar(50) NOT NULL primary key,
	Value nvarchar(500) NULL,
	Deleted int NOT NULL default 0
 );

INSERT THAMSO (Name, Value) VALUES (N'ChuKy', N'7');
INSERT THAMSO (Name, Value) VALUES (N'GioiHanDatHang', N'3');
INSERT THAMSO (Name, Value) VALUES (N'GioNgayDem', N'18:00:00');
INSERT THAMSO (Name, Value) VALUES (N'TienPhat', N'100');
INSERT THAMSO (Name, Value) VALUES (N'WarningNum', N'3');
/****** Object:  Table PHONG    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE PHONG(
	ID int unsigned NOT NULL auto_increment primary key,
	Ten nchar(10) NULL,
	StatusID int NULL,
 	GiaNgay int NULL,
	GiaDem int NULL
    );

INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (1, N'C1        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (4, N'C2        ', 0,100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (5, N'C3        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (6, N'C4        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (7, N'C5        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (8, N'C6        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (9, N'C7        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (10, N'C8        ',0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (11, N'C9        ', 0, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (12, N'C10       ', 1, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (13, N'P1        ', 1, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (14, N'P2        ', 1, 100000, 200000);
INSERT PHONG (ID, Ten, StatusID, GiaNgay, GiaDem) VALUES (15, N'x         ', 1, 100000, 200000);

/****** Object:  Table PHIEUCHI    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE PHIEUCHI(
	ID int unsigned auto_increment primary key NOT NULL,
	NgayLap datetime NOT NULL,
	NoiDung nvarchar(500) NOT NULL,
	TongTien int NOT NULL,
	GhiChu nvarchar(500) NULL
    );


INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (1, '2017/3/3', N'Tiền điện', 300000, N'none');
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (2, '2017/3/3', N'Tiền nước ', 200000, N'none');
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (3, '2017/3/3', N'Tiền sửa mic', 20000, N'none');
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (4, '2017/3/3', N'Bể ly', 15000, N'jh');
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (5, '2017/3/3', N'Ma', 1000000000, N'none');
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (6, '2017/3/3', N'Sửa mái hiên', 100000, N'');
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (7, '2017/3/3', N'Mua cửa mới', 200000, NULL);
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (8, '2017/3/3', N'Thưởng tết', 500000000, NULL);
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (10, '2017/3/3', N'Lương nhân viên', 10000000, NULL);
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (11, '2017/3/3', N'Xây thêm phòng', 10000000, NULL);
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (12, '2017/3/3', N'Quảng cáo', 2000000, NULL);
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (13, '2017/3/3', N'Thưởng', 3000000, NULL);
INSERT PHIEUCHI (ID, NgayLap, NoiDung, TongTien, GhiChu) VALUES (14, '2017/3/3', N'sdf', 100000, N'0');

/****** Object:  Table NHOMQUYEN    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE NHOMQUYEN(
	MaNhomQuyen int unsigned auto_increment primary key NOT NULL,
	TenNhomQuyen nvarchar(50) NULL
    );

INSERT NHOMQUYEN (MaNhomQuyen, TenNhomQuyen) VALUES (1, N'admin');
INSERT NHOMQUYEN (MaNhomQuyen, TenNhomQuyen) VALUES (2, N'user');

/****** Object:  Table NGUOIDUNG    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE NGUOIDUNG(
	ID int unsigned auto_increment primary key NOT NULL,
	MaDangNhap nvarchar(50) NOT NULL,
	MatKhau nvarchar(50) NOT NULL,
	HoTen nvarchar(50) NULL,
	Email nvarchar(50) NULL,
	SoDT nvarchar(50) NULL,
	MaNhomQuyen int NOT NULL
    );


INSERT NGUOIDUNG (ID, MaDangNhap, MatKhau, HoTen, Email, SoDT, MaNhomQuyen) VALUES (1, N'3tm', N'3tm', NULL, NULL, NULL, 1);
INSERT NGUOIDUNG (ID, MaDangNhap, MatKhau, HoTen, Email, SoDT, MaNhomQuyen) VALUES (2, N'toan', N'3tm', N'', N'', N'', 2);
INSERT NGUOIDUNG (ID, MaDangNhap, MatKhau, HoTen, Email, SoDT, MaNhomQuyen) VALUES (3, N'minh', N'3tm', N'minh', NULL, NULL, 2);
INSERT NGUOIDUNG (ID, MaDangNhap, MatKhau, HoTen, Email, SoDT, MaNhomQuyen) VALUES (4, N'tien', N'3tm', NULL, NULL, NULL, 2);
INSERT NGUOIDUNG (ID, MaDangNhap, MatKhau, HoTen, Email, SoDT, MaNhomQuyen) VALUES (5, N'thao', N'3tm', NULL, NULL, NULL, 2);


CREATE TABLE HOADONNHAP(
	ID int unsigned auto_increment primary key NOT NULL,
	NgayNhap datetime NOT NULL,
	TongTien int NOT NULL
    );

INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (1, CAST('2017/3/4' AS DateTime), 20000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (2, CAST('2017/3/3' AS DateTime), 0000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (3, CAST('2017/3/3' AS DateTime), 1171000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (4, CAST('2017/3/3' AS DateTime), 0000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (5, CAST('2017/3/3' AS DateTime), 2380000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (6, CAST('2017/3/3' AS DateTime), 2200000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (7, CAST('2017/3/3' AS DateTime), 1600000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (8, CAST('2017/3/3' AS DateTime), 940000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (9, CAST('2017/3/3' AS DateTime), 1170000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (10, CAST('2017/3/3' AS DateTime), 260000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (11, CAST('2017/3/3' AS DateTime), 500000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (12, CAST('2017/3/3' AS DateTime), 240000);
INSERT HOADONNHAP (ID, NgayNhap, TongTien) VALUES (13, CAST('2017/3/3' AS DateTime), 1200000);

/****** Object:  Table HOADONDV    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE HOADONDV(
	ID int unsigned auto_increment primary key NOT NULL,
	ID_ThuePhong int NOT NULL,
	NgayGioLap datetime NOT NULL,
	SoGio float NULL,
	TenKH nchar(50) NULL,
	TongTien int NOT NULL,
	TienPhong int NULL
    );


INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (67, 1, CAST('2017/3/3' AS DateTime), 1486531835555555, N'                                                  ', 250000, 210000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (68, 2, CAST('2017/3/3' AS DateTime), 2413569224444443, N'                                                  ', 477000, 408000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (69, 4, CAST('2017/3/3' AS DateTime), 3372397640833331, N'                                                  ', 1001000, 911000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (70, 5, CAST('2017/3/3' AS DateTime), 2222209572222223, N'                                                  ', 697000, 607000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (71, 6, CAST('2017/3/3' AS DateTime), 1486531835555555, N'                                                  ', 250000, 210000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (72, 7, CAST('2017/3/3' AS DateTime), 1486531835555555, N'                                                  ', 250000, 210000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (73, 8, CAST('2017/3/3' AS DateTime), 1486531835555555, N'                                                  ', 250000, 210000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (74, 9, CAST('2017/3/3' AS DateTime), 0027887588055555555, N'                                                  ', 21000, 1000);
INSERT HOADONDV (ID, ID_ThuePhong, NgayGioLap, SoGio, TenKH, TongTien, TienPhong) VALUES (75, 10, CAST('2017/3/3' AS DateTime), 013773580444444444, N'                                                  ', 78000, 3000);

/****** Object:  Table HANG    Script Date: 01/06/2017 00:10:33 ******/


CREATE TABLE HANG(
	ID int unsigned auto_increment primary key NOT NULL,
	Ten nvarchar(200) NOT NULL,
	DonGiaNhap int NOT NULL,
	DonGiaBan int NOT NULL,
	SLTon int NOT NULL,
	DonVi nvarchar(50) NULL,
	Requested int NOT NULL
    );
    
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (1, N'Bia', 10000, 12000, 100, N'lonf', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (2, N'Tra Dao', 9000, 12000, 0, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (7, N'Nước suối', 4000, 10000, 100, N'chai', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (8, N'Bánh Snack', 5000, 10000, 98, N'bịch', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (10, N'Trái cây', 10000, 20000, 97, N'đĩa', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (11, N'Pepsi', 5000, 13000, 100, N'chai', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (12, N'Nước cam', 8000, 15000, 97, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (13, N'Trà đá', 3000, 10000, 96, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (14, N'Sữa', 5000, 15000, 98, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (15, N'Sinh tố', 5000, 15000, 94, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (16, N'Bánh bông lan', 5000, 15000, 95, N'cái', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (17, N'Nước ép nho', 10000, 20000, 100, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (18, N'Nước ép cam', 10000, 20000, 100, N'ly', 0);
INSERT HANG (ID, Ten, DonGiaNhap, DonGiaBan, SLTon, DonVi, Requested) VALUES (19, N'Mì gói', 5000, 15000, 1, N'tô', 0);


/** bang thue phong **/

create TABLE THUEPHONG(
	ID int unsigned auto_increment primary key NOT NULL,
	ID_Phong nvarchar(200) NOT NULL,
	TGStart datetime NULL,
	TGEnd datetime NULL
    );

#minh's procedure
delimiter $$
create procedure getHoaDonDV(in idphong int)
begin
	select a.ID,a.ID_ThuePhong,a.NgayGioLap,a.SoGio,a.TenKH from
    hoadondv a join thuephong b on a.ID_ThuePhong =b.ID
    join phong c on b.ID_Phong = c.ID
    where c.StatusID=1 and c.ID=idphong;
end;
#####3
delimiter $$
create procedure getListCT_HoaDonDV(in idhoadondv int)
begin
	select a.ID,a.ID_HoaDonDV,a.ID_Hang,a.SoLuong,a.DonGia,a.ThanhTien,b.Ten from
    ct_hoadondv a join hang b on a.ID_Hang =b.ID
    where a.ID_HoaDonDV=idhoadondv
	 and 1=(select StatusID from Phong where ID=(select ID_Phong from thuephong where ID= (select ID_ThuePhong from hoadondv where idhoadondv=ID)));
end;

######
USE `qlkara`;
DROP procedure IF EXISTS `createHoaDonDV`;
DELIMITER $$
USE `qlkara`$$
CREATE PROCEDURE createHoaDonDV (in idphong int, in startdate datetime)
BEGIN
	insert into thuephong(ID_Phong,TGStart,TGEnd) values (idphong,startdate,null);
    
    insert into hoadondv(ID_ThuePhong,NgayGioLap,SoGio,TenKH,TongTien,TienPhong) 
		values ((select ID from thuephong where ID_Phong=idphong and TGStart=startdate)
				,startdate,0,"",0,0);
	
    update phong 
    set StatusID = 1
    where idphong = ID;
    
    select * from hoadondv group by ID desc limit 1 offset 0; 
END$$

#############
USE `qlkara`;
DROP procedure IF EXISTS `addct_hoadondv`;
DELIMITER $$
USE `qlkara`$$
CREATE PROCEDURE addct_hoadondv(in idhoadon int,in idhang int,in sl int)
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
END$$

###########
USE `qlkara`;
DROP procedure IF EXISTS `deletect_hoadondv`;
DELIMITER $$
USE `qlkara`$$
CREATE PROCEDURE deletect_hoadondv(in idhoadon int,in idhang int)
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
END$$

##########################
USE `qlkara`;
DROP procedure IF EXISTS `updatect_hoadondv`;
DELIMITER $$
USE `qlkara`$$
CREATE PROCEDURE updatect_hoadondv(in idhoadon int,in idhang int,in slmoi int)
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
END$$
###########################