
CREATE TABLE [dbo].[HangHoa](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[hoadonma] [varchar](20) NULL FOREIGN KEY (hoadonma) REFERENCES HoaDon(ma),
	[TenHang] [nvarchar](50) NULL ,
	[SoLuong] [int] NULL,
	[NgaySX] [date] NULL,
	[HanSD] [date] NULL,
	[NoiSX] [nvarchar](50) NULL)



CREATE TABLE [dbo].[HoaDon](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[KHma] [varchar](20) NULL FOREIGN KEY (KHma) REFERENCES KhachHang(ma),
	[TongTienTT] [float] NULL,
	[nvma] [varchar](20) NULL FOREIGN KEY (nvma) REFERENCES NhanVien(ma),
	[NgayTT] [date] NULL
	)

CREATE TABLE [dbo].[KhachHang](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[Ten] [nvarchar](50) NULL,
	[gioitinh] [bit] NULL,
	[diachi] [nvarchar](50) NULL,
	[SDT] [int] NULL,
	[socmnd] [int] NULL,
	[Email] [varchar](50) NULL)

CREATE TABLE [dbo].[NhanVien](
	[Ma] [varchar](20) NOT NULL PRIMARY KEY,
	[Ten] [nvarchar](50) NOT NULL,
	[Gioitinh] [bit] NULL,
	[Ngaysinh] [date] NULL,
	[SDT] [int] NULL,
	[Luong] [float] NULL,
	[PhongBan] [nvarchar](30) NULL,
	[DiaChi] [text] NULL,
	[MatKhau] [varchar](20) NULL)




INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H001', N'HD001', N'Quần Áo', 1000, CAST(N'2014-02-04' AS Date), CAST(N'1900-01-01' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H002', N'HD002', N'Chăn Đệm', 1000, CAST(N'2014-03-04' AS Date), CAST(N'1900-01-01' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H003', N'HD003', N'Thực Phẩm', 1000, CAST(N'2014-05-04' AS Date), CAST(N'2016-04-05' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H004', N'HD004', N'Đồ gia dụng', 1000, CAST(N'2014-08-04' AS Date), CAST(N'2016-05-03' AS Date), N'Hà Nội')
INSERT [dbo].[HangHoa] ([Ma], [hoadonma], [TenHang], [SoLuong], [NgaySX], [HanSD], [NoiSX]) VALUES (N'H005', N'HD005', N'Mỹ Phẩm', 1000, CAST(N'2014-09-04' AS Date), CAST(N'2015-07-05' AS Date), N'Hà Nội')
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD001', N'KH001', 23, N'NV001', CAST(N'2015-03-04' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD002', N'KH002', 23, N'NV002', CAST(N'2015-03-07' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD003', N'KH003', 23, N'NV003', CAST(N'2015-02-09' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD004', N'KH004', 23, N'NV004', CAST(N'2015-02-03' AS Date))
INSERT [dbo].[HoaDon] ([Ma], [KHma], [TongTienTT], [nvma], [NgayTT]) VALUES (N'HD005', N'KH005', 23, N'NV005', CAST(N'2015-02-04' AS Date))
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH001', N'hoàng văn tùng', 0, N'hà nội', 1234234564, 173876534, N'hoangtung@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH002', N'hoàng văn nam', 0, N'hà nội', 1234234564, 173876534, N'hoangnam@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH003', N'hoàng văn hải', 0, N'hà nội', 1234234564, 173876534, N'hoanghai@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH004', N'hoàng văn bình', 0, N'hà nội', 1234234564, 173876534, N'hoangbinh@gmail.com')
INSERT [dbo].[KhachHang] ([Ma], [Ten], [gioitinh], [diachi], [SDT], [socmnd], [Email]) VALUES (N'KH005', N'hoàng văn tiến', 0, N'hà nội', 1234234564, 173876534, N'hoangtien@gmail.com')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV001', N'LÊ VĂN AN', 0, CAST(N'1990-03-04' AS Date), 123456789, 20, N'phòng kinh doanh', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV002', N'NGUYỄN VĂN AN', 0, CAST(N'1999-03-04' AS Date), 123456789, 20, N'phòng khách hàng', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV003', N'NGUYỄN VĂN BÌNH', 0, CAST(N'1890-03-04' AS Date), 123456789, 20, N'phòng kế toán', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV004', N'LÊ VĂN HẢI', 0, CAST(N'1970-03-04' AS Date), 123456789, 5, N'phòng bảo vệ', N'HN', N'1111')
INSERT [dbo].[NhanVien] ([Ma], [Ten], [Gioitinh], [Ngaysinh], [SDT], [Luong], [PhongBan], [DiaChi], [MatKhau]) VALUES (N'NV005', N'LÊ VĂN ANH', 0, CAST(N'1990-03-04' AS Date), 123456789, 20, N'phòng giám đốc', N'HN', N'1111')
