USE [master]
GO
/****** Object:  Database [sqlassignment1]    Script Date: 24-01-2022 18:35:36 ******/
CREATE DATABASE [sqlassignment1]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'sqlassignment1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\sqlassignment1.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'sqlassignment1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\sqlassignment1_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [sqlassignment1] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [sqlassignment1].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [sqlassignment1] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [sqlassignment1] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [sqlassignment1] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [sqlassignment1] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [sqlassignment1] SET ARITHABORT OFF 
GO
ALTER DATABASE [sqlassignment1] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [sqlassignment1] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [sqlassignment1] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [sqlassignment1] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [sqlassignment1] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [sqlassignment1] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [sqlassignment1] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [sqlassignment1] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [sqlassignment1] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [sqlassignment1] SET  DISABLE_BROKER 
GO
ALTER DATABASE [sqlassignment1] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [sqlassignment1] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [sqlassignment1] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [sqlassignment1] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [sqlassignment1] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [sqlassignment1] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [sqlassignment1] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [sqlassignment1] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [sqlassignment1] SET  MULTI_USER 
GO
ALTER DATABASE [sqlassignment1] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [sqlassignment1] SET DB_CHAINING OFF 
GO
ALTER DATABASE [sqlassignment1] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [sqlassignment1] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [sqlassignment1] SET DELAYED_DURABILITY = DISABLED 
GO
USE [sqlassignment1]
GO
/****** Object:  Table [dbo].[Programmer]    Script Date: 24-01-2022 18:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Programmer](
	[Name] [varchar](25) NOT NULL,
	[DOB] [datetime] NOT NULL,
	[DOJ] [datetime] NULL,
	[Sex] [varchar](1) NULL,
	[Prof1] [varchar](10) NULL,
	[Prof2] [varchar](10) NULL,
	[Salary] [int] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Software]    Script Date: 24-01-2022 18:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Software](
	[Name] [varchar](20) NOT NULL,
	[Title] [char](20) NOT NULL,
	[Dev_In] [varchar](10) NOT NULL,
	[Scost] [bigint] NULL,
	[Ccost] [bigint] NULL,
	[Sold] [bigint] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Studies]    Script Date: 24-01-2022 18:35:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Studies](
	[Name] [varchar](25) NOT NULL,
	[Splace] [varchar](25) NOT NULL,
	[Course] [varchar](10) NOT NULL,
	[Ccost] [bigint] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'Anand', CAST(N'1966-04-21T00:00:00.000' AS DateTime), CAST(N'1992-04-21T00:00:00.000' AS DateTime), N'M', N'Pascal', N'Basic', 3200)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'ALTAF', CAST(N'1964-07-02T00:00:00.000' AS DateTime), CAST(N'1990-11-13T00:00:00.000' AS DateTime), N'M', N'CLIPPER', N'COBOL', 2800)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'JAGDISH', CAST(N'1970-10-06T00:00:00.000' AS DateTime), CAST(N'1994-10-04T00:00:00.000' AS DateTime), N'M', N'ORACLE', N'JAVA', 4100)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'JULIANA', CAST(N'1968-01-31T00:00:00.000' AS DateTime), CAST(N'1990-04-21T00:00:00.000' AS DateTime), N'F', N'COBOL', N'DBASE', 3000)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'KAMALA', CAST(N'1968-10-30T00:00:00.000' AS DateTime), CAST(N'1992-01-02T00:00:00.000' AS DateTime), N'F', N'C', N'DBASE', 2900)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'MARY', CAST(N'1970-06-24T00:00:00.000' AS DateTime), CAST(N'1991-02-01T00:00:00.000' AS DateTime), N'F', N'C++', N'ORACLE', 4500)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'NELSON', CAST(N'1965-09-11T00:00:00.000' AS DateTime), CAST(N'1969-10-11T00:00:00.000' AS DateTime), N'M', N'COBOL', N'DBASE', 2500)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'PATRICK', CAST(N'1965-11-19T00:00:00.000' AS DateTime), CAST(N'1990-04-21T00:00:00.000' AS DateTime), N'M', N'PASCAL', N'CLIPPER', 2800)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'QADIR', CAST(N'1985-08-31T00:00:00.000' AS DateTime), CAST(N'1993-04-21T00:00:00.000' AS DateTime), N'M', N'ASSEMBLY', N'C', 3000)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'RAMESH', CAST(N'1967-05-03T00:00:00.000' AS DateTime), CAST(N'1991-02-28T00:00:00.000' AS DateTime), N'M', N'PASCAL', N'DBASE', 3200)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'REBECCA', CAST(N'1967-01-01T00:00:00.000' AS DateTime), CAST(N'1990-12-01T00:00:00.000' AS DateTime), N'F', N'BASIC', N'COBOL', 2500)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'REMITA', CAST(N'1970-04-19T00:00:00.000' AS DateTime), CAST(N'1993-04-20T00:00:00.000' AS DateTime), N'F', N'C', N'ASSEMBLY', 3600)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'REVATHI', CAST(N'1969-12-02T00:00:00.000' AS DateTime), CAST(N'1992-01-02T00:00:00.000' AS DateTime), N'F', N'PASCAL', N'BASIC', 3700)
INSERT [dbo].[Programmer] ([Name], [DOB], [DOJ], [Sex], [Prof1], [Prof2], [Salary]) VALUES (N'VIJAYA', CAST(N'1966-12-14T00:00:00.000' AS DateTime), CAST(N'1992-05-02T00:00:00.000' AS DateTime), N'F', N'FOXPRO', N'C', 3600)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'ANAND', N'VIDEO TITLING PACK  ', N'PASCAL', 7500, 16000, 9)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'ANAND', N'PARACHTESTITLES     ', N'BASIC', 399, 8000, 43)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'JAGDISH', N'SERIAL LINK UTILITY ', N'JAVA', 800, 7500, 10)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'JAGDISH', N'SHARES MANAGEMENT   ', N'ORACLE ', 3000, 12000, 14)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'JULIANA', N'INVENTORY CONTROL   ', N'COBOL ', 3000, 3500, 0)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'KAMALA', N'PAYROLL PACKAGE     ', N'DBASE ', 9000, 20000, 7)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'MARY', N'FINANCIAL ACCOUNTS/W', N'ORACLE', 18000, 85000, 4)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'MARY', N'CODE GENERATOR      ', N'C', 4500, 20000, 20)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'MARY', N'READ ME             ', N'C++', 300, 1200, 84)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'PATRICK', N'GRAPHIC EDITOR      ', N'PASCAL', 750, 5000, 11)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'RAMESH', N'HOTEL MANAGEMENT    ', N'DBASE', 12000, 35000, 4)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'RAMESH', N'DEADLEE             ', N'PASCAL', 99, 4500, 73)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'REMITHA', N'PC UTILITIES        ', N'C', 725, 5000, 51)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'REVATHI', N'HOTEL MANAGEMENT    ', N'PASCAL', 1100, 75000, 2)
INSERT [dbo].[Software] ([Name], [Title], [Dev_In], [Scost], [Ccost], [Sold]) VALUES (N'VIJAYA', N'ISK EDITOR          ', N'C', 900, 700, 6)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'ANAND', N'SABHRI', N'PGDCA', 4500)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'ALTAF', N'CCIT', N'DCA', 7200)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'JAGDISH', N'S.S.I.L', N'DCA', 3500)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'JULIANA', N'BITS', N'DCA', 22000)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'KAMALA', N'PRAGATHI', N'DCP', 5000)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'MARY', N'SABHARI', N'PGDCA', 4500)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'NELSON', N'PRAGATHI', N'DAP', 6200)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'PATRICK', N'PRAGATHI', N'DCAP', 5200)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'QADIR', N'APPLE', N'HDCP', 14000)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'RAMESH', N'SABHRI', N'PGDCA', 4500)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'REBECCA', N'BRILLIANT', N'DCA', 11000)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'REVATHI', N'SABHARI', N'DAP', 5000)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'VIJAYA', N'BDPS', N'DCA', 48000)
INSERT [dbo].[Studies] ([Name], [Splace], [Course], [Ccost]) VALUES (N'REMITHA', N'BDPS', N'DCS', 6000)
USE [master]
GO
ALTER DATABASE [sqlassignment1] SET  READ_WRITE 
GO
