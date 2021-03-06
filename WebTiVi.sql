USE [master]
GO
/****** Object:  Database [WebTiVi]    Script Date: 12/10/2021 9:20:21 AM ******/
CREATE DATABASE [WebTiVi]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'WebDoDienTu', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebDoDienTu.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'WebDoDienTu_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\WebDoDienTu_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [WebTiVi] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WebTiVi].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WebTiVi] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [WebTiVi] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [WebTiVi] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [WebTiVi] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [WebTiVi] SET ARITHABORT OFF 
GO
ALTER DATABASE [WebTiVi] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [WebTiVi] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [WebTiVi] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [WebTiVi] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [WebTiVi] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [WebTiVi] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [WebTiVi] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [WebTiVi] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [WebTiVi] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [WebTiVi] SET  DISABLE_BROKER 
GO
ALTER DATABASE [WebTiVi] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [WebTiVi] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [WebTiVi] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [WebTiVi] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [WebTiVi] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [WebTiVi] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [WebTiVi] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [WebTiVi] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [WebTiVi] SET  MULTI_USER 
GO
ALTER DATABASE [WebTiVi] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [WebTiVi] SET DB_CHAINING OFF 
GO
ALTER DATABASE [WebTiVi] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [WebTiVi] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [WebTiVi] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [WebTiVi] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [WebTiVi] SET QUERY_STORE = OFF
GO
USE [WebTiVi]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[MaSP] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Gia] [float] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang_1] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMucSanPham]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMucSanPham](
	[MaLoaiSP] [nvarchar](10) NOT NULL,
	[TenLoaiSp] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DanhMucSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDonHang] [int] IDENTITY(1,1) NOT NULL,
	[MaTK] [int] NOT NULL,
	[NgayDatDon] [date] NOT NULL,
	[TrangThai] [int] NOT NULL,
	[DiaChiGiao] [nvarchar](100) NOT NULL,
	[SDTGiao] [nvarchar](15) NOT NULL,
	[EmailGiao] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhanQuyen]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhanQuyen](
	[MaQuyen] [nvarchar](10) NOT NULL,
	[MoTaQuyen] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_PhanQuyen] PRIMARY KEY CLUSTERED 
