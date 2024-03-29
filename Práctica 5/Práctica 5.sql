USE [master]
GO
/****** Object:  Database [Hotel]    Script Date: 10/04/2019 15:32:33 ******/
CREATE DATABASE [Hotel] ON  PRIMARY 
( NAME = N'Hotel', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Hotel.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Hotel_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL10_50.MSSQLSERVER\MSSQL\DATA\Hotel_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Hotel] SET COMPATIBILITY_LEVEL = 100
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
ALTER DATABASE [Hotel] SET AUTO_CLOSE ON
GO
ALTER DATABASE [Hotel] SET AUTO_CREATE_STATISTICS ON
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
ALTER DATABASE [Hotel] SET  READ_WRITE
GO
ALTER DATABASE [Hotel] SET RECOVERY SIMPLE
GO
ALTER DATABASE [Hotel] SET  MULTI_USER
GO
ALTER DATABASE [Hotel] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [Hotel] SET DB_CHAINING OFF
GO
USE [Hotel]
GO
/****** Object:  ForeignKey [FK__servicio___servi__276EDEB3]    Script Date: 10/04/2019 15:32:48 ******/
ALTER TABLE [dbo].[servicio_cuarto] DROP CONSTRAINT [FK__servicio___servi__276EDEB3]
GO
/****** Object:  ForeignKey [FK__masaje__servicio__25869641]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[masaje] DROP CONSTRAINT [FK__masaje__servicio__25869641]
GO
/****** Object:  ForeignKey [FK__limpieza__servic__24927208]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[limpieza] DROP CONSTRAINT [FK__limpieza__servic__24927208]
GO
/****** Object:  ForeignKey [FK__internet__servic__239E4DCF]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[internet] DROP CONSTRAINT [FK__internet__servic__239E4DCF]
GO
/****** Object:  ForeignKey [FK__habitacio__estad__22AA2996]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__estad__22AA2996]
GO
/****** Object:  ForeignKey [FK__habitacio__id_ti__1FCDBCEB]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__id_ti__1FCDBCEB]
GO
/****** Object:  ForeignKey [FK__habitacio__servi__20C1E124]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__20C1E124]
GO
/****** Object:  ForeignKey [FK__habitacio__servi__21B6055D]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__21B6055D]
GO
/****** Object:  ForeignKey [FK__transport__servi__267ABA7A]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[transporte] DROP CONSTRAINT [FK__transport__servi__267ABA7A]
GO
/****** Object:  ForeignKey [FK__cliente__id_naci__173876EA]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__id_naci__173876EA]
GO
/****** Object:  ForeignKey [FK__cliente__pago_id__182C9B23]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__pago_id__182C9B23]
GO
/****** Object:  ForeignKey [FK__empleado__id_pue__1CF15040]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__id_pue__1CF15040]
GO
/****** Object:  ForeignKey [FK__cliente_h__id_cl__1A14E395]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_cl__1A14E395]
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1B0907CE]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1B0907CE]
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1BFD2C07]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1BFD2C07]
GO
/****** Object:  Table [dbo].[cliente_habitacion]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_cl__1A14E395]
GO
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1B0907CE]
GO
ALTER TABLE [dbo].[cliente_habitacion] DROP CONSTRAINT [FK__cliente_h__id_ha__1BFD2C07]
GO
DROP TABLE [dbo].[cliente_habitacion]
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[empleado] DROP CONSTRAINT [FK__empleado__id_pue__1CF15040]
GO
DROP TABLE [dbo].[empleado]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__id_naci__173876EA]
GO
ALTER TABLE [dbo].[cliente] DROP CONSTRAINT [FK__cliente__pago_id__182C9B23]
GO
DROP TABLE [dbo].[cliente]
GO
/****** Object:  Table [dbo].[transporte]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[transporte] DROP CONSTRAINT [FK__transport__servi__267ABA7A]
GO
DROP TABLE [dbo].[transporte]
GO
/****** Object:  Table [dbo].[habitacion]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__estad__22AA2996]
GO
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__id_ti__1FCDBCEB]
GO
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__20C1E124]
GO
ALTER TABLE [dbo].[habitacion] DROP CONSTRAINT [FK__habitacio__servi__21B6055D]
GO
DROP TABLE [dbo].[habitacion]
GO
/****** Object:  Table [dbo].[internet]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[internet] DROP CONSTRAINT [FK__internet__servic__239E4DCF]
GO
DROP TABLE [dbo].[internet]
GO
/****** Object:  Table [dbo].[limpieza]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[limpieza] DROP CONSTRAINT [FK__limpieza__servic__24927208]
GO
DROP TABLE [dbo].[limpieza]
GO
/****** Object:  Table [dbo].[masaje]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[masaje] DROP CONSTRAINT [FK__masaje__servicio__25869641]
GO
DROP TABLE [dbo].[masaje]
GO
/****** Object:  Table [dbo].[servicio_cuarto]    Script Date: 10/04/2019 15:32:48 ******/
ALTER TABLE [dbo].[servicio_cuarto] DROP CONSTRAINT [FK__servicio___servi__276EDEB3]
GO
DROP TABLE [dbo].[servicio_cuarto]
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 10/04/2019 15:32:48 ******/
DROP TABLE [dbo].[servicios]
GO
/****** Object:  Table [dbo].[tipo_habitacion]    Script Date: 10/04/2019 15:32:48 ******/
DROP TABLE [dbo].[tipo_habitacion]
GO
/****** Object:  Table [dbo].[metodo_pago]    Script Date: 10/04/2019 15:32:48 ******/
DROP TABLE [dbo].[metodo_pago]
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 10/04/2019 15:32:48 ******/
DROP TABLE [dbo].[nacionalidad]
GO
/****** Object:  Table [dbo].[puestos]    Script Date: 10/04/2019 15:32:48 ******/
DROP TABLE [dbo].[puestos]
GO
/****** Object:  Table [dbo].[estado_habitacion]    Script Date: 10/04/2019 15:32:48 ******/
DROP TABLE [dbo].[estado_habitacion]
GO
/****** Object:  Table [dbo].[estado_habitacion]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[estado_habitacion](
	[estado_id] [int] NOT NULL,
	[descripcion] [varchar](15) NULL,
 CONSTRAINT [PK_estado_habitacion] PRIMARY KEY CLUSTERED 
(
	[estado_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[puestos]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[puestos](
	[id_puesto] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_puestos] PRIMARY KEY CLUSTERED 
(
	[id_puesto] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[nacionalidad]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[nacionalidad](
	[id_nacionalidad] [int] NOT NULL,
	[pais] [nvarchar](30) NOT NULL,
 CONSTRAINT [PK_nacionalidad] PRIMARY KEY CLUSTERED 
(
	[id_nacionalidad] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[metodo_pago]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[metodo_pago](
	[pago_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_metodo_pago] PRIMARY KEY CLUSTERED 
(
	[pago_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[tipo_habitacion]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[tipo_habitacion](
	[id_tipohabitacion] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_tipo_habitacion] PRIMARY KEY CLUSTERED 
(
	[id_tipohabitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicios]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[servicios](
	[servicio_id] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
	[precio] [int] NOT NULL,
 CONSTRAINT [PK_servicios] PRIMARY KEY CLUSTERED 
(
	[servicio_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[servicio_cuarto]    Script Date: 10/04/2019 15:32:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[servicio_cuarto](
	[servicio_id] [int] NOT NULL,
	[cuarto_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_servicio_cuarto] PRIMARY KEY CLUSTERED 
(
	[cuarto_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[masaje]    Script Date: 10/04/2019 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[masaje](
	[masaje_id] [int] NOT NULL,
	[servicio_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_masaje] PRIMARY KEY CLUSTERED 
(
	[masaje_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[limpieza]    Script Date: 10/04/2019 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[limpieza](
	[servicio_id] [int] NOT NULL,
	[limpieza_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_limpieza] PRIMARY KEY CLUSTERED 
(
	[limpieza_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[internet]    Script Date: 10/04/2019 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[internet](
	[servicio_id] [int] NOT NULL,
	[internet_id] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_internet] PRIMARY KEY CLUSTERED 
(
	[internet_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[habitacion]    Script Date: 10/04/2019 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[habitacion](
	[id_habitacion] [int] NOT NULL,
	[id_tipohabitacion] [int] NOT NULL,
	[servicio_id] [int] NULL,
	[estado_id] [int] NOT NULL,
 CONSTRAINT [PK_habitacion] PRIMARY KEY CLUSTERED 
(
	[id_habitacion] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[transporte]    Script Date: 10/04/2019 15:32:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[transporte](
	[servicio_id] [int] NOT NULL,
	[viaje_id] [int] NOT NULL,
	[fechasalida] [date] NOT NULL,
	[fechallegada] [date] NOT NULL,
	[hora] [time](7) NOT NULL,
 CONSTRAINT [PK_transporte] PRIMARY KEY CLUSTERED 
(
	[viaje_id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[cliente]    Script Date: 10/04/2019 15:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[cliente](
	[id_cliente] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[edad] [int] NOT NULL,
	[id_nacionalidad] [int] NOT NULL,
	[telefono] [int] NOT NULL,
	[pago_id] [int] NOT NULL,
 CONSTRAINT [PK_cliente] PRIMARY KEY CLUSTERED 
(
	[id_cliente] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[empleado]    Script Date: 10/04/2019 15:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[empleado](
	[id_empleado] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[apellido] [varchar](50) NOT NULL,
	[telefono] [int] NOT NULL,
	[direccion] [varchar](50) NOT NULL,
	[id_puesto] [int] NOT NULL,
	[salario] [int] NOT NULL,
 CONSTRAINT [PK_empleado] PRIMARY KEY CLUSTERED 
(
	[id_empleado] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[cliente_habitacion]    Script Date: 10/04/2019 15:32:50 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[cliente_habitacion](
	[id_cliente] [int] NOT NULL,
	[id_habitacion] [int] NOT NULL,
	[fechaentrada] [date] NOT NULL,
	[fechasalida] [date] NOT NULL
) ON [PRIMARY]
GO
/****** Object:  ForeignKey [FK__servicio___servi__276EDEB3]    Script Date: 10/04/2019 15:32:48 ******/
ALTER TABLE [dbo].[servicio_cuarto]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__masaje__servicio__25869641]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[masaje]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__limpieza__servic__24927208]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[limpieza]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__internet__servic__239E4DCF]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[internet]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__habitacio__estad__22AA2996]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([estado_id])
REFERENCES [dbo].[estado_habitacion] ([estado_id])
GO
/****** Object:  ForeignKey [FK__habitacio__id_ti__1FCDBCEB]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([id_tipohabitacion])
REFERENCES [dbo].[tipo_habitacion] ([id_tipohabitacion])
GO
/****** Object:  ForeignKey [FK__habitacio__servi__20C1E124]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__habitacio__servi__21B6055D]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[habitacion]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__transport__servi__267ABA7A]    Script Date: 10/04/2019 15:32:49 ******/
ALTER TABLE [dbo].[transporte]  WITH CHECK ADD FOREIGN KEY([servicio_id])
REFERENCES [dbo].[servicios] ([servicio_id])
GO
/****** Object:  ForeignKey [FK__cliente__id_naci__173876EA]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([id_nacionalidad])
REFERENCES [dbo].[nacionalidad] ([id_nacionalidad])
GO
/****** Object:  ForeignKey [FK__cliente__pago_id__182C9B23]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente]  WITH CHECK ADD FOREIGN KEY([pago_id])
REFERENCES [dbo].[metodo_pago] ([pago_id])
GO
/****** Object:  ForeignKey [FK__empleado__id_pue__1CF15040]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[empleado]  WITH CHECK ADD FOREIGN KEY([id_puesto])
REFERENCES [dbo].[puestos] ([id_puesto])
GO
/****** Object:  ForeignKey [FK__cliente_h__id_cl__1A14E395]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion]  WITH CHECK ADD FOREIGN KEY([id_cliente])
REFERENCES [dbo].[cliente] ([id_cliente])
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1B0907CE]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion]  WITH CHECK ADD FOREIGN KEY([id_habitacion])
REFERENCES [dbo].[habitacion] ([id_habitacion])
GO
/****** Object:  ForeignKey [FK__cliente_h__id_ha__1BFD2C07]    Script Date: 10/04/2019 15:32:50 ******/
ALTER TABLE [dbo].[cliente_habitacion]  WITH CHECK ADD FOREIGN KEY([id_habitacion])
REFERENCES [dbo].[habitacion] ([id_habitacion])
GO
