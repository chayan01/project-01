USE [master]
GO
/****** Object:  Database [CountryCityManagementDB]    Script Date: 1/10/2016 12:56:10 PM ******/
CREATE DATABASE [CountryCityManagementDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'CountryCityManagementDB', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CountryCityManagementDB.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'CountryCityManagementDB_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\CountryCityManagementDB_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [CountryCityManagementDB] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [CountryCityManagementDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [CountryCityManagementDB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET ARITHABORT OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [CountryCityManagementDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [CountryCityManagementDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [CountryCityManagementDB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [CountryCityManagementDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [CountryCityManagementDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [CountryCityManagementDB] SET  MULTI_USER 
GO
ALTER DATABASE [CountryCityManagementDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [CountryCityManagementDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [CountryCityManagementDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [CountryCityManagementDB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [CountryCityManagementDB]
GO
/****** Object:  Table [dbo].[Cities]    Script Date: 1/10/2016 12:56:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cities](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[About] [nvarchar](max) NOT NULL,
	[NoOfDwellers] [int] NOT NULL,
	[Location] [nvarchar](50) NOT NULL,
	[Weather] [nvarchar](50) NOT NULL,
	[CountryID] [int] NOT NULL,
 CONSTRAINT [PK_Cities] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Countries]    Script Date: 1/10/2016 12:56:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Countries](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](50) NOT NULL,
	[About] [nvarchar](max) NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Cities] ON 

INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryID]) VALUES (1, N'Dhaka', N'About Dhaka', 10000, N'Dhaka', N'Cool', 1)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryID]) VALUES (2, N'Dinajpur', N'About Dinajpur', 5000, N'Dinajpur', N'Hot', 1)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryID]) VALUES (3, N'Rajshahi', N'About Rajshahi', 4000, N'Rajshahi', N'Hot', 1)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryID]) VALUES (4, N'Calcata', N'About Calcata', 500, N'Calcata', N'Cool', 2)
INSERT [dbo].[Cities] ([Id], [Name], [About], [NoOfDwellers], [Location], [Weather], [CountryID]) VALUES (5, N'Mumbi', N'About Mumbi', 400, N'Mumbi', N'Hot', 2)
SET IDENTITY_INSERT [dbo].[Cities] OFF
SET IDENTITY_INSERT [dbo].[Countries] ON 

INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (1, N'Bangladesh', N'About Bangladesh')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (2, N'India', N'About India')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (3, N'Pakistan', N'About Pakistan')
INSERT [dbo].[Countries] ([Id], [Name], [About]) VALUES (4, N'Nepal', N'About Nepal')
SET IDENTITY_INSERT [dbo].[Countries] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Cities]    Script Date: 1/10/2016 12:56:10 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Cities] ON [dbo].[Cities]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_Countries]    Script Date: 1/10/2016 12:56:10 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [IX_Countries] ON [dbo].[Countries]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cities]  WITH CHECK ADD  CONSTRAINT [FK_Cities_Countries] FOREIGN KEY([CountryID])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Cities] CHECK CONSTRAINT [FK_Cities_Countries]
GO
ALTER TABLE [dbo].[Countries]  WITH CHECK ADD  CONSTRAINT [FK_Countries_Countries] FOREIGN KEY([Id])
REFERENCES [dbo].[Countries] ([Id])
GO
ALTER TABLE [dbo].[Countries] CHECK CONSTRAINT [FK_Countries_Countries]
GO
USE [master]
GO
ALTER DATABASE [CountryCityManagementDB] SET  READ_WRITE 
GO