(
	[MaQuyen] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [int] IDENTITY(1,1) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[Gia] [int] NOT NULL,
	[Anh] [nvarchar](100) NULL,
	[MoTa] [nvarchar](500) NULL,
	[GiamGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[NgayTao] [date] NOT NULL,
	[LoaiSP] [nvarchar](10) NOT NULL,
	[ThuongHieu] [nvarchar](10) NOT NULL,
	[GiamGia2] [int] NOT NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[IDTaiKhoan] [int] IDENTITY(1,1) NOT NULL,
	[TenTK] [nvarchar](50) NOT NULL,
	[GioiTinh] [bit] NOT NULL,
	[MatKhau] [nvarchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[SDT] [nvarchar](15) NOT NULL,
	[DiaChiMacDinh] [nvarchar](100) NOT NULL,
	[NgayTaoTK] [date] NOT NULL,
	[QuyenTK] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[IDTaiKhoan] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThuongHieu]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThuongHieu](
	[MaTH] [nvarchar](10) NOT NULL,
	[TenTH] [nvarchar](50) NULL,
 CONSTRAINT [PK_ThuongHieu] PRIMARY KEY CLUSTERED 
(
	[MaTH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TrangThaiDonHang]    Script Date: 12/10/2021 9:20:21 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TrangThaiDonHang](
	[MaTT] [int] NOT NULL,
	[MoTaTrangThai] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_TrangThaiDonHang] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] ON 

INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (23, 23, 55, 1, 13990000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (24, 24, 53, 1, 20041500)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (25, 24, 58, 1, 15900000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (27, 27, 58, 1, 15900000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (31, 31, 53, 1, 20041500)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (34, 34, 56, 1, 18481400)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (37, 37, 51, 1, 32328000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (38, 38, 51, 1, 32328000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (39, 38, 58, 1, 15900000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (40, 39, 47, 1, 42600000)
INSERT [dbo].[ChiTietDonHang] ([Id], [MaDH], [MaSP], [SoLuong], [Gia]) VALUES (41, 40, 58, 1, 15900000)
SET IDENTITY_INSERT [dbo].[ChiTietDonHang] OFF
GO
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'atv', N'Androi TiVi')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'itv', N'Internet TiVi')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'led', N'TiVi LED')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'stv', N'Smart TiVi')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'tnc', N'Tivi NanoCell')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'tol', N'Tivi OLED')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'tql', N'Tivi QLED')
INSERT [dbo].[DanhMucSanPham] ([MaLoaiSP], [TenLoaiSp]) VALUES (N'tvf', N'Tivi Frame')
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (6, 8, CAST(N'2021-09-01' AS Date), 1, N'74/4', N'0943906331', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (7, 8, CAST(N'2021-09-01' AS Date), 1, N'74/4', N'0943906331', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (8, 8, CAST(N'2021-09-01' AS Date), 1, N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', N'0943906331', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (23, 19, CAST(N'2021-12-09' AS Date), 1, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (24, 19, CAST(N'2021-12-09' AS Date), 3, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (26, 19, CAST(N'2021-12-09' AS Date), 1, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (27, 19, CAST(N'2021-12-09' AS Date), 2, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (31, 3, CAST(N'2021-12-09' AS Date), 1, N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', N'0943906331', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (32, 3, CAST(N'2021-12-09' AS Date), 0, N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', N'0943906331', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (34, 19, CAST(N'2021-12-09' AS Date), 1, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (37, 19, CAST(N'2021-12-09' AS Date), 1, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (38, 3, CAST(N'2021-12-09' AS Date), 1, N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', N'0943906331', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (39, 19, CAST(N'2021-12-10' AS Date), 1, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
INSERT [dbo].[DonHang] ([MaDonHang], [MaTK], [NgayDatDon], [TrangThai], [DiaChiGiao], [SDTGiao], [EmailGiao]) VALUES (40, 19, CAST(N'2021-12-10' AS Date), 1, N'HCM', N'0987654321', N'thanhryu207@gmail.com')
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
INSERT [dbo].[PhanQuyen] ([MaQuyen], [MoTaQuyen]) VALUES (N'ad', N'admin')
INSERT [dbo].[PhanQuyen] ([MaQuyen], [MoTaQuyen]) VALUES (N'eu', N'end user')
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (47, N'Smart Tivi OLED LG 4K 55 inch 55A1PTA', 42900000, N'85654509029300.jpg', N'Smart Tivi OLED LG 4K 55 inch 55A1PTB  có kiểu dáng sang trọng, hình ảnh chân thực, âm thanh sống động, tính năng đa dạng, hứa hẹn tạo nên những phút giây giải trí thú vị, hấp dẫn hơn mỗi ngày cho bạn.

', 0, 98, CAST(N'2021-12-09' AS Date), N'tol', N'lg', 300000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (51, N'Tivi Sony OLED 4K 55 inch XR-55A80J VN3', 35920000, N'86612776356500.jpg', N'Tivi sony chính hãng.', 10, 92, CAST(N'2021-12-09' AS Date), N'tol', N'cp', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (53, N'Smart Tivi Oled LG 55 inch 55C9PTA, 4K UHD, HDR', 21550000, N'86227517603100.jpg', N'Thiết kế tối giản, hòa nhập với mọi không gian', 7, 98, CAST(N'2021-12-09' AS Date), N'tol', N'lg', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (54, N'Android Tivi 4K Sony 43 Inch KD-43X7500H', 13490000, N'86559866032200.png', N'Thiết kế tối giản, sang trọng.', 0, 100, CAST(N'2021-12-09' AS Date), N'atv', N'sn', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (55, N'Android Tivi 4K TCL 55 Inch 55P618', 13990000, N'86828433139600.png', N'Thiết kế thanh lịch, đơn giản.', 0, 99, CAST(N'2021-12-09' AS Date), N'atv', N'tcl', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (56, N'Android Tivi Sony 4K 50 inch KD-50X80J/S', 21490000, N'87043243488300.png', N'Sony', 14, 99, CAST(N'2021-12-07' AS Date), N'atv', N'sn', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (57, N'Smart Nanocell Tivi LG 4K 65 Inch 65NANO80TPA ThinQ AI', 33900000, N'87198555885400.png', N'Thiết kế ấn tượng, nâng tầm không gian sử dụng', 30, 99, CAST(N'2021-12-01' AS Date), N'tnc', N'lg', 0)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (58, N'Smart Tivi QLED 4K Samsung 43 Inch QA43Q60AAKXXV', 16900000, N'87338867056400.png', N'Tuyệt tác thiết kế thanh mảnh, sang trọng', 0, 96, CAST(N'2021-12-09' AS Date), N'tql', N'ss', 1000000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (59, N'Tivi Casper 32 inch 32HG5200', 7990000, N'87517743423300.jpg', N'100', 0, 100, CAST(N'2021-12-09' AS Date), N'led', N'cp', 300000)
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [Gia], [Anh], [MoTa], [GiamGia], [SoLuong], [NgayTao], [LoaiSP], [ThuongHieu], [GiamGia2]) VALUES (60, N'Smart Tivi Casper 43 inch 43FX6200', 9990000, N'87620779385400.jpg', N'cvcxcbvcbvcvb', 0, 100, CAST(N'2021-12-08' AS Date), N'atv', N'cp', 0)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[TaiKhoan] ON 

INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (3, N'admin', 1, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'ad')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (8, N'thanh', 1, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (9, N'tuan', 0, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'ad')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (10, N'pho', 0, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (11, N'kien', 1, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (12, N'phat', 1, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (13, N'nuong', 0, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (14, N'le', 0, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (15, N'java', 0, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (16, N'python', 1, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (17, N'hoang', 1, N'123', N'Nguyễn Lê Hoàng Thanh', N'thanhryu207@gmail.com', N'0943906331', N'74/4 đường 36,Linh Đông, Thủ Đức, Hồ Chí Minh', CAST(N'2021-08-20' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (18, N'thdc', 1, N'123', N'123', N'thanhryu207@gmail.com', N'0987654321', N'HCM', CAST(N'2021-08-21' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (19, N'admin3', 1, N'123', N'123', N'thanhryu207@gmail.com', N'0987654321', N'HCM', CAST(N'2021-08-22' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (20, N'tuansscv', 1, N'123', N'Hoàng Tuấn', N'nhoxvipdoi@gmail.com', N'0987654321', N'97 Man thiện', CAST(N'2021-08-22' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (21, N'thanhvc', 0, N'123', N'Hoàng Tuấn', N'nhoxvipdoi@gmail.com', N'0987654321', N'97 Man thiện', CAST(N'2021-08-22' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (22, N'thdczxz', 1, N'123', N'Hoàng Tuấn', N'nhoxvipdoi@gmail.com', N'0987654321', N'HCM', CAST(N'2021-08-29' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (23, N'dsvxcv', 1, N'123', N'Hoàng Tuấn', N'thanhryu207@gmail.com', N'0987654321', N'97 Man thiện', CAST(N'2021-08-30' AS Date), N'eu')
INSERT [dbo].[TaiKhoan] ([IDTaiKhoan], [TenTK], [GioiTinh], [MatKhau], [HoTen], [Email], [SDT], [DiaChiMacDinh], [NgayTaoTK], [QuyenTK]) VALUES (24, N'rewrewv', 1, N'123', N'Hoàng Tuấn', N'thanhryu207@gmail.com', N'0987654321', N'97 Man thiện', CAST(N'2021-08-30' AS Date), N'eu')
SET IDENTITY_INSERT [dbo].[TaiKhoan] OFF
GO
INSERT [dbo].[ThuongHieu] ([MaTH], [TenTH]) VALUES (N'cp', N'Casper')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenTH]) VALUES (N'lg', N'LG')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenTH]) VALUES (N'sn', N'Sony')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenTH]) VALUES (N'ss', N'SamSung')
INSERT [dbo].[ThuongHieu] ([MaTH], [TenTH]) VALUES (N'tcl', N'TCL')
GO
INSERT [dbo].[TrangThaiDonHang] ([MaTT], [MoTaTrangThai]) VALUES (0, N'Đã hủy')
INSERT [dbo].[TrangThaiDonHang] ([MaTT], [MoTaTrangThai]) VALUES (1, N'Đang xác nhận')
INSERT [dbo].[TrangThaiDonHang] ([MaTT], [MoTaTrangThai]) VALUES (2, N'Đang giao hàng')
INSERT [dbo].[TrangThaiDonHang] ([MaTT], [MoTaTrangThai]) VALUES (3, N'Đã giao hàng')
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[ChiTietDonHang] ADD  CONSTRAINT [DF_ChiTietDonHang_Gia]  DEFAULT ((0)) FOR [Gia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GiamGia]  DEFAULT ((0)) FOR [GiamGia]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_SoLuong]  DEFAULT ((0)) FOR [SoLuong]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_NgayTao]  DEFAULT (getdate()) FOR [NgayTao]
GO
ALTER TABLE [dbo].[SanPham] ADD  CONSTRAINT [DF_SanPham_GiamGia2]  DEFAULT ((0)) FOR [GiamGia2]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_SanPham] FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_SanPham]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TaiKhoan] FOREIGN KEY([MaTK])
REFERENCES [dbo].[TaiKhoan] ([IDTaiKhoan])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TaiKhoan]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_TrangThaiDonHang] FOREIGN KEY([TrangThai])
REFERENCES [dbo].[TrangThaiDonHang] ([MaTT])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_TrangThaiDonHang]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_DanhMucSanPham] FOREIGN KEY([LoaiSP])
REFERENCES [dbo].[DanhMucSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_DanhMucSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_ThuongHieu] FOREIGN KEY([ThuongHieu])
REFERENCES [dbo].[ThuongHieu] ([MaTH])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_ThuongHieu]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_PhanQuyen] FOREIGN KEY([QuyenTK])
REFERENCES [dbo].[PhanQuyen] ([MaQuyen])
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_PhanQuyen]
GO
USE [master]
GO
ALTER DATABASE [WebTiVi] SET  READ_WRITE 
GO
