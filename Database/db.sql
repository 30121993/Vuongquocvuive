USE [master]
GO
/****** Object:  Database [BEC]    Script Date: 09/30/2014 22:01:54 ******/
CREATE DATABASE [BEC] ON  PRIMARY 
( NAME = N'BEC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BEC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'BEC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\BEC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [BEC] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [BEC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [BEC] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [BEC] SET ANSI_NULLS OFF
GO
ALTER DATABASE [BEC] SET ANSI_PADDING OFF
GO
ALTER DATABASE [BEC] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [BEC] SET ARITHABORT OFF
GO
ALTER DATABASE [BEC] SET AUTO_CLOSE OFF
GO
ALTER DATABASE [BEC] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [BEC] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [BEC] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [BEC] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [BEC] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [BEC] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [BEC] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [BEC] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [BEC] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [BEC] SET  DISABLE_BROKER
GO
ALTER DATABASE [BEC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [BEC] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [BEC] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [BEC] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [BEC] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [BEC] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [BEC] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [BEC] SET  READ_WRITE
GO
ALTER DATABASE [BEC] SET RECOVERY FULL
GO
ALTER DATABASE [BEC] SET  MULTI_USER
GO
ALTER DATABASE [BEC] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [BEC] SET DB_CHAINING OFF
GO
EXEC sys.sp_db_vardecimal_storage_format N'BEC', N'ON'
GO
USE [BEC]
GO
/****** Object:  Table [dbo].[User_Rank]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Rank](
	[User_RankID] [int] NOT NULL,
	[User_RankName] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User_Rank] PRIMARY KEY CLUSTERED 
(
	[User_RankID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (1, N'Bần Nông')
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (2, N'Tiểu Nông')
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (3, N'Phú Hộ')
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (4, N'Địa Chủ')
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (5, N'Đại Địa Chủ')
/****** Object:  Table [dbo].[User_Type]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[User_TypeID] [int] IDENTITY(1,1) NOT NULL,
	[User_NameType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED 
(
	[User_TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[User_Type] ON
INSERT [dbo].[User_Type] ([User_TypeID], [User_NameType]) VALUES (1, N'Super Admin')
INSERT [dbo].[User_Type] ([User_TypeID], [User_NameType]) VALUES (2, N'Admin')
INSERT [dbo].[User_Type] ([User_TypeID], [User_NameType]) VALUES (3, N'Khachhang')
SET IDENTITY_INSERT [dbo].[User_Type] OFF
/****** Object:  Table [dbo].[Users]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_TypeID] [int] NOT NULL,
	[User_RankID] [int] NOT NULL,
	[User_FullName] [nvarchar](max) NULL,
	[User_Birthday] [date] NULL,
	[User_Gender] [int] NULL,
	[User_UserName] [nvarchar](max) NULL,
	[User_PassWord] [nvarchar](max) NULL,
	[User_Address] [nvarchar](max) NULL,
	[User_Xa] [nvarchar](max) NULL,
	[User_Phuong] [nvarchar](max) NULL,
	[User_ThanhPho] [nvarchar](max) NULL,
	[User_Truong] [nvarchar](max) NULL,
	[User_Lop] [nvarchar](max) NULL,
	[User_Email] [nvarchar](max) NULL,
	[User_Phone] [nvarchar](50) NULL,
	[User_Image] [nvarchar](50) NULL,
	[User_RegisterTime] [datetime] NULL,
	[User_Gold] [int] NULL,
	[User_Money] [int] NULL,
	[User_Gift] [nchar](10) NULL,
	[User_Active] [nvarchar](100) NULL,
	[User_Status] [bit] NULL,
	[User_LastEdit] [datetime] NULL,
	[User_LastLogin] [datetime] NULL,
	[User_HoanThanhDK] [bit] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (1, 1, 3, N'Trịnh Duy Long', CAST(0x09380B00 AS Date), 1, N'admin', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'Hà Nội', N'Xuân ĐỈnh', N'Xuân ĐỈnh', N'Hà Nội', N'Đh Điện Lực', N'Đ6CNTT', N'longtd3012@gmail.com', N'0984152426', N'ava1.png', CAST(0x0000A3AF00000000 AS DateTime), 18600, 1000000, N'0         ', NULL, 1, CAST(0x0000A3B6000783EB AS DateTime), CAST(0x0000A3B600A28D29 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (2, 2, 2, N'Trịnh Thái Sơn', CAST(0xF9380B00 AS Date), 1, N'son', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, N'ava1.png', CAST(0x0000A39E00000000 AS DateTime), 6450, 0, N'0         ', NULL, 1, CAST(0x0000A3B6000AAC00 AS DateTime), CAST(0x0000A3B6000A9B38 AS DateTime), 0)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (3, 1, 1, N'Linh', CAST(0xD1180B00 AS Date), 2, N'123', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'1123', N'123', N'123', N'123', N'123', N'123', N'123', N'1234', N'ava1.png', CAST(0x0000A16D00000000 AS DateTime), 1100, NULL, NULL, NULL, 0, NULL, CAST(0x0000A3A901712658 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (9, 3, 1, N'Hải Đáng Yêu', CAST(0x01380B00 AS Date), 1, N'1234', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'123', N'', N'', N'', N'', N'', N'1@gmail.com', N'12312231', N'ava1.png', CAST(0x0000A3A001070317 AS DateTime), 3000, 0, N'          ', NULL, 1, CAST(0x0000A3B60015C47D AS DateTime), CAST(0x0000A3B6001731C0 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (10, 3, 1, N'Ngọc', CAST(0xF5380B00 AS Date), 1, N'wwww', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'ưew', NULL, NULL, NULL, NULL, NULL, N'dxdfg@ffd.vn', N'31221', N'ava1.png', CAST(0x0000A3A300A50BAA AS DateTime), 1000, 0, NULL, NULL, 1, NULL, CAST(0x0000A3A901712658 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (11, 1, 1, N'Tuấn', CAST(0x761B0B00 AS Date), 1, N'1', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'Hà Nội', N'Xuân ĐỈnh', N'Xuân ĐỈnh', N'Hà Nội', N' Đh Điện Lực', N'Đ6CNTT', N'longtd3012232@gmail.com', N'0984152426', N'ava1.png', CAST(0x0000A39F00000000 AS DateTime), 30, 1000000, N'0         ', NULL, 1, NULL, CAST(0x0000A3A901712658 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (12, 3, 1, N'abc', CAST(0xF4380B00 AS Date), 1, N'123456', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'123467890-', NULL, NULL, NULL, NULL, NULL, N'2@gmail.com', N'1234567890-', N'ava1.png', CAST(0x0000A3AE018B7086 AS DateTime), 2900, 0, NULL, NULL, 1, NULL, CAST(0x0000A3B10006F589 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (13, 3, 1, N'Test', CAST(0x2A1A0B00 AS Date), 2, N'admin1', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'Hà Nội', NULL, NULL, NULL, NULL, NULL, N'3@gmail.com', NULL, N'ava1.png', CAST(0x0000A3B000B7D4F7 AS DateTime), 1000, 0, NULL, NULL, 1, NULL, CAST(0x0000A3B000B7E4F2 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (14, 3, 1, N'test2', CAST(0xD8330B00 AS Date), 1, N'admin2', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'Hà Nội', NULL, NULL, NULL, NULL, NULL, N'4@gmail.com', NULL, N'ava1.png', CAST(0x0000A3B000B87BCE AS DateTime), 1000, 0, NULL, NULL, 1, NULL, CAST(0x0000A3B000B899D9 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (17, 3, 1, N'111111', CAST(0x09380B00 AS Date), 1, N'111111', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'1', NULL, NULL, NULL, NULL, NULL, N'5@gmail.com', NULL, N'ava1.png', CAST(0x0000A3B400B80B10 AS DateTime), 1000, 0, NULL, NULL, 1, NULL, CAST(0x0000A3B400B868A9 AS DateTime), 1)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit], [User_LastLogin], [User_HoanThanhDK]) VALUES (21, 3, 1, N'sadsasd', CAST(0x09380B00 AS Date), 2, N'abcdef', N'D033E22AE348AEB5660FC2140AEC35850C4DA997', N'1', N'1', N'1', N'1', N'1', N'1', N'7@gmail.com', N'1234567890', N'ava1.png', CAST(0x0000A3B400B80B10 AS DateTime), 2000, 0, NULL, NULL, 1, CAST(0x0000A3B60000463D AS DateTime), CAST(0x0000A3B600052904 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[User_Type_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[User_Type_SelectByID]
@User_TypeID Int
as
Select * from User_Type
 Where  ([User_TypeID]= @User_TypeID)
GO
/****** Object:  StoredProcedure [dbo].[User_Type_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[User_Type_SelectAll]
as
Select * from User_Type
GO
/****** Object:  StoredProcedure [dbo].[User_Type_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[User_Type_Delete]
@User_TypeID Int
as
Delete User_Type
 Where  ([User_TypeID]= @User_TypeID)
GO
/****** Object:  StoredProcedure [dbo].[User_Rank_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[User_Rank_SelectByID]
@User_RankID Int
as
Select * from User_Rank
 Where  ([User_RankID]= @User_RankID)
GO
/****** Object:  StoredProcedure [dbo].[User_Rank_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[User_Rank_SelectAll]
as
Select * from User_Rank
GO
/****** Object:  StoredProcedure [dbo].[User_Rank_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[User_Rank_Delete]
@User_RankID Int
as
Delete User_Rank
 Where  ([User_RankID]= @User_RankID)
GO
/****** Object:  StoredProcedure [dbo].[Users_UpdateLastLogin]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_UpdateLastLogin]
@User_ID int
As begin
	Update Users set User_LastLogin = GETDATE() where USER_ID = @User_ID
end
GO
/****** Object:  StoredProcedure [dbo].[Users_UpdateInfo]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_UpdateInfo]
(
		@User_ID int,
		@User_FullName nvarchar(max),
		@User_Birthday date,
		@User_Gender int,
		@User_Address nvarchar(max),
		@User_Xa nvarchar(max),
		@User_Phuong nvarchar(max),
		@User_ThanhPho nvarchar(max),
		@User_Truong nvarchar(max),
		@User_Lop nvarchar(max),
		@User_Email nvarchar(max),
		@User_Phone nvarchar(50)
)
AS
Begin
UPDATE BEC.dbo.Users
   SET 
		User_FullName = @User_FullName
	    ,User_Birthday = @User_Birthday
		,User_Gender = @User_Gender
		,User_Address = @User_Address
		,User_Xa = @User_Xa
		,User_Phuong = @User_Phuong
		,User_ThanhPho = @User_ThanhPho 
		,User_Truong = @User_Truong
		,User_Lop = @User_Lop
		,User_Email = @User_Email
		,User_Phone = @User_Phone
		,User_LastEdit = GETDATE()
		,User_HoanThanhDK=1
	Where USER_ID = @User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Users_UpdateGold]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_UpdateGold]
@User_ID int
AS
BEGIN
	declare @gold int
	set @gold = (select User_Gold from Users where User_ID= @User_ID)
	UPDATE Users
	SET User_Gold = @gold + 1000
	where User_ID= @User_ID
END
GO
/****** Object:  Table [dbo].[Album]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Album](
	[AlbumID] [int] IDENTITY(1,1) NOT NULL,
	[User_ID] [int] NULL,
	[FileName] [nvarchar](max) NULL,
	[Time_Upload] [date] NULL,
 CONSTRAINT [PK_Album] PRIMARY KEY CLUSTERED 
(
	[AlbumID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Album] ON
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (1, 1, N'ava1.png', CAST(0x0B390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (2, 12, N'ava3.jpg', CAST(0x0C390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (3, 12, N'ava2.jpg', CAST(0x0C390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (4, 1, N'ava2.jpg', CAST(0x0C390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (5, 1, N'ava3.jpg', CAST(0x0C390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (6, 12, N'ava1.png', CAST(0x0C390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (7, 9, N'ava1.png', CAST(0x0C390B00 AS Date))
INSERT [dbo].[Album] ([AlbumID], [User_ID], [FileName], [Time_Upload]) VALUES (8, 1, N'ava4.jpg', CAST(0x0D390B00 AS Date))
SET IDENTITY_INSERT [dbo].[Album] OFF
/****** Object:  Table [dbo].[Catalog]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[Catalog_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[User_ID] [int] NULL,
	[Catalog_Name] [nvarchar](max) NOT NULL,
	[Catalog_Super] [int] NULL,
	[Catalog_LastEdit] [datetime] NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[Catalog_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catalog] ON
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (1, 1, N'Truyện Cổ Tích', NULL, NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (2, 1, N'Truyện Ngụ Ngôn', NULL, NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (3, 1, N'Truyện Cười', NULL, NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (4, 1, N'Truyện Danh Nhân', NULL, NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (5, 1, N'Mẹ Kể Con Nghe', NULL, NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (6, 1, N'Cổ Tích Việt Nam', 1, NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [User_ID], [Catalog_Name], [Catalog_Super], [Catalog_LastEdit]) VALUES (7, 1, N'Cổ Tích Nước Ngoài', 1, NULL)
SET IDENTITY_INSERT [dbo].[Catalog] OFF
/****** Object:  Table [dbo].[Blog_Status]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Status](
	[Status_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Status_Content] [nvarchar](max) NOT NULL,
	[Status_CreateDate] [date] NOT NULL,
	[Status_TotalLike] [int] NOT NULL,
 CONSTRAINT [PK_Blog_Status_1] PRIMARY KEY CLUSTERED 
(
	[Status_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Blog_Status] ([Status_ID], [User_ID], [Status_Content], [Status_CreateDate], [Status_TotalLike]) VALUES (1, 1, N'Trịnh Duy LOng', CAST(0xEA380B00 AS Date), 10)
/****** Object:  Table [dbo].[Game]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Game_ID] [int] IDENTITY(1,1) NOT NULL,
	[Catalog_ID] [int] NULL,
	[Game_Name] [nvarchar](max) NULL,
	[Game_Catalog] [nvarchar](max) NULL,
	[Game_Path] [nvarchar](max) NULL,
	[Game_Status] [nvarchar](max) NULL,
	[Game_MaxMark] [int] NULL,
	[Game_Guide] [nvarchar](max) NULL,
	[Game_TimeUp] [datetime] NULL,
	[Game_UserCreater] [int] NULL,
	[Game_Price] [int] NULL,
	[Game_TotalView] [int] NULL,
	[Game_TotalLike] [int] NULL,
	[Game_State] [bit] NULL,
	[Game_StatePrice] [bit] NULL,
	[Game_LastEdit] [datetime] NULL,
 CONSTRAINT [PK_Game] PRIMARY KEY CLUSTERED 
(
	[Game_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Game] ON
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (1, NULL, N'Caro', NULL, N'Caro.swf', N'Trò chơi Caro', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 100, 14, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (2, NULL, N'Boom', NULL, N'boom.swf', N'Trò Chơi Boom', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 49, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (3, NULL, N'Boom Online', NULL, N'Boom offline - Boom online - Chơi game Boom - Gamedangianviet.com.swf', N'Trò Chơi Boom', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 100, 62, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (4, NULL, N'Cờ Vua', NULL, N'Chơi game Cờ Vua - Gamedangianviet.com.swf', N'Trò Chơi Cờ Vua', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 22, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (5, NULL, N'Cuộc Hành Trình Của Penny', NULL, N'Chơi game Cuộc hành trình của Penny – Game y8 miễn phí.swf', N'Trò chơi Cuộc Hành Trình Của Penny', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 100, 13, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (6, NULL, N'Dẫn Nước Tưới Hoa', NULL, N'Chơi game dẫn nước tưới hoa - Gamedangianviet.com.swf', N'Trò Chơi Dẫn Nước Tưới Hoa', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 0, 16, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (7, NULL, N'PiKaChu', NULL, N'Chơi game Pikachu phiêu lưu - Gamedangianviet.com.swf', N'Trò Chơi PikaChu', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 100, 14, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (8, NULL, N'Sudoku', NULL, N'Chơi game Sudoku - Gamedangianviet.com.swf', N'Trò Chơi Sudoku', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 18, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (9, NULL, N'Trở Lên To Lớn', NULL, N'Chơi game Trở lên to lớn – Game y8 miễn phí.swf', N'Trò Chơi Trở Lên To Lớn', NULL, NULL, CAST(0x0000A39400000000 AS DateTime), 1, 100, 17, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (10, NULL, N'Cờ Caro', NULL, N'Cờ caro - Game Flash - Chơi Game Flash online - Trò chơi trực tuyến với game flash.swf', N'Cờ Caro', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 50, 2, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (11, NULL, N'Angry Birds', NULL, N'Chơi game AngryBirds - Thử tài thiện xạ.swf', N'Trò chơi Angry Birds', 50000, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 100, 72, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (12, NULL, N'Boom', NULL, N'Game Bom It 3 - Chơi Game Boom it 3, trò chơi được nhiều người thích!.swf', N'Trò chơi Boom', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 50, 1, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (13, NULL, N'Chém Hoa Quả', NULL, N'Game Chém Hoa Quả - Chơi game Chém Hoa Quả miễn phí.swf', N'trò chơi chém hoa quả', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 100, 3, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (14, NULL, N'Cô Bé đưa thư', NULL, N'Game Cô bé đưa thư - Tro choi Cô bé đưa thư online - TrochoiViet.com.swf', N'trò chơi cô bé đưa thư', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 50, 1, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (15, NULL, N'Cuộc Chiến xuyên thế kỉ', NULL, N'Game Cuộc chiến xuyên thế kỷ cực kỳ gay cấn, kích thích. Nhào zô và trải nghiệm !!!!.swf', N'cuộc chiến xuyên thế kỉ', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 100, 1, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (16, NULL, N'Đào vàng', NULL, N'Game Đào vàng - Tro choi Đào vàng online - TrochoiViet.com.swf', N'đào vàng', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 50, 1, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_MaxMark], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (17, NULL, N'Đập chuột', NULL, N'Game Đập chuột chũi - Tro choi Đập chuột chũi online - TrochoiViet.com.swf', N'đập chuôt', NULL, NULL, CAST(0x0000A3A100000000 AS DateTime), 1, 100, 1, NULL, 1, 1, CAST(0x0000A3A100000000 AS DateTime))
SET IDENTITY_INSERT [dbo].[Game] OFF
/****** Object:  Table [dbo].[Friends]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Friends](
	[Friends_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Friend_ID] [int] NOT NULL,
	[Friends_Status] [bit] NULL,
	[Friends_Date] [datetime] NULL,
 CONSTRAINT [PK_Friends] PRIMARY KEY CLUSTERED 
(
	[Friends_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[CheckPass]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[CheckPass]
(
	@User_ID int,
	@User_PassWord nvarchar(MAX)
)
as
begin
	select * from Users where USER_ID=@User_ID and User_PassWord=@User_PassWord
end
GO
/****** Object:  StoredProcedure [dbo].[Change_passByUserNameAndEmail]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Change_passByUserNameAndEmail]
(
	@User_UserName nvarchar(MAX),
	@User_Email nvarchar(MAX),
	@User_PassWord nvarchar(MAX)
)
as
begin
	Update Users
	set
	 User_PassWord = @User_PassWord
	where User_UserName =@User_UserName and User_Email=@User_Email
end
GO
/****** Object:  StoredProcedure [dbo].[Change_pass]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Change_pass]
(
	@User_ID int,
	@User_PassWord nvarchar(MAX)
)
as
begin
	Update Users
	set
	 User_PassWord = @User_PassWord
	where USER_ID=@User_ID
end
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
CREATE PROCEDURE [dbo].[Users_SelectByID]
@User_ID Int
as
SELECT     dbo.Users.*, dbo.User_Type.User_NameType, dbo.User_Rank.User_RankName
FROM         dbo.Users INNER JOIN
                      dbo.User_Type ON dbo.Users.User_TypeID = dbo.User_Type.User_TypeID INNER JOIN
                      dbo.User_Rank ON dbo.Users.User_RankID = dbo.User_Rank.User_RankID
 Where  ([User_ID]= @User_ID)
GO
/****** Object:  StoredProcedure [dbo].[Users_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Users_SelectAll]
as
SELECT     dbo.Users.*, dbo.User_Type.User_NameType
FROM         dbo.Users INNER JOIN
                      dbo.User_Type ON dbo.Users.User_TypeID = dbo.User_Type.User_TypeID
GO
/****** Object:  StoredProcedure [dbo].[Users_KiemtraUser_Name]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Users_KiemtraUser_Name]
@User_UserName nvarchar(50)
as
Select * from Users
 Where  User_UserName= @User_UserName
GO
/****** Object:  StoredProcedure [dbo].[Users_KiemtraEmailbyUser]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Users_KiemtraEmailbyUser]
(
	@User_UserName nvarchar(50),
	@User_Email nvarchar(50)
)
as
Select * from Users
 Where  Users.User_Email=@User_Email and Users.User_UserName=@User_UserName
GO
/****** Object:  StoredProcedure [dbo].[Users_KiemtraEmail]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Users_KiemtraEmail]
@User_Email nvarchar(50)
as
Select * from Users
 Where  Users.User_Email=@User_Email
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert2]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE  PROC [dbo].[Users_Insert2]
(
	@User_FullName nvarchar(MAX),
	@User_Birthday date,
	@User_Gender int,
    @User_UserName nvarchar(MAX),
    @User_PassWord nvarchar(MAX),
    @User_Address nvarchar(MAX)
)
as
begin
	INSERT INTO [BEC].[dbo].[Users]
           (
				User_TypeID,
				User_RankID,
				User_FullName,
				User_Birthday,
				User_Gender,
				User_UserName,
				User_PassWord,
				User_Address,
				User_RegisterTime,
				User_Gold,
				User_Money,
				User_Gift,
				User_Active,
				User_Status,
				User_LastLogin,
				User_HoanThanhDK
           )
	VALUES(3,1,@User_FullName,@User_Birthday,@User_Gender,@User_UserName,@User_PassWord,@User_Address,GETDATE(),10000,0,NULL,NULL,1,GETDATE(),0)
end
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert1]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_Insert1]
(
	@User_FullName nvarchar(MAX),
	@User_Birthday date,
	@User_Gender int,
    @User_UserName nvarchar(MAX),
    @User_PassWord nvarchar(MAX),
    @User_Address nvarchar(MAX),
    @User_Email nvarchar(MAX),
    @User_Phone nvarchar(50)
)
as
begin
	INSERT INTO [BEC].[dbo].[Users]
           (
				User_TypeID,
				User_RankID,
				User_FullName,
				User_Birthday,
				User_Gender,
				User_UserName,
				User_PassWord,
				User_Address,
				User_Email,
				User_Phone,
				User_RegisterTime,
				User_Gold,
				User_Money,
				User_Gift,
				User_Active,
				User_Status,
				User_LastLogin
           )
	VALUES(3,1,@User_FullName,@User_Birthday,@User_Gender,@User_UserName,@User_PassWord,@User_Address,@User_Email,@User_Phone,GETDATE(),1000,0,NULL,NULL,1,GETDATE())
end
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_Insert]
(
	@User_TypeID int,
	@User_RankID int,
	@User_FullName nvarchar(MAX),
	@User_Birthday date,
	@User_Gender int,
    @User_UserName nvarchar(MAX),
    @User_PassWord nvarchar(MAX),
    @User_Address nvarchar(MAX),
	@User_Xa nvarchar(MAX),
    @User_Phuong nvarchar(MAX),
    @User_ThanhPho nvarchar(MAX),
    @User_Truong nvarchar(MAX),
    @User_Lop nvarchar(MAX),
    @User_Email nvarchar(MAX),
    @User_Phone nvarchar(50),
    @User_Image nvarchar(50),
    @User_RegisterTime datetime,
    @User_Gold int,
    @User_Money int,
    @User_Gift nchar(10),
    @User_Active nvarchar(100),
    @User_Status bit,
    @User_LastEdit date
)
as
begin
	INSERT INTO [BEC].[dbo].[Users]
           (
			User_TypeID,
			User_RankID,
            User_FullName,
			User_Birthday,
			User_Gender,
           User_UserName,
           User_PassWord,
           User_Address,
           User_Xa,
           User_Phuong,
           User_ThanhPho,
           User_Truong,
           User_Lop,
           User_Email,
           User_Phone,
           User_Image,
           User_RegisterTime,
           User_Gold,
           User_Money,
           User_Gift,
           User_Active,
           User_Status,
           User_LastEdit
           )
	VALUES(@User_TypeID,@User_RankID,@User_FullName,@User_Birthday,@User_Gender,@User_UserName,@User_PassWord,@User_Address,@User_Xa,@User_Phuong,@User_ThanhPho,@User_Truong,@User_Lop,@User_Email,@User_Phone,@User_Image,@User_RegisterTime,@User_Gold,@User_Money,@User_Gift,@User_Active,@User_Status,@User_LastEdit)
end
GO
/****** Object:  StoredProcedure [dbo].[Users_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Users_Delete]
@User_ID Int
as
Delete Users
 Where  ([User_ID]= @User_ID)
GO
/****** Object:  StoredProcedure [dbo].[Users_DangNhap]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Users_DangNhap]
@User_UserName nvarchar(50),
@User_PassWord nvarchar(50)
as
Select * from Users
 Where  (User_UserName= @User_UserName and User_PassWord = @User_PassWord)
GO
/****** Object:  StoredProcedure [dbo].[Users_ChangeAvt]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_ChangeAvt]
(
	@User_ID int,
	@User_Image nvarchar(50)
)
AS
Begin
	Update Users
	Set 
		User_Image = @User_Image where USER_ID = @User_ID
end
GO
/****** Object:  StoredProcedure [dbo].[Users_AddGold1]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Users_AddGold1]
@User_ID int,
@Game_ID int
AS
BEGIN
	declare @gold int,@price int
	set @gold = (select User_Gold from Users where User_ID= @User_ID)
	set @price = (select Game_Price From Game where Game_ID=@Game_ID)
	UPDATE Users
	SET User_Gold = @gold + @price
	where User_ID= @User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Users_AddGold]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_AddGold]
@User_ID int,
@Game_ID int
AS
BEGIN
	declare @gold int,@price int
	set @gold = (select User_Gold from Users where User_ID= @User_ID)
	set @price = (select Game_Price From Game where Game_ID=@Game_ID)
	UPDATE Users
	SET User_Gold = @gold + @price + @price + @price +@price
	where User_ID= @User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[UpdateViewGame]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateViewGame]
@ID int
AS
BEGIN
	declare @Totalview int
	set @Totalview = (SELECT Game.Game_TotalView FROM Game WHERE Game.Game_ID=@ID)
	UPDATE Game 
	SET Game_TotalView = @Totalview +1
	where
	Game.Game_ID=@ID
END
GO
/****** Object:  StoredProcedure [dbo].[Catalog_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Catalog_SelectByID]
@Catalog_ID Int
as
Select * from Catalog
 Where  ([Catalog_ID]= @Catalog_ID)
GO
/****** Object:  StoredProcedure [dbo].[Catalog_SelectAll_Child]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Catalog_SelectAll_Child]
@Catalog_ID int
as
Select * from Catalog
WHERE Catalog.Catalog_Super = @Catalog_ID
GO
/****** Object:  StoredProcedure [dbo].[Catalog_SelectAll_And_Child]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Catalog_SelectAll_And_Child]
as
SELECT a.Catalog_ID, a.Catalog_Name,b.Catalog_Name as Catalog_Parent
FROM Catalog a LEFT OUTER JOIN Catalog b ON b.Catalog_ID = a.Catalog_Super
GO
/****** Object:  StoredProcedure [dbo].[Catalog_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
CREATE PROCEDURE [dbo].[Catalog_SelectAll]
as
Select * from Catalog
WHERE Catalog.Catalog_Super IS NULL
GO
/****** Object:  StoredProcedure [dbo].[Catalog_GetDetail]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROCEDURE [dbo].[Catalog_GetDetail]
@Catalog_ID int
AS
BEGIN
	select * from Catalog where Catalog_ID= @Catalog_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Catalog_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Catalog_Delete]
@Catalog_ID Int
as
Delete Catalog
 Where  ([Catalog_ID]= @Catalog_ID)
GO
/****** Object:  Table [dbo].[Blog_Comment]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Blog_Comment](
	[Comment_ID] [int] NOT NULL,
	[Status_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[Comment_Content] [nvarchar](max) NOT NULL,
	[Comment_CreateDate] [date] NOT NULL,
	[Comment_TotalLike] [int] NULL,
 CONSTRAINT [PK_Blog_Comment_1] PRIMARY KEY CLUSTERED 
(
	[Comment_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Blog_Comment] ([Comment_ID], [Status_ID], [User_ID], [Comment_Content], [Comment_CreateDate], [Comment_TotalLike]) VALUES (1, 1, 2, N'Trịnh Thái Sơn', CAST(0xEA380B00 AS Date), 11)
/****** Object:  StoredProcedure [dbo].[Album_kiemtratrung]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Album_kiemtratrung]
(
	@User_ID int,
	@FileName nvarchar(MAX) 
)
AS
Begin 
	Select * from Album where USER_ID=@User_ID and Album.FileName=@FileName
End
GO
/****** Object:  StoredProcedure [dbo].[Album_Insert]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Album_Insert]
(
	@User_ID int,
	@FileName nvarchar(MAX) 
)
AS
Begin 
	Insert into Album 
	Values(@User_ID,@FileName,GETDATE())
	Update Users set User_Image=@FileName where USER_ID = @User_ID
End
GO
/****** Object:  StoredProcedure [dbo].[Album_GetDataByUser]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Album_GetDataByUser]
(
	@User_ID int
)
As
begin
	Select * from Album where USER_ID=@User_ID
end
GO
/****** Object:  Table [dbo].[Story]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story](
	[Story_ID] [int] IDENTITY(1,1) NOT NULL,
	[Catalog_ID] [int] NOT NULL,
	[Story_Name] [nvarchar](max) NOT NULL,
	[Story_Catalog] [nvarchar](max) NOT NULL,
	[Story_SoundTrack] [nvarchar](max) NULL,
	[Story_Status] [nvarchar](max) NOT NULL,
	[Story_TimeUp] [datetime] NOT NULL,
	[Story_Creater] [int] NULL,
	[Story_Price] [int] NOT NULL,
	[Story_TotalView] [int] NULL,
	[Story_State] [bit] NULL,
	[Story_StatePrice] [bit] NULL,
	[Story_LastEdit] [datetime] NULL,
 CONSTRAINT [PK_Story] PRIMARY KEY CLUSTERED 
(
	[Story_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Story] ON
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (1, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A3AA00000000 AS DateTime), 1, 0, 34, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (5, 2, N'Chú Vịt Xám', N'bia vit xam.jpg', N'Hopeful.mp3', N'Chú Vịt Xám', CAST(0x0000A38A00000000 AS DateTime), 1, 50, 12, 1, 0, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (7, 3, N'Lừa Đội Lốt Sư Tử', N'bia lua doi lot su tu.jpg', N'LuaDoilotsutusoundTrack.mp3', N'Lừa Đội Lốt Sư Tử', CAST(0x0000A38C00000000 AS DateTime), 1, 50, 13, 1, 1, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (9, 3, N'Lừa Đội Lốt Sư Tử 1', N'bia lua doi lot su tu.jpg', N'LuaDoilotsutusoundTrack.mp3', N'Lừa Đội Lốt Sư Tử', CAST(0x0000A38C00000000 AS DateTime), 1, 50, 29, 1, 1, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (10, 2, N'Chú Vịt Xám 1', N'bia vit xam.jpg', N'Hopeful.mp3', N'Chú Vịt Xám', CAST(0x0000A38A00000000 AS DateTime), 1, 50, 3, 1, 0, CAST(0x0000A39B0100FF68 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (12, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (13, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (14, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (15, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (16, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 26, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (17, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (18, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (19, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (20, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 25, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (21, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 50, 26, 1, 0, CAST(0x0000A39D00F74658 AS DateTime))
SET IDENTITY_INSERT [dbo].[Story] OFF
/****** Object:  Table [dbo].[Game_player]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game_player](
	[Gamer_ID] [int] IDENTITY(1,1) NOT NULL,
	[Game_ID] [int] NULL,
	[User_ID] [int] NULL,
	[Mark] [int] NULL,
	[Like] [bit] NULL,
	[View_Time] [datetime] NULL,
 CONSTRAINT [PK_Game_player] PRIMARY KEY CLUSTERED 
(
	[Gamer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Game_player] ON
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (1, 1, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (2, 2, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (3, 3, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (4, 4, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (5, 5, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (6, 6, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (7, 7, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (8, 8, 1, NULL, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (9, 2, 2, NULL, NULL, CAST(0x0000A39E00DDC652 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (12, 3, 2, NULL, NULL, CAST(0x0000A3A000977661 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (13, 5, 2, NULL, NULL, CAST(0x0000A3A0018063C6 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (14, 3, 11, NULL, NULL, CAST(0x0000A3A80186604F AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (15, 11, 1, 92000, NULL, CAST(0x0000A3A9016768E9 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (16, 11, 2, 52000, NULL, CAST(0x0000A3A9016768E9 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (17, 11, 3, 100000, NULL, CAST(0x0000A3A9016768E9 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (18, 11, 9, 62000, NULL, CAST(0x0000A3A9016768E9 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (19, 11, 10, 12000, NULL, CAST(0x0000A3A9016768E9 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (20, 11, 11, 32000, NULL, CAST(0x0000A3A9016768E9 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [Like], [View_Time]) VALUES (21, 11, 12, NULL, NULL, CAST(0x0000A3B000CCE681 AS DateTime))
SET IDENTITY_INSERT [dbo].[Game_player] OFF
/****** Object:  StoredProcedure [dbo].[Game_New]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Game_New]
as
Begin
	Select * From Game 
	Order by Game.Game_TimeUp DESC
End
GO
/****** Object:  StoredProcedure [dbo].[Game_Hot]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Game_Hot]
as
Begin
	Select * From Game 
	Order by Game.Game_TotalView DESC
End
GO
/****** Object:  StoredProcedure [dbo].[Game_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Game_SelectByID]
@ID int
AS
BEGIN
	SELECT     dbo.Game.*, dbo.Users.User_FullName
FROM         dbo.Game INNER JOIN
                      dbo.Users ON dbo.Game.Game_UserCreater = dbo.Users.User_ID
                      where Game.Game_ID = @ID
END
GO
/****** Object:  StoredProcedure [dbo].[KiemTraAvt]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[KiemTraAvt]
(
	@User_ID int,
	@FileName nvarchar(MAX) 
)
AS
Begin 
	select * from Album where User_ID=@User_ID and FileName = @FileName
End
GO
/****** Object:  StoredProcedure [dbo].[Users_SubGoldGames]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_SubGoldGames]
@User_ID int,
@Game_ID int
AS
BEGIN
	declare @gold int,@price int
	set @gold = (select User_Gold from Users where User_ID= @User_ID)
	set @price = (select Game_Price From Game where Game_ID=@Game_ID)
	UPDATE Users
	SET User_Gold = @gold - @price
	where User_ID= @User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Users_SubGold]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Users_SubGold]
@User_ID int,
@Story_ID int
AS
BEGIN
	declare @gold int,@price int
	set @gold = (select User_Gold from Users where User_ID= @User_ID)
	set @price = (select Story_Price From Story where Story_ID=@Story_ID)
	UPDATE Users
	SET User_Gold = @gold - @price
	where User_ID= @User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Gamer_Xephang]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Gamer_Xephang]
(
	@Game_ID int
)
AS
Begin
SELECT  top 10   dbo.Users.User_FullName, dbo.Game_player.Mark
FROM         dbo.Game_player INNER JOIN
                      dbo.Users ON dbo.Game_player.User_ID = dbo.Users.User_ID
WHERE Game_player.Game_ID=@Game_ID
order by Mark desc 
 END
GO
/****** Object:  StoredProcedure [dbo].[gamer_view]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[gamer_view]
(@User_ID int)
AS
BEGIN
SELECT     dbo.Game_player.*, dbo.Game.*
FROM         dbo.Game_player INNER JOIN
                      dbo.Game ON dbo.Game_player.Game_ID = dbo.Game.Game_ID
                      WHERE Game_player.User_ID= @User_ID
                      order by dbo.Game_player.View_Time Desc
 END
GO
/****** Object:  StoredProcedure [dbo].[Game_Player_UpdateMark]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Game_Player_UpdateMark]
(
	@Game_ID int,
	@User_ID int,
	@Mark int
)
AS
Begin
	declare @diem int
	Set @diem = (select Game_player.Mark From Game_player where Game_ID=@Game_ID and USER_ID=@User_ID)
	if(@Mark>@diem)
	begin
		Update Game_player
		Set
			Mark = @Mark
		where Game_ID=@Game_ID and USER_ID=@User_ID 
	end
end
GO
/****** Object:  StoredProcedure [dbo].[Game_Player_Kiemtratrung]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Game_Player_Kiemtratrung]
(
	@Game_ID int,
	@User_ID int
	
)
As
BEGIN
	Select * From Game_player where Game_ID = @Game_ID and USER_ID=@User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Game_Player_Insert]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Game_Player_Insert]
(
	@Game_ID int,
	@User_ID int
	
)
As
BEGIN
	INSERT INTO Game_player(Game_ID,User_ID,View_Time)
	VALUES(@Game_ID,@User_ID,GETDATE())
END
GO
/****** Object:  Table [dbo].[Story_Page]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story_Page](
	[Page_ID] [int] IDENTITY(1,1) NOT NULL,
	[Story_ID] [int] NOT NULL,
	[Page_ImagePath] [nvarchar](max) NOT NULL,
	[Page_Audio] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Story_Page] PRIMARY KEY CLUSTERED 
(
	[Page_ID] ASC,
	[Story_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Story_Page] ON
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (1, 1, N'edison1.jpg', N'trang1.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (2, 1, N'edison2.jpg', N'trang2.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (3, 1, N'edison3.jpg', N'trang3.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (4, 1, N'edison4.jpg', N'trang4.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (5, 1, N'edison5.jpg', N'trang5.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (6, 1, N'edison6.jpg', N'trang6.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (7, 1, N'edison7.jpg', N'trang7.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (8, 1, N'edison8.jpg', N'trang8.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (9, 5, N'vitxam1.jpg', N'vit xam 1.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (10, 5, N'vitxam2.jpg', N'vit xam 2.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (11, 5, N'vitxam3.jpg', N'vit xam 3.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (12, 5, N'vitxam4.jpg', N'vit xam 4.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (13, 5, N'vitxam5.jpg', N'vit xam 5.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (14, 5, N'vitxam6.jpg', N'vit xam 6.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (15, 5, N'vitxam7.jpg', N'vit xam 7.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (16, 5, N'vitxam8.jpg', N'vit xam 8.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (17, 5, N'vitxam9.jpg', N'vit xam 9.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (18, 5, N'vitxam10.jpg', N'vit xam 10.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (19, 7, N'luadoilotsutu1.jpg', N'LuaDoilotsutu 1.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (20, 7, N'luadoilotsutu2.jpg', N'LuaDoilotsutu 2.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (21, 7, N'luadoilotsutu3.jpg', N'LuaDoilotsutu 3.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (22, 7, N'luadoilotsutu4.jpg', N'LuaDoilotsutu 4.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (23, 7, N'luadoilotsutu5.jpg', N'LuaDoilotsutu 5.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (24, 7, N'luadoilotsutu6.jpg', N'LuaDoilotsutu 6.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (25, 7, N'luadoilotsutu7.jpg', N'LuaDoilotsutu 7.mp3')
INSERT [dbo].[Story_Page] ([Page_ID], [Story_ID], [Page_ImagePath], [Page_Audio]) VALUES (26, 7, N'luadoilotsutu8.jpg', N'LuaDoilotsutu 8.mp3')
SET IDENTITY_INSERT [dbo].[Story_Page] OFF
/****** Object:  StoredProcedure [dbo].[Story_New]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Story_New]
as
begin
SELECT top 10 * From Story 
WHERE Story.Story_State = 1
order by Story.Story_TimeUp DESC
end
GO
/****** Object:  StoredProcedure [dbo].[Story_Insert]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[Story_Insert]
(
           @Catalog_ID int,
           @Story_Name nvarchar(max),
           @Story_Catalog nvarchar(max),
           @Story_SoundTrack nvarchar(max),
           @Story_Status nvarchar(max),
           @Story_TimeUp datetime,
           @Story_Creater int,
           @Story_Price int,
           @Story_TotalView int,
           @Story_State bit,
           @Story_StatePrice bit,
           @Story_LastEdit datetime
)
AS
BEGIN

INSERT INTO [BEC].[dbo].[Story]
           (
            [Catalog_ID]
           ,[Story_Name]
           ,[Story_Catalog]
           ,[Story_SoundTrack]
           ,[Story_Status]
           ,[Story_TimeUp]
           ,[Story_Creater]
           ,[Story_Price]
           ,[Story_TotalView]
           ,[Story_State]
           ,[Story_StatePrice]
           ,[Story_LastEdit])
     VALUES
     (
		   @Catalog_ID,       
           @Story_Name,
           @Story_Catalog,
           @Story_SoundTrack ,
           @Story_Status ,
           @Story_TimeUp ,
           @Story_Creater ,
           @Story_Price ,
           @Story_TotalView ,
           @Story_State ,
           @Story_StatePrice ,
           @Story_LastEdit 
     )
     declare @ID AS INT
     SET @ID = SCOPE_IDENTITY()
END
GO
/****** Object:  StoredProcedure [dbo].[Story_GetAllByCatalogID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Story_GetAllByCatalogID]
	(
@Catalog_ID int
)
AS
BEGIN
	Select * From Story
where Story.Catalog_ID=@Catalog_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Story_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_Delete]
@Story_ID Int
as
Delete Story
 Where  ([Story_ID]= @Story_ID)
GO
/****** Object:  Table [dbo].[Story_View]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story_View](
	[Story_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[View] [int] NULL,
	[Like] [int] NULL,
	[View_Time] [datetime] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (1, 1, 0, 0, CAST(0x0000A38A00000000 AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (1, 2, NULL, NULL, CAST(0x0000A3A001829EBD AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (5, 1, 0, 0, CAST(0x0000A38A00000000 AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (7, 1, 0, 0, CAST(0x0000A38C00000000 AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (7, 2, NULL, NULL, CAST(0x0000A3A3009E8CAF AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (10, 2, NULL, NULL, CAST(0x0000A3A3009ECBA9 AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (9, 1, NULL, NULL, CAST(0x0000A3A4016F098C AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (9, 11, NULL, NULL, CAST(0x0000A3A8017CA71D AS DateTime))
/****** Object:  StoredProcedure [dbo].[Story_TopRead]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Story_TopRead]
as
begin
SELECT top 10 * From Story 
WHERE Story.Story_State = 1
order by Story.Story_TotalView DESC
end
GO
/****** Object:  StoredProcedure [dbo].[Story_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_SelectByID]
@Story_ID Int
as
Select * from Story
 Where  ([Story_ID]= @Story_ID)
GO
/****** Object:  StoredProcedure [dbo].[Story_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
CREATE PROCEDURE [dbo].[Story_SelectAll]
as
SELECT     dbo.Story.Story_ID, dbo.Catalog.Catalog_Name, dbo.Story.Story_Name, dbo.Story.Story_Catalog, dbo.Story.Story_SoundTrack, dbo.Story.Story_Status, 
                      dbo.Story.Story_TimeUp, dbo.Story.Story_Price, dbo.Story.Story_TotalView, dbo.Story.Story_State, dbo.Story.Story_StatePrice, dbo.Story.Story_LastEdit, 
                      dbo.Users.User_FullName
FROM         dbo.Story INNER JOIN
                      dbo.Catalog ON dbo.Story.Catalog_ID = dbo.Catalog.Catalog_ID INNER JOIN
                      dbo.Users ON dbo.Story.Story_Creater = dbo.Users.User_ID
GO
/****** Object:  StoredProcedure [dbo].[UpdateView]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[UpdateView]
@Story_ID int
AS
BEGIN
	declare @Totalview int
	set @Totalview = (SELECT Story.Story_TotalView FROM Story WHERE Story.Story_ID=@Story_ID)
	UPDATE Story 
	SET Story_TotalView = @Totalview +1
	where
	Story.Story_ID=@Story_ID
END
GO
/****** Object:  StoredProcedure [dbo].[User_ReadStory]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[User_ReadStory]
@User_ID int
AS
BEGIN
SELECT     dbo.Story_View.View_Time, dbo.Story_View.User_ID, dbo.Story.Story_ID, dbo.Story.Catalog_ID, dbo.Story.Story_Name, dbo.Story.Story_Catalog, dbo.Story.Story_Status, 
                      dbo.Story.Story_TotalView
FROM         dbo.Story INNER JOIN
                      dbo.Story_View ON dbo.Story.Story_ID = dbo.Story_View.Story_ID
WHERE Story_View.User_ID= @User_ID and Story.Story_State='1'
order by dbo.Story_View.View_Time Desc
END
GO
/****** Object:  StoredProcedure [dbo].[Story_View_Update]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_View_Update]
@Story_ID Int,
@User_ID Int,
@View Int,
@Like Int,
@View_Time DateTime
as
Update Story_View Set
 [View]= @View,[Like]= @Like,[View_Time]= @View_Time
 Where ([Story_ID]= @Story_ID) and([User_ID]= @User_ID)
GO
/****** Object:  StoredProcedure [dbo].[Story_View_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_View_SelectByID]
@Story_ID Int,
@User_ID Int
as
Select * from Story_View
 Where  ([Story_ID]= @Story_ID) and ([User_ID]= @User_ID)
GO
/****** Object:  StoredProcedure [dbo].[Story_View_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_View_SelectAll]
as
Select * from Story_View
GO
/****** Object:  StoredProcedure [dbo].[Story_View_Kiemtratrung]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create PROC [dbo].[Story_View_Kiemtratrung]
(
	@Story_ID int,
	@User_ID int
	
)
As
BEGIN
	Select * From Story_View where Story_ID = @Story_ID and USER_ID=@User_ID
END
GO
/****** Object:  StoredProcedure [dbo].[Story_View_Insert]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Story_View_Insert]
(
	@Story_ID int,
	@User_ID int
	
)
As
BEGIN
	INSERT INTO Story_View(Story_ID,User_ID,View_Time)
	VALUES(@Story_ID,@User_ID,GETDATE())
END
GO
/****** Object:  StoredProcedure [dbo].[Story_View_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_View_Delete]
@Story_ID Int,
@User_ID Int
as
Delete Story_View
 Where  ([Story_ID]= @Story_ID) and ([User_ID]= @User_ID)
GO
/****** Object:  StoredProcedure [dbo].[Story_Page_SelectByID]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_Page_SelectByID]
@Page_ID Int
as
Select * from Story_Page
 Where  ([Page_ID]= @Page_ID)
GO
/****** Object:  StoredProcedure [dbo].[Story_Page_SelectAll]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_Page_SelectAll]
as
Select * from Story_Page
GO
/****** Object:  StoredProcedure [dbo].[Story_Page_Delete]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Story_Page_Delete]
@Page_ID Int
as
Delete Story_Page
 Where  ([Page_ID]= @Page_ID)
GO
/****** Object:  StoredProcedure [dbo].[Read_Story]    Script Date: 09/30/2014 22:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROC [dbo].[Read_Story]
@Story_ID int
as
begin
SELECT     dbo.Story_Page.*, dbo.Story.Story_Catalog
FROM         dbo.Story INNER JOIN
                      dbo.Catalog ON dbo.Story.Catalog_ID = dbo.Catalog.Catalog_ID INNER JOIN
                      dbo.Story_Page ON dbo.Story.Story_ID = dbo.Story_Page.Story_ID INNER JOIN
                      dbo.Story_View ON dbo.Story.Story_ID = dbo.Story_View.Story_ID
where Story_Page.Story_ID = @Story_ID
end
GO
/****** Object:  ForeignKey [FK_Users_User_Rank]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_User_Rank] FOREIGN KEY([User_RankID])
REFERENCES [dbo].[User_Rank] ([User_RankID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_User_Rank]
GO
/****** Object:  ForeignKey [FK_Users_User_Type]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_User_Type] FOREIGN KEY([User_TypeID])
REFERENCES [dbo].[User_Type] ([User_TypeID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_User_Type]
GO
/****** Object:  ForeignKey [FK_Album_Users]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Album]  WITH CHECK ADD  CONSTRAINT [FK_Album_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Album] CHECK CONSTRAINT [FK_Album_Users]
GO
/****** Object:  ForeignKey [FK_Catalog_Users]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_Users]
GO
/****** Object:  ForeignKey [FK_Blog_Status_Users1]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Blog_Status]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Status_Users1] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Blog_Status] CHECK CONSTRAINT [FK_Blog_Status_Users1]
GO
/****** Object:  ForeignKey [FK_Game_Users1]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Users1] FOREIGN KEY([Game_UserCreater])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Users1]
GO
/****** Object:  ForeignKey [FK_Friends_Users]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Users]
GO
/****** Object:  ForeignKey [FK_Friends_Users1]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Friends]  WITH CHECK ADD  CONSTRAINT [FK_Friends_Users1] FOREIGN KEY([Friend_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Friends] CHECK CONSTRAINT [FK_Friends_Users1]
GO
/****** Object:  ForeignKey [FK_Blog_Comment_Blog_Status]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Blog_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Comment_Blog_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Blog_Status] ([Status_ID])
GO
ALTER TABLE [dbo].[Blog_Comment] CHECK CONSTRAINT [FK_Blog_Comment_Blog_Status]
GO
/****** Object:  ForeignKey [FK_Blog_Comment_Users]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Blog_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Comment_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Blog_Comment] CHECK CONSTRAINT [FK_Blog_Comment_Users]
GO
/****** Object:  ForeignKey [FK_Story_Catalog]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Catalog] FOREIGN KEY([Catalog_ID])
REFERENCES [dbo].[Catalog] ([Catalog_ID])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Catalog]
GO
/****** Object:  ForeignKey [FK_Story_Users1]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Users1] FOREIGN KEY([Story_Creater])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Users1]
GO
/****** Object:  ForeignKey [FK_Game_player_Game]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Game_player]  WITH CHECK ADD  CONSTRAINT [FK_Game_player_Game] FOREIGN KEY([Game_ID])
REFERENCES [dbo].[Game] ([Game_ID])
GO
ALTER TABLE [dbo].[Game_player] CHECK CONSTRAINT [FK_Game_player_Game]
GO
/****** Object:  ForeignKey [FK_Game_player_Users1]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Game_player]  WITH CHECK ADD  CONSTRAINT [FK_Game_player_Users1] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Game_player] CHECK CONSTRAINT [FK_Game_player_Users1]
GO
/****** Object:  ForeignKey [FK_Story_Page_Story1]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Story_Page]  WITH CHECK ADD  CONSTRAINT [FK_Story_Page_Story1] FOREIGN KEY([Story_ID])
REFERENCES [dbo].[Story] ([Story_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Story_Page] CHECK CONSTRAINT [FK_Story_Page_Story1]
GO
/****** Object:  ForeignKey [FK_Story_View_Story]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Story_View]  WITH CHECK ADD  CONSTRAINT [FK_Story_View_Story] FOREIGN KEY([Story_ID])
REFERENCES [dbo].[Story] ([Story_ID])
GO
ALTER TABLE [dbo].[Story_View] CHECK CONSTRAINT [FK_Story_View_Story]
GO
/****** Object:  ForeignKey [FK_Story_View_Users]    Script Date: 09/30/2014 22:01:54 ******/
ALTER TABLE [dbo].[Story_View]  WITH CHECK ADD  CONSTRAINT [FK_Story_View_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Story_View] CHECK CONSTRAINT [FK_Story_View_Users]
GO
Create Trigger [dbo].[Ranks]
on [dbo].[Users]
After Update,insert
as
begin 
	declare @gold int,@User_ID int
	set @User_ID = (Select inserted.User_ID from inserted)
	set @gold = (select User_Gold from inserted where USER_ID= @User_ID)
	if(@gold<=5000)
	update Users set Users.User_RankID=1 where USER_ID= @User_ID
	else
		if(@gold>5000 and @gold<=10000)
			update Users set Users.User_RankID=2 where USER_ID= @User_ID
		else
			if(@gold>10000 and @gold<=20000)
				update Users set Users.User_RankID=3 where USER_ID= @User_ID
			else
				if(@gold>20000 and @gold<=40000)
					update Users set Users.User_RankID=4 where USER_ID= @User_ID
				else
					if(@gold>40000)
						update Users set Users.User_RankID=5 where USER_ID= @User_ID
end