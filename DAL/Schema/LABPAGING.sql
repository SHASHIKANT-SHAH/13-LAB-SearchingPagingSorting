USE [master]
GO
/****** Object:  Database [LABPAGING]    Script Date: 7/3/2023 4:42:39 PM ******/
CREATE DATABASE [LABPAGING]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'LABPAGING', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LABPAGING.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'LABPAGING_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\LABPAGING_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [LABPAGING] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [LABPAGING].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [LABPAGING] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [LABPAGING] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [LABPAGING] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [LABPAGING] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [LABPAGING] SET ARITHABORT OFF 
GO
ALTER DATABASE [LABPAGING] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [LABPAGING] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [LABPAGING] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [LABPAGING] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [LABPAGING] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [LABPAGING] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [LABPAGING] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [LABPAGING] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [LABPAGING] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [LABPAGING] SET  DISABLE_BROKER 
GO
ALTER DATABASE [LABPAGING] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [LABPAGING] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [LABPAGING] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [LABPAGING] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [LABPAGING] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [LABPAGING] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [LABPAGING] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [LABPAGING] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [LABPAGING] SET  MULTI_USER 
GO
ALTER DATABASE [LABPAGING] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [LABPAGING] SET DB_CHAINING OFF 
GO
ALTER DATABASE [LABPAGING] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [LABPAGING] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [LABPAGING] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [LABPAGING] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [LABPAGING] SET QUERY_STORE = OFF
GO
USE [LABPAGING]
GO
/****** Object:  Table [dbo].[Products]    Script Date: 7/3/2023 4:42:39 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Products](
	[ProductId] [int] IDENTITY(1,1) NOT NULL,
	[Name] [varchar](50) NOT NULL,
	[Description] [varchar](30) NULL,
	[Color] [varchar](15) NULL,
	[UnitPrice] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Products] PRIMARY KEY CLUSTERED 
(
	[ProductId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Products] ON 

INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (1, N'Redmi 12C', N'4GB RAM, 64GB Storage', N'Royal Blue', CAST(10000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (2, N'Redmi 11 Prime 5G', N'4GB RAM, 64GB Storage', N'Thunder Black', CAST(14000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (3, N'Redmi 10A', N'4GB RAM, 64GB Storage ', N'Slate Grey', CAST(9000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (4, N'Samsung Galaxy M04', N'8GB RAM, 64GB Storage ', N'Light Green', CAST(8000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (5, N'Samsung Galazy M33', N'6GB, 128GB Storage', N'Aqua Green', CAST(13000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (6, N'Redmi 10 Power', N'8GB RAM, 128GB', N'Sporty Orange', CAST(12500 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (7, N'OPPO A74 5G', N'6GB RAM,128GB', N' Purple', CAST(16000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (8, N'Apple iPhone 14 Plus', N'128 GB', N'Blue', CAST(80000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (9, N'Samsung Galaxy M33 5G', N'6GB, 128GB Storage ', N'Light Green', CAST(17000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (10, N'Vivo Y56 5G', N' 8GB RAM, 128GB', N'Black Engine', CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (11, N'HP 15s', N'11th Gen Intel Core i3 8GB RAM', N'Gray', CAST(40000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (12, N'HP 255 G8 Laptop', N' AMD Athlon 8GB Ram', N'Black', CAST(28000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (13, N'Lenovo E41-55 Laptop', N'AMD Athlon Pro 3045B/ 4GB RAM', N'Black', CAST(20000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (14, N'Dell Latitude E5470', N'Intel Core i5 6th Gen.6200', N'Black', CAST(40000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (15, N'ASUS Zenbook 17', N'Intel EVO Core i7 12th Gen', N'Black', CAST(90000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (16, N'Lenovo Tab P11 Plus', N'11 inch, 6 GB, 128 GB', N'Slate Gray', CAST(27000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (17, N'Samsung Galaxy Tab A8', N'10.5 inch, RAM 4 GB, ROM 64 GB', N'Silver', CAST(16000 AS Decimal(18, 0)))
INSERT [dbo].[Products] ([ProductId], [Name], [Description], [Color], [UnitPrice]) VALUES (18, N'realme Pad WiFi+4G Tablet', N'6GB RAM 128GB ROM 10.4 inch', N'Golden', CAST(20000 AS Decimal(18, 0)))
SET IDENTITY_INSERT [dbo].[Products] OFF
GO
USE [master]
GO
ALTER DATABASE [LABPAGING] SET  READ_WRITE 
GO
