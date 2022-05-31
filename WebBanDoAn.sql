USE [QL_BanDoAn]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[UserAdmin] [varchar](20) NOT NULL,
	[PassAdmin] [varchar](50) NOT NULL,
	[HoTen] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[UserAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDDH]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDDH](
	[IDDonDatHang] [int] NOT NULL,
	[IDSanPham] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [decimal](18, 0) NULL,
 CONSTRAINT [PK_ChiTietDDH] PRIMARY KEY CLUSTERED 
(
	[IDDonDatHang] ASC,
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonDatHang]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonDatHang](
	[IDDonDatHang] [int] IDENTITY(1,1) NOT NULL,
	[IDShippers] [int] NULL,
	[IDKhachHang] [int] NULL,
	[NgayDH] [datetime] NULL,
	[NgayGiao] [datetime] NULL,
	[DiaChiGH] [nvarchar](200) NULL,
	[DaThanhToan] [bit] NULL,
	[TrangThaiGiaoHang] [bit] NULL,
 CONSTRAINT [PK_DonDatHang] PRIMARY KEY CLUSTERED 
(
	[IDDonDatHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[IDKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[HoTenKhachHang] [nvarchar](50) NOT NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NOT NULL,
	[NgaySinh] [datetime] NULL,
	[SoDienThoai] [varchar](11) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[Email] [varchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[IDKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[IDLoaiSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiSanPham] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[IDLoaiSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuangCaoSP]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuangCaoSP](
	[IDQuangCao] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](50) NOT NULL,
	[NoiDungTieuDe] [nvarchar](max) NULL,
	[HinhAnh] [varchar](50) NULL,
 CONSTRAINT [PK_QuangCaoSP] PRIMARY KEY CLUSTERED 
(
	[IDQuangCao] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[IDSanPham] [int] IDENTITY(1,1) NOT NULL,
	[IDLoaiSanPham] [int] NULL,
	[IDQuangCao] [int] NULL,
	[TenSanPham] [nvarchar](100) NOT NULL,
	[DonGia] [decimal](18, 0) NULL,
	[NgayCapNhat] [datetime] NULL,
	[ChuThich] [nvarchar](max) NULL,
	[HinhAnh] [varchar](50) NULL,
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[IDSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Shippers]    Script Date: 31/05/2022 8:45:23 CH ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Shippers](
	[IDShippers] [int] IDENTITY(1,1) NOT NULL,
	[BienSoShipper] [nvarchar](20) NOT NULL,
	[SoDienThoai] [varchar](11) NULL,
 CONSTRAINT [PK_Shippers] PRIMARY KEY CLUSTERED 
(
	[IDShippers] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Admin] ([UserAdmin], [PassAdmin], [HoTen]) VALUES (N'datnt', N'123456', N'Nguyễn Thanh Đạt')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (1, N'Nguyễn Thanh Đạt', N'datpq', N'123456', CAST(N'2001-04-23T00:00:00.000' AS DateTime), N'0912252304', N'Thanh dat', N'thanhdatpqkg23@gmail.com')
GO
INSERT [dbo].[KhachHang] ([IDKhachHang], [HoTenKhachHang], [TaiKhoan], [MatKhau], [NgaySinh], [SoDienThoai], [DiaChi], [Email]) VALUES (2, N'Nguyễn Tiến Luân', N'thang', N'123456', CAST(N'1990-10-15T00:00:00.000' AS DateTime), N'0917654310', N'21 Quận 6', N'ntluan@hcmuns.edu.vn')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] ON 
GO
INSERT [dbo].[LoaiSanPham] ([IDLoaiSanPham], [TenLoaiSanPham]) VALUES (1, N'Bánh mì')
GO
SET IDENTITY_INSERT [dbo].[LoaiSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[QuangCaoSP] ON 
GO
INSERT [dbo].[QuangCaoSP] ([IDQuangCao], [TieuDe], [NoiDungTieuDe], [HinhAnh]) VALUES (1, N'ádb', N'sadf', N'Me.jpg')
GO
SET IDENTITY_INSERT [dbo].[QuangCaoSP] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDQuangCao], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (1, 1, 1, N'Bánh mì ốp la', CAST(15000 AS Decimal(18, 0)), NULL, N'thơm', N'130499.jpg')
GO
INSERT [dbo].[SanPham] ([IDSanPham], [IDLoaiSanPham], [IDQuangCao], [TenSanPham], [DonGia], [NgayCapNhat], [ChuThich], [HinhAnh]) VALUES (2, 1, 1, N'Helo', CAST(20000 AS Decimal(18, 0)), NULL, N'hay', N'KT0006.jpg')
GO
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[Shippers] ON 
GO
INSERT [dbo].[Shippers] ([IDShippers], [BienSoShipper], [SoDienThoai]) VALUES (1, N'1234', N'091231341')
GO
SET IDENTITY_INSERT [dbo].[Shippers] OFF
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_DonDatHang] FOREIGN KEY([IDDonDatHang])
REFERENCES [dbo].[DonDatHang] ([IDDonDatHang])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_DonDatHang]
GO
ALTER TABLE [dbo].[ChiTietDDH]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDDH_SanPham] FOREIGN KEY([IDSanPham])
REFERENCES [dbo].[SanPham] ([IDSanPham])
GO
ALTER TABLE [dbo].[ChiTietDDH] CHECK CONSTRAINT [FK_ChiTietDDH_SanPham]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_KhachHang] FOREIGN KEY([IDKhachHang])
REFERENCES [dbo].[KhachHang] ([IDKhachHang])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_KhachHang]
GO
ALTER TABLE [dbo].[DonDatHang]  WITH CHECK ADD  CONSTRAINT [FK_DonDatHang_Shippers] FOREIGN KEY([IDShippers])
REFERENCES [dbo].[Shippers] ([IDShippers])
GO
ALTER TABLE [dbo].[DonDatHang] CHECK CONSTRAINT [FK_DonDatHang_Shippers]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([IDLoaiSanPham])
REFERENCES [dbo].[LoaiSanPham] ([IDLoaiSanPham])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_QuangCaoSP] FOREIGN KEY([IDQuangCao])
REFERENCES [dbo].[QuangCaoSP] ([IDQuangCao])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_QuangCaoSP]
GO
