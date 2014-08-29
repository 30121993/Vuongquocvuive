USE [master]
GO
/****** Object:  Database [BEC]    Script Date: 08/29/2014 19:18:37 ******/
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
/****** Object:  Table [dbo].[User_Type]    Script Date: 08/29/2014 19:18:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Type](
	[User_TypeID] [int] NOT NULL,
	[User_NameType] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_User_Type] PRIMARY KEY CLUSTERED 
(
	[User_TypeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[User_Type] ([User_TypeID], [User_NameType]) VALUES (1, N'Super Admin')
INSERT [dbo].[User_Type] ([User_TypeID], [User_NameType]) VALUES (2, N'Admin')
INSERT [dbo].[User_Type] ([User_TypeID], [User_NameType]) VALUES (3, N'Khachhang')
/****** Object:  Table [dbo].[Catalog]    Script Date: 08/29/2014 19:18:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Catalog](
	[Catalog_ID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[Catalog_Name] [nvarchar](max) NOT NULL,
	[Catalog_Super] [int] NULL,
 CONSTRAINT [PK_Catalog] PRIMARY KEY CLUSTERED 
(
	[Catalog_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Catalog] ON
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (1, N'Truyện Cổ Tích', NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (2, N'Truyện Ngụ Ngôn', NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (3, N'Truyện Cười', NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (4, N'Truyện Danh Nhân', NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (5, N'Mẹ Kể Con Nghe', NULL)
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (6, N'Cổ Tích Việt Nam', 1)
INSERT [dbo].[Catalog] ([Catalog_ID], [Catalog_Name], [Catalog_Super]) VALUES (7, N'Cổ Tích Nước Ngoài', 1)
SET IDENTITY_INSERT [dbo].[Catalog] OFF
/****** Object:  Table [dbo].[User_Rank]    Script Date: 08/29/2014 19:18:38 ******/
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
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (1, N'Nông Dân')
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (2, N'Địa Chủ')
INSERT [dbo].[User_Rank] ([User_RankID], [User_RankName]) VALUES (3, N'Phú Nông')
/****** Object:  Table [dbo].[Users]    Script Date: 08/29/2014 19:18:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[User_ID] [int] IDENTITY(1,1) NOT NULL,
	[User_TypeID] [int] NOT NULL,
	[User_RankID] [int] NULL,
	[User_FullName] [nvarchar](max) NOT NULL,
	[User_Birthday] [date] NULL,
	[User_Gender] [int] NOT NULL,
	[User_UserName] [nvarchar](max) NOT NULL,
	[User_PassWord] [nvarchar](max) NOT NULL,
	[User_Address] [nvarchar](max) NULL,
	[User_Xa] [nvarchar](max) NULL,
	[User_Phuong] [nvarchar](max) NULL,
	[User_ThanhPho] [nvarchar](max) NULL,
	[User_Truong] [nvarchar](max) NULL,
	[User_Lop] [nvarchar](max) NULL,
	[User_Email] [nvarchar](max) NULL,
	[User_Phone] [nvarchar](50) NOT NULL,
	[User_Image] [nvarchar](50) NULL,
	[User_RegisterTime] [datetime] NOT NULL,
	[User_Gold] [int] NOT NULL,
	[User_Money] [int] NULL,
	[User_Gift] [nchar](10) NULL,
	[User_Active] [nvarchar](100) NULL,
	[User_Status] [bit] NULL,
	[User_LastEdit] [datetime] NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Users] ON
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit]) VALUES (1, 1, 3, N'Long', CAST(0x761B0B00 AS Date), 1, N'admin', N'admin', N'Hà Nội', N'Xuân ĐỈnh', N'Xuân ĐỈnh', N'Hà Nội', N' Đh Điện Lực', N'Đ6CNTT', N'longtd3012@gmail.com', N'0984152426', NULL, CAST(0x0000A38B00000000 AS DateTime), 110000, 1000000, N'0         ', NULL, 1, NULL)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit]) VALUES (2, 2, 2, N'Sơn', CAST(0x84280B00 AS Date), 1, N'son', N'123456', N'SơnLa', N'Tông Lạnh', N'Thuận Châu', N'Sơn La', N'THCS Tông Lạnh', N'6A', NULL, N'0983242734', NULL, CAST(0x0000A38500000000 AS DateTime), 1200, 0, N'0         ', NULL, 1, NULL)
INSERT [dbo].[Users] ([User_ID], [User_TypeID], [User_RankID], [User_FullName], [User_Birthday], [User_Gender], [User_UserName], [User_PassWord], [User_Address], [User_Xa], [User_Phuong], [User_ThanhPho], [User_Truong], [User_Lop], [User_Email], [User_Phone], [User_Image], [User_RegisterTime], [User_Gold], [User_Money], [User_Gift], [User_Active], [User_Status], [User_LastEdit]) VALUES (3, 1, 2, N'abc', CAST(0xD1180B00 AS Date), 2, N'123', N'123', N'1123', N'123', N'123', N'123', N'123', N'123', N'123', N'1234', NULL, CAST(0x0000A16D00000000 AS DateTime), 1100, NULL, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
/****** Object:  StoredProcedure [dbo].[User_Type_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Type_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Type_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Catalog_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Catalog_SelectAll_Child]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Catalog_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Catalog_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Rank_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Rank_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[User_Rank_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Users_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Users_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
Create PROCEDURE [dbo].[Users_SelectAll]
as
Select * from Users
GO
/****** Object:  StoredProcedure [dbo].[Users_Insert]    Script Date: 08/29/2014 19:18:39 ******/
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
    @User_Gift nchar(10)
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
           User_Gift
           )
	VALUES(@User_TypeID,@User_RankID,@User_FullName,@User_Birthday,@User_Gender,@User_UserName,@User_PassWord,@User_Address,@User_Xa,@User_Phuong,@User_ThanhPho,@User_Truong,@User_Lop,@User_Email,@User_Phone,@User_Image,@User_RegisterTime,@User_Gold,@User_Money,@User_Gift)
