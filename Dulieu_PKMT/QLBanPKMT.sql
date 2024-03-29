USE [QLBanPKMT]
GO
/****** Object:  Table [dbo].[ADMIN]    Script Date: 11/25/2019 20:16:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ADMIN](
	[MaAdmin] [int] NOT NULL,
	[HoTenAdmin] [nvarchar](50) NULL,
	[DiaChiAdmin] [nvarchar](50) NULL,
	[DienThoaiAdmin] [varchar](10) NULL,
	[TenDNAdmin] [varchar](15) NULL,
	[MatKhauAdmin] [varchar](15) NULL,
	[NgaySinhAdmin] [smalldatetime] NULL,
	[GioiTinhAdmin] [bit] NULL,
	[EmailAdmin] [varchar](50) NULL,
	[QuyenAdmin] [int] NULL,
 CONSTRAINT [PK_ADMIN] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[CHINHANH]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CHINHANH](
	[MaCN] [int] NOT NULL,
	[TenChiNhanh] [nvarchar](100) NULL,
	[DienThoaiCN] [nchar](20) NULL,
	[DiaChiCN] [nvarchar](200) NULL,
 CONSTRAINT [PK_CHINHANH] PRIMARY KEY CLUSTERED 
(
	[MaCN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTDONHANG]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CTDONHANG](
	[SoDH] [int] NOT NULL,
	[MaPK] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[DonGia] [decimal](9, 0) NULL,
	[ThanhTien] [float] NULL,
 CONSTRAINT [PK_CTDONHANG] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC,
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[CTPHUKIEN]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[CTPHUKIEN](
	[MaPK] [int] NOT NULL,
	[TenPK] [nvarchar](100) NULL,
	[DonViTinh] [nvarchar](50) NULL,
	[DonGia] [money] NULL,
	[MoTa] [ntext] NULL,
	[HinhMinhHoa] [varchar](50) NULL,
	[MaLoaiPK] [int] NULL,
	[MaNSX] [int] NULL,
	[NgayCapNhat] [smalldatetime] NULL,
	[SoLuongBan] [int] NULL,
	[SoLanXem] [int] NULL,
	[MaCN] [int] NULL,
 CONSTRAINT [PK_PHUKIEN] PRIMARY KEY CLUSTERED 
(
	[MaPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DONHANG]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DONHANG](
	[SoDH] [int] NOT NULL,
	[MaKH] [int] NULL,
	[NgayDH] [smalldatetime] NULL,
	[TriGia] [money] NULL,
	[DaGiao] [bit] NULL,
	[NgayGiao] [smalldatetime] NULL,
	[TenNguoiNhan] [varchar](50) NULL,
	[DiaChiNhan] [nvarchar](50) NULL,
	[DienThoaiNhan] [varchar](10) NULL,
	[HTThanhToan] [bit] NULL,
	[HTGiaoHang] [bit] NULL,
 CONSTRAINT [PK_DONHANG] PRIMARY KEY CLUSTERED 
(
	[SoDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[KHACHHANG]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KHACHHANG](
	[MaKH] [int] NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[DiaChiKH] [nvarchar](50) NULL,
	[DienThoaiKH] [varchar](10) NULL,
	[TenDNKH] [varchar](15) NULL,
	[MatKhauKH] [varchar](15) NULL,
	[NgaySinhKH] [smalldatetime] NULL,
	[GioiTinhKH] [bit] NULL,
	[EmailKH] [varchar](50) NULL,
	[DaDuyet] [bit] NULL,
 CONSTRAINT [PK_KHACHHANG] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LOAIPHUKIEN]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LOAIPHUKIEN](
	[MaLoaiPK] [int] NOT NULL,
	[TenLoaiPhuKien] [nvarchar](50) NULL,
 CONSTRAINT [PK_LOAIPHUKIEN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiPK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHANXET]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHANXET](
	[MaAdmin] [int] NOT NULL,
	[MaKH] [int] NOT NULL,
	[DanhGiaKH] [nvarchar](1000) NULL,
	[TraLoiKH] [nvarchar](1000) NULL,
	[TraLoiAdmin] [nvarchar](1000) NULL,
	[DaDuyet] [bit] NULL,
	[SoSao] [tinyint] NULL,
 CONSTRAINT [PK_NHANXET] PRIMARY KEY CLUSTERED 
(
	[MaAdmin] ASC,
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[NHASANXUAT]    Script Date: 11/25/2019 20:16:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NHASANXUAT](
	[MaNSX] [int] NOT NULL,
	[TenNSX] [nvarchar](100) NULL,
	[DiaChiNSX] [nvarchar](150) NULL,
	[DienThoai] [nvarchar](20) NULL,
 CONSTRAINT [PK_NHASANXUAT] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[CHINHANH] ([MaCN], [TenChiNhanh], [DienThoaiCN], [DiaChiCN]) VALUES (1, N'Binh Duong', N'0943209560          ', N'Binh Duong')
INSERT [dbo].[CHINHANH] ([MaCN], [TenChiNhanh], [DienThoaiCN], [DiaChiCN]) VALUES (2, N'Sai Gon', N'0943209561          ', N'Sai Gon')
INSERT [dbo].[CHINHANH] ([MaCN], [TenChiNhanh], [DienThoaiCN], [DiaChiCN]) VALUES (3, N'Da Nang', N'0943209562          ', N'Da Nang')
INSERT [dbo].[CHINHANH] ([MaCN], [TenChiNhanh], [DienThoaiCN], [DiaChiCN]) VALUES (4, N'Can Tho', N'0943209563          ', N'Can Tho')
INSERT [dbo].[CHINHANH] ([MaCN], [TenChiNhanh], [DienThoaiCN], [DiaChiCN]) VALUES (5, N'Lam Dong', N'0943209564          ', N'Lam Dong')
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (1, N'Loa bluetooth Sony SRS XB01(Xanh lá)', N'Cái', 799000.0000, N'Là thành viên mới nhất của dòng EXTRA BASS, Loa Sony SRS-XB01 thực sự làm một ví dụ cho câu ” nhỏ mà có võ” với kiểu dáng đơn giản nhỏ gọn nhưng mang một khả năng chơi nhạc vượt trội.', N'loa_sony srs-xb01_green_1.png', 4, 1, CAST(0xAAF80000 AS SmallDateTime), 100, 0, 1)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (2, N'Chuột gaming Logitech G403 Hero
', N'Cái', 1279000.0000, N'- Chuột gaming Logitech G403 Hero 
- Cảm biến HERO cho DPI lên đến 16.000 
- Lightsync RGB điều khiển led dễ dàng bằng phần mềm 
- 6 nút bấm có thể lập trình qua HUB G 
- Thời gian phản hồi 1ms mang lại độ chính xác ấn tượng ', N'Chuot-may-tinh-gaming-Logitech-G403-Hero-1.jpg', 3, 2, CAST(0xAAF90000 AS SmallDateTime), 500, 0, 2)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (3, N'Chuột gaming không dây Logitech G703 Hero
', N'Cái', 2229000.0000, N'- Chuột gaming Logitech G703 
- Cảm biến HERO cho DPI lên đến 16.000 
- Kết nối Lightspeed không dây 
- Thời lượng pin ấn tượng lên đến 35 giờ và 60 giờ khi không chiếu sáng 
', N'Chuot-may-tinh-gaming-khong-day.jpg', 3, 2, CAST(0xAB100000 AS SmallDateTime), 200, 1, 3)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (4, N'Chuột máy tính không dây LOGITECH G604 (Đen)
', N'Cái', 2499000.0000, N'- Chuột chơi game không dây LightSpeed G604 
- 15 nút điều khiẻn có thể lập trình 
- Cảm biến HERO 16K  
- Khả năng kết nối kép với lightspeed 
- Thời lượng sử dụng có thể lên đến 240 giờ với 1 pin AA ', N'Logitech-G604-1.jpg', 3, 2, CAST(0xAAFF0000 AS SmallDateTime), 100, 0, 4)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (5, N'Bàn phím cơ LOGITECH Gaming G813 - GL Tactile (Đen)
', N'Cái', 4189000.0000, N'- Bàn phím cơ
- Kết nối: USB
- Switch: GL Tactile
- Phím chức năng: Có', N'G813-GL-Tactile.jpg', 2, 2, CAST(0xAB100000 AS SmallDateTime), 50, 0, 4)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (6, N'Bàn phím cơ LOGITECH PRO X - GX switch Blue (Đen)
', N'Cái', 3799000.0000, N'- Bàn phím cơ
- Kết nối: USB
- Switch: GX switch Blue
- Phím chức năng: Có', N'Gaming-Logitech-G-Pro-X-1.jpg', 2, 2, CAST(0xAAFE0000 AS SmallDateTime), 60, 0, 5)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (7, N'Miếng lót chuột Dareu ESP100 (Size M/5mm)
', N'Tấm', 149000.0000, N'- Bề mặt: Vải
- Kích thước M
- 350x300x5mm', N'dareu esp100 350x300x5mm_1.jpg', 5, 3, CAST(0xAAFA0000 AS SmallDateTime), 10, 0, 1)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (8, N'Chuột máy tính DARE-U EM908
', N'Cái', 399000.0000, N'- Chuột Dareu EM908 được thiết kế công thái học với một ngoại hình vừa vặn bàn tay,tạo cảm giác không nhức mỏi, thoải mái khi sử dụng một thời gian dài
- Ngoài ra với dải đèn LED tinh tế RGB cùng 16.7 triệu màu quanh viền chuột
- Với mắt cảm ứng BRAVO sensor nổi trội ( 6400 DPI với 6 nút tinh chỉnh ) cùng với gia tốc 150 IPS
- Với Driver dễ sử dụng cùng với một loạt chương trình có thể điều chỉnh được. Từ màu sắc hiển thị cho tới các hiệu ứng, tốc độ chuột, thiết lập Tất cả đều dễ dàng sử dụng chỉ với 1 cú click chuột.', N'chu?t-máy-tính-dareu-em908-1.jpg', 3, 3, CAST(0xAB100000 AS SmallDateTime), 5, 0, 1)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (9, N'Bàn phím cơ KINGSTON HyperX Alloy Elite RGB Mechanical HX-KB2BR2-US/R1 - Cherry MX Brown (Đen)
', N'Cái', 3999000.0000, N'- Bàn phím cơ
- Kết nối: USB 2.0
- Switch: Cherry MX Brown
- Phím chức năng: Có', N'chuotkingston.jpg', 3, 4, CAST(0xAAFB0000 AS SmallDateTime), 800, 0, 2)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (10, N'Tai nghe In-ear Razer Ifrit + Razer USB audio enhancer - RZ82-02300100-B3M1 (Đen)
', N'Cái', 2790000.0000, N'- Chất lượng âm thanh mà bạn luôn mong đợi - Thiết kế nhỏ gọn giúp cho các streamer có cảm giác thoải mái khi đeo - Microphone có chất lượng thu âm tuyệt vời và có thể điều chỉnh được - Không làm ảnh hưởng đến kiểu tóc của người sử dụng', N'razer usb audio enhancer bundle.jpg', 1, 5, CAST(0xAB100000 AS SmallDateTime), 900, 0, 3)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (11, N'Bàn phím cơ ASUS Strix Flare PNK Ltd - Cherry MX Red Red (Xám, Hồng)
', N'Cái', 4390000.0000, N'- Bàn phím cơ
- Kết nối: USB
- Switch: Cherry MX Red Red
- Phím chức năng: Có', N'banphimasus.jpg', 2, 6, CAST(0xAAFC0000 AS SmallDateTime), 300, 0, 4)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (12, N'Bàn phím cơ ACER Predator Aethon 500 - Kailh Blue Blue (Đen)
', N'Cái', 3690000.0000, N'- Bàn phím cơ
- Kết nối USB
- Kiểu switch Kailh Blue
- Phím chức năng Có', N'banphimacer.jpg', 2, 7, CAST(0xAAFD0000 AS SmallDateTime), 200, 0, 5)
INSERT [dbo].[CTPHUKIEN] ([MaPK], [TenPK], [DonViTinh], [DonGia], [MoTa], [HinhMinhHoa], [MaLoaiPK], [MaNSX], [NgayCapNhat], [SoLuongBan], [SoLanXem], [MaCN]) VALUES (13, N'Bàn phím Fuhlen Subverter RGB
', N'Cái', 1149000.0000, N'- Thương hiệu: Fuhlen 
- Phím cơ Blue switch cho cảm giác gõ hoàn hảo, tốc độ phản hồi nhanh 
- Switch quang cơ bền bỉ cùng với đèn led RGB nhiều chế độ ', N'_Ban-phim-Fuhlen-Subverter-1.jpg', 2, 8, CAST(0xAB100000 AS SmallDateTime), 100, 0, 5)
INSERT [dbo].[KHACHHANG] ([MaKH], [HoTenKH], [DiaChiKH], [DienThoaiKH], [TenDNKH], [MatKhauKH], [NgaySinhKH], [GioiTinhKH], [EmailKH], [DaDuyet]) VALUES (1, N'Đào Hoàng Sơn', N'Bình Dương', N'0943209560', N'whoami2509', N'son2591999', CAST(0x8E4A0000 AS SmallDateTime), 1, N'daohoangson560@gmail.com', 1)
INSERT [dbo].[LOAIPHUKIEN] ([MaLoaiPK], [TenLoaiPhuKien]) VALUES (1, N'Tai nghe')
INSERT [dbo].[LOAIPHUKIEN] ([MaLoaiPK], [TenLoaiPhuKien]) VALUES (2, N'Bàn phím')
INSERT [dbo].[LOAIPHUKIEN] ([MaLoaiPK], [TenLoaiPhuKien]) VALUES (3, N'Chuột')
INSERT [dbo].[LOAIPHUKIEN] ([MaLoaiPK], [TenLoaiPhuKien]) VALUES (4, N'Loa')
INSERT [dbo].[LOAIPHUKIEN] ([MaLoaiPK], [TenLoaiPhuKien]) VALUES (5, N'Tấm lót')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (1, N'SONY', N'Nhật Bản', N'0987654321')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (2, N'LOGITECH', N'Thụy Sĩ', N'0987564321')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (3, N'DAREU', NULL, N'0987653421')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (4, N'KINGSTON', N'Hoa Kỳ', N'0987654312')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (5, N'RAZER', N'Hoa Kỳ', N'0978654321')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (6, N'ASUS', N'Đài Loan', N'0897654321')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (7, N'ACER', N'Đài Loan', N'0798654321')
INSERT [dbo].[NHASANXUAT] ([MaNSX], [TenNSX], [DiaChiNSX], [DienThoai]) VALUES (8, N'FUHLEN', N'Trung Quốc', N'0698754321')
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDONHANG_CTPHUKIEN] FOREIGN KEY([MaPK])
REFERENCES [dbo].[CTPHUKIEN] ([MaPK])
GO
ALTER TABLE [dbo].[CTDONHANG] CHECK CONSTRAINT [FK_CTDONHANG_CTPHUKIEN]
GO
ALTER TABLE [dbo].[CTDONHANG]  WITH CHECK ADD  CONSTRAINT [FK_CTDONHANG_DONHANG] FOREIGN KEY([SoDH])
REFERENCES [dbo].[DONHANG] ([SoDH])
GO
ALTER TABLE [dbo].[CTDONHANG] CHECK CONSTRAINT [FK_CTDONHANG_DONHANG]
GO
ALTER TABLE [dbo].[CTPHUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CTPHUKIEN_CHINHANH] FOREIGN KEY([MaCN])
REFERENCES [dbo].[CHINHANH] ([MaCN])
GO
ALTER TABLE [dbo].[CTPHUKIEN] CHECK CONSTRAINT [FK_CTPHUKIEN_CHINHANH]
GO
ALTER TABLE [dbo].[CTPHUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CTPHUKIEN_LOAIPHUKIEN] FOREIGN KEY([MaLoaiPK])
REFERENCES [dbo].[LOAIPHUKIEN] ([MaLoaiPK])
GO
ALTER TABLE [dbo].[CTPHUKIEN] CHECK CONSTRAINT [FK_CTPHUKIEN_LOAIPHUKIEN]
GO
ALTER TABLE [dbo].[CTPHUKIEN]  WITH CHECK ADD  CONSTRAINT [FK_CTPHUKIEN_NHASANXUAT] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NHASANXUAT] ([MaNSX])
GO
ALTER TABLE [dbo].[CTPHUKIEN] CHECK CONSTRAINT [FK_CTPHUKIEN_NHASANXUAT]
GO
ALTER TABLE [dbo].[DONHANG]  WITH CHECK ADD  CONSTRAINT [FK_DONHANG_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[DONHANG] CHECK CONSTRAINT [FK_DONHANG_KHACHHANG]
GO
ALTER TABLE [dbo].[NHANXET]  WITH CHECK ADD  CONSTRAINT [FK_NHANXET_ADMIN] FOREIGN KEY([MaAdmin])
REFERENCES [dbo].[ADMIN] ([MaAdmin])
GO
ALTER TABLE [dbo].[NHANXET] CHECK CONSTRAINT [FK_NHANXET_ADMIN]
GO
ALTER TABLE [dbo].[NHANXET]  WITH CHECK ADD  CONSTRAINT [FK_NHANXET_KHACHHANG] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KHACHHANG] ([MaKH])
GO
ALTER TABLE [dbo].[NHANXET] CHECK CONSTRAINT [FK_NHANXET_KHACHHANG]
GO
