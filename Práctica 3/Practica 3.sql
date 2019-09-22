USE [Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [ch_1]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__Servi__46E78A0C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__Habit__45F365D3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__Clien__44FF419A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Habitaciones] DROP CONSTRAINT IF EXISTS [FK__Habitacio__TipoH__440B1D61]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [FK__Empleados__Puest__4316F928]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT IF EXISTS [df_2]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Puesto]') AND type in (N'U'))
ALTER TABLE [dbo].[Puesto] DROP CONSTRAINT IF EXISTS [df_1]
GO
/****** Object:  Index [INDX_Empleado_NombreCompleto]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP INDEX IF EXISTS [INDX_Empleado_NombreCompleto] ON [dbo].[Empleados]
GO
/****** Object:  Index [uq_2]    Script Date: 21/09/2019 09:55:37 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [uq_2]
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP INDEX IF EXISTS [INDX_Cliente_NombreCompleto] ON [dbo].[Clientes]
GO
/****** Object:  Index [uq_1]    Script Date: 21/09/2019 09:55:37 p. m. ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Clientes]') AND type in (N'U'))
ALTER TABLE [dbo].[Clientes] DROP CONSTRAINT IF EXISTS [uq_1]
GO
/****** Object:  Table [dbo].[TipoHabitacion]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[TipoHabitacion]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Reservaciones]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Puesto]
GO
/****** Object:  Table [dbo].[Habitaciones]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Habitaciones]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Clientes]
GO
USE [master]
GO
/****** Object:  Database [Hotel]    Script Date: 21/09/2019 09:55:37 p. m. ******/
DROP DATABASE IF EXISTS [Hotel]
GO
/****** Object:  Database [Hotel]    Script Date: 21/09/2019 09:55:37 p. m. ******/
CREATE DATABASE [Hotel]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Hotel', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hotel.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Hotel_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Hotel_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Hotel] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Hotel].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Hotel] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Hotel] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Hotel] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Hotel] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Hotel] SET ARITHABORT OFF 
GO
ALTER DATABASE [Hotel] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Hotel] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Hotel] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Hotel] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Hotel] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Hotel] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Hotel] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Hotel] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Hotel] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Hotel] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Hotel] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Hotel] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Hotel] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Hotel] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Hotel] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Hotel] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Hotel] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Hotel] SET RECOVERY FULL 
GO
ALTER DATABASE [Hotel] SET  MULTI_USER 
GO
ALTER DATABASE [Hotel] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Hotel] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Hotel] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Hotel] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Hotel] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Hotel', N'ON'
GO
ALTER DATABASE [Hotel] SET QUERY_STORE = OFF
GO
USE [Hotel]
GO
/****** Object:  Table [dbo].[Clientes]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Clientes](
	[Clientes_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[ApellidoPaterno] [varchar](30) NOT NULL,
	[ApellidoMaterno] [varchar](30) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[ApellidoPaterno])+' ')+[ApellidoMaterno]),
	[Edad] [int] NOT NULL,
	[Nacionalidad] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Clientes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[Empleados_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[ApellidoPaterno] [varchar](30) NOT NULL,
	[ApellidoMaterno] [varchar](30) NOT NULL,
	[NombreCompleto]  AS (((([Nombre]+'')+[ApellidoPaterno])+' ')+[ApellidoMaterno]),
	[Puesto] [int] NOT NULL,
	[Sueldo] [money] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Empleados_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitaciones]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitaciones](
	[Habitaciones_id] [int] NOT NULL,
	[TipoHabitacion] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Habitaciones_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto](
	[Puesto_id] [int] NOT NULL,
	[Nombre] [varchar](50) NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Puesto_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservaciones](
	[Reservaciones_id] [int] NOT NULL,
	[Clientes_id] [int] NOT NULL,
	[FechaEntrada] [date] NOT NULL,
	[FechaSalida] [date] NOT NULL,
	[Habitaciones_id] [int] NOT NULL,
	[Servicios_id] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Reservaciones_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[Servicios_id] [int] NOT NULL,
	[Nombre] [varchar](30) NOT NULL,
	[Precio] [money] NOT NULL,
	[Descripcion] [varchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[Servicios_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoHabitacion]    Script Date: 21/09/2019 09:55:38 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoHabitacion](
	[TipoHabitacion_id] [int] NOT NULL,
	[Nombre] [varchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[TipoHabitacion_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Index [uq_1]    Script Date: 21/09/2019 09:55:38 p. m. ******/
ALTER TABLE [dbo].[Clientes] ADD  CONSTRAINT [uq_1] UNIQUE NONCLUSTERED 
(
	[Clientes_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Cliente_NombreCompleto]    Script Date: 21/09/2019 09:55:38 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Cliente_NombreCompleto] ON [dbo].[Clientes]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
/****** Object:  Index [uq_2]    Script Date: 21/09/2019 09:55:38 p. m. ******/
ALTER TABLE [dbo].[Empleados] ADD  CONSTRAINT [uq_2] UNIQUE NONCLUSTERED 
(
	[Empleados_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ARITHABORT ON
SET CONCAT_NULL_YIELDS_NULL ON
SET QUOTED_IDENTIFIER ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
SET NUMERIC_ROUNDABORT OFF
GO
/****** Object:  Index [INDX_Empleado_NombreCompleto]    Script Date: 21/09/2019 09:55:38 p. m. ******/
CREATE NONCLUSTERED INDEX [INDX_Empleado_NombreCompleto] ON [dbo].[Empleados]
(
	[NombreCompleto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Puesto] ADD  CONSTRAINT [df_1]  DEFAULT ('Sin descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Servicios] ADD  CONSTRAINT [df_2]  DEFAULT ('Sin descripcion') FOR [Descripcion]
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([Puesto])
REFERENCES [dbo].[Puesto] ([Puesto_id])
GO
ALTER TABLE [dbo].[Habitaciones]  WITH CHECK ADD FOREIGN KEY([TipoHabitacion])
REFERENCES [dbo].[TipoHabitacion] ([TipoHabitacion_id])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([Clientes_id])
REFERENCES [dbo].[Clientes] ([Clientes_id])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([Habitaciones_id])
REFERENCES [dbo].[Habitaciones] ([Habitaciones_id])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([Servicios_id])
REFERENCES [dbo].[Servicios] ([Servicios_id])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD  CONSTRAINT [ch_1] CHECK  (([FechaEntrada]<=[FechaSalida]))
GO
ALTER TABLE [dbo].[Reservaciones] CHECK CONSTRAINT [ch_1]
GO
USE [master]
GO
ALTER DATABASE [Hotel] SET  READ_WRITE 
GO