end
GO
/****** Object:  StoredProcedure [dbo].[Users_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Users_DangNhap]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  Table [dbo].[Story]    Script Date: 08/29/2014 19:18:39 ******/
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
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (1, 1, N'Edison Ấp Trứng Gà', N'bia edison.jpg', N'UThiYeuYesItSLove-TangNhatTue.mp3', N'Edison Ấp Trứng Gà', CAST(0x0000A38B00000000 AS DateTime), 1, 10, 14, 1, 0, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (5, 2, N'Chú Vịt Xám', N'bia vit xam.jpg', N'Hopeful.mp3', N'Chú Vịt Xám', CAST(0x0000A38A00000000 AS DateTime), 1, 10, 9, 1, 0, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (7, 3, N'Lừa Đội Lốt Sư Tử', N'bia lua doi lot su tu.jpg', N'LuaDoilotsutusoundTrack.mp3', N'Lừa Đội Lốt Sư Tử', CAST(0x0000A38C00000000 AS DateTime), 1, 20, 4, 1, 1, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (9, 3, N'Lừa Đội Lốt Sư Tử 1', N'bia lua doi lot su tu.jpg', N'LuaDoilotsutusoundTrack.mp3', N'Lừa Đội Lốt Sư Tử', CAST(0x0000A38C00000000 AS DateTime), 1, 50, 8, 1, 1, NULL)
INSERT [dbo].[Story] ([Story_ID], [Catalog_ID], [Story_Name], [Story_Catalog], [Story_SoundTrack], [Story_Status], [Story_TimeUp], [Story_Creater], [Story_Price], [Story_TotalView], [Story_State], [Story_StatePrice], [Story_LastEdit]) VALUES (10, 2, N'Chú Vịt Xám 1', N'bia vit xam.jpg', N'Hopeful.mp3', N'Chú Vịt Xám', CAST(0x0000A38A00000000 AS DateTime), 1, 10, 2, 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[Story] OFF
/****** Object:  Table [dbo].[Game]    Script Date: 08/29/2014 19:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game](
	[Game_ID] [int] NOT NULL,
	[Catalog_ID] [int] NULL,
	[Game_Name] [nvarchar](max) NULL,
	[Game_Catalog] [nvarchar](max) NULL,
	[Game_Path] [nvarchar](max) NULL,
	[Game_Status] [nvarchar](max) NULL,
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
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (1, NULL, N'Caro', NULL, N'Caro.swf', N'Trò chơi Caro', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 12, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (2, NULL, N'Boom', NULL, N'boom.swf', N'Trò Chơi Boom', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 21, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (3, NULL, N'Boom Online', NULL, N'Boom offline - Boom online - Chơi game Boom - Gamedangianviet.com.swf', N'Trò Chơi Boom', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 39, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (4, NULL, N'Cờ Vua', NULL, N'Chơi game Cờ Vua - Gamedangianviet.com.swf', N'Trò Chơi Cờ Vua', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 20, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (5, NULL, N'Cuộc Hành Trình Của Penny', NULL, N'Chơi game Cuộc hành trình của Penny – Game y8 miễn phí.swf', N'Trò chơi Cuộc Hành Trình Của Penny', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 12, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (6, NULL, N'Dẫn Nước Tưới Hoa', NULL, N'Chơi game dẫn nước tưới hoa - Gamedangianviet.com.swf', N'Trò Chơi Dẫn Nước Tưới Hoa', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 14, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (7, NULL, N'PiKaChu', NULL, N'Chơi game Pikachu phiêu lưu - Gamedangianviet.com.swf', N'Trò Chơi PikaChu', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 14, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (8, NULL, N'Sudoku', NULL, N'Chơi game Sudoku - Gamedangianviet.com.swf', N'Trò Chơi Sudoku', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 16, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game] ([Game_ID], [Catalog_ID], [Game_Name], [Game_Catalog], [Game_Path], [Game_Status], [Game_Guide], [Game_TimeUp], [Game_UserCreater], [Game_Price], [Game_TotalView], [Game_TotalLike], [Game_State], [Game_StatePrice], [Game_LastEdit]) VALUES (9, NULL, N'Trở Lên To Lớn', NULL, N'Chơi game Trở lên to lớn – Game y8 miễn phí.swf', N'Trò Chơi Trở Lên To Lớn', NULL, CAST(0x0000A39400000000 AS DateTime), 1, 50, 17, NULL, 1, 1, CAST(0x0000A39400000000 AS DateTime))
/****** Object:  Table [dbo].[Blog_Status]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  Table [dbo].[Blog_Comment]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  Table [dbo].[Story_Page]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_New]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_GetAllByCatalogID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  Table [dbo].[Story_View]    Script Date: 08/29/2014 19:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Story_View](
	[Story_ID] [int] NOT NULL,
	[User_ID] [int] NOT NULL,
	[View] [int] NOT NULL,
	[Like] [int] NOT NULL,
	[View_Time] [datetime] NOT NULL,
 CONSTRAINT [PK_Story_View] PRIMARY KEY CLUSTERED 
(
	[Story_ID] ASC,
	[User_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (1, 1, 0, 0, CAST(0x0000A38A00000000 AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (5, 1, 0, 0, CAST(0x0000A38A00000000 AS DateTime))
INSERT [dbo].[Story_View] ([Story_ID], [User_ID], [View], [Like], [View_Time]) VALUES (7, 1, 0, 0, CAST(0x0000A38C00000000 AS DateTime))
/****** Object:  StoredProcedure [dbo].[Story_TopRead]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
CREATE PROCEDURE [dbo].[Story_SelectAll]
as
Select * from Story
WHERE Story.Story_State = 1
GO
/****** Object:  StoredProcedure [dbo].[UpdateViewGame]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[UpdateView]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Game_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  Table [dbo].[Game_player]    Script Date: 08/29/2014 19:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Game_player](
	[Gamer_ID] [int] NOT NULL,
	[Game_ID] [int] NULL,
	[User_ID] [int] NULL,
	[Mark] [int] NULL,
	[View_Time] [datetime] NULL,
 CONSTRAINT [PK_Game_player] PRIMARY KEY CLUSTERED 
(
	[Gamer_ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (1, 1, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (2, 2, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (3, 3, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (4, 4, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (5, 5, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (6, 6, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (7, 7, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
INSERT [dbo].[Game_player] ([Gamer_ID], [Game_ID], [User_ID], [Mark], [View_Time]) VALUES (8, 8, 1, NULL, CAST(0x0000A39400000000 AS DateTime))
/****** Object:  StoredProcedure [dbo].[Game_New]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Game_Hot]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[User_ReadStory]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_View_Update]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_View_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_View_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_View_Insert]    Script Date: 08/29/2014 19:18:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
--DevNETCoder v3.0 
--CopyRight By DevNET Group
CREATE PROCEDURE [dbo].[Story_View_Insert]
@Story_ID Int,
@User_ID Int,
@View Int,
@Like Int,
@View_Time DateTime
as
begin
if(Not exists (select Story_ID From Story_View))
begin
insert into Story_View
([Story_ID],[User_ID],[View],[Like],[View_Time])
Values
(@Story_ID,@User_ID,@View,@Like,@View_Time)
end
else 
begin
	 Raiserror('Lỗi !',16,1)
	 RollBack Tran
end

end
GO
/****** Object:  StoredProcedure [dbo].[Story_View_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_Page_SelectByID]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_Page_SelectAll]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Story_Page_Delete]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  StoredProcedure [dbo].[Read_Story]    Script Date: 08/29/2014 19:18:39 ******/
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
/****** Object:  ForeignKey [FK_Catalog_Catalog]    Script Date: 08/29/2014 19:18:38 ******/
ALTER TABLE [dbo].[Catalog]  WITH CHECK ADD  CONSTRAINT [FK_Catalog_Catalog] FOREIGN KEY([Catalog_Super])
REFERENCES [dbo].[Catalog] ([Catalog_ID])
GO
ALTER TABLE [dbo].[Catalog] CHECK CONSTRAINT [FK_Catalog_Catalog]
GO
/****** Object:  ForeignKey [FK_User_User_Rank]    Script Date: 08/29/2014 19:18:38 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_User_Rank] FOREIGN KEY([User_RankID])
REFERENCES [dbo].[User_Rank] ([User_RankID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_User_Rank]
GO
/****** Object:  ForeignKey [FK_User_User_Type]    Script Date: 08/29/2014 19:18:38 ******/
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_User_User_Type] FOREIGN KEY([User_TypeID])
REFERENCES [dbo].[User_Type] ([User_TypeID])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_User_User_Type]
GO
/****** Object:  ForeignKey [FK_Story_Catalog]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Catalog] FOREIGN KEY([Catalog_ID])
REFERENCES [dbo].[Catalog] ([Catalog_ID])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Catalog]
GO
/****** Object:  ForeignKey [FK_Story_Users]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Story]  WITH CHECK ADD  CONSTRAINT [FK_Story_Users] FOREIGN KEY([Story_Creater])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Story] CHECK CONSTRAINT [FK_Story_Users]
GO
/****** Object:  ForeignKey [FK_Game_Users]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Game]  WITH CHECK ADD  CONSTRAINT [FK_Game_Users] FOREIGN KEY([Game_UserCreater])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Game] CHECK CONSTRAINT [FK_Game_Users]
GO
/****** Object:  ForeignKey [FK_Blog_Status_Users]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Blog_Status]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Status_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Blog_Status] CHECK CONSTRAINT [FK_Blog_Status_Users]
GO
/****** Object:  ForeignKey [FK_Blog_Comment_Blog_Status]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Blog_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Comment_Blog_Status] FOREIGN KEY([Status_ID])
REFERENCES [dbo].[Blog_Status] ([Status_ID])
GO
ALTER TABLE [dbo].[Blog_Comment] CHECK CONSTRAINT [FK_Blog_Comment_Blog_Status]
GO
/****** Object:  ForeignKey [FK_Blog_Comment_Users]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Blog_Comment]  WITH CHECK ADD  CONSTRAINT [FK_Blog_Comment_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Blog_Comment] CHECK CONSTRAINT [FK_Blog_Comment_Users]
GO
/****** Object:  ForeignKey [FK_Story_Page_Story]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Story_Page]  WITH CHECK ADD  CONSTRAINT [FK_Story_Page_Story] FOREIGN KEY([Story_ID])
REFERENCES [dbo].[Story] ([Story_ID])
GO
ALTER TABLE [dbo].[Story_Page] CHECK CONSTRAINT [FK_Story_Page_Story]
GO
/****** Object:  ForeignKey [FK_Story_View_Story]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Story_View]  WITH CHECK ADD  CONSTRAINT [FK_Story_View_Story] FOREIGN KEY([Story_ID])
REFERENCES [dbo].[Story] ([Story_ID])
GO
ALTER TABLE [dbo].[Story_View] CHECK CONSTRAINT [FK_Story_View_Story]
GO
/****** Object:  ForeignKey [FK_Story_View_User]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Story_View]  WITH CHECK ADD  CONSTRAINT [FK_Story_View_User] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Story_View] CHECK CONSTRAINT [FK_Story_View_User]
GO
/****** Object:  ForeignKey [FK_Game_player_Game]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Game_player]  WITH CHECK ADD  CONSTRAINT [FK_Game_player_Game] FOREIGN KEY([Game_ID])
REFERENCES [dbo].[Game] ([Game_ID])
GO
ALTER TABLE [dbo].[Game_player] CHECK CONSTRAINT [FK_Game_player_Game]
GO
/****** Object:  ForeignKey [FK_Game_player_Users]    Script Date: 08/29/2014 19:18:39 ******/
ALTER TABLE [dbo].[Game_player]  WITH CHECK ADD  CONSTRAINT [FK_Game_player_Users] FOREIGN KEY([User_ID])
REFERENCES [dbo].[Users] ([User_ID])
GO
ALTER TABLE [dbo].[Game_player] CHECK CONSTRAINT [FK_Game_player_Users]
GO
/*------------Tuan 29/08-------------------------------------*/
USE [BEC]
GO
/****** Object:  StoredProcedure [dbo].[Catalog_GetDetail]    Script Date: 08/29/2014 23:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Catalog_GetDetail]
@Catalog_ID int
AS
BEGIN
	select * from Catalog where Catalog_ID= @Catalog_ID
END
/*-------------Tony 29/08---------------------*/
USE [BEC]
GO
/****** Object:  StoredProcedure [dbo].[Catalog_GetDetail]    Script Date: 08/29/2014 23:55:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[Catalog_GetDetail]
@Catalog_ID int
AS
BEGIN
	select * from Catalog where Catalog_ID= @Catalog_ID
END
