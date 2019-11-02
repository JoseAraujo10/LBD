USE [Hotel]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Servicios]') AND type in (N'U'))
ALTER TABLE [dbo].[Servicios] DROP CONSTRAINT IF EXISTS [FK__Servicios__idTip__72C60C4A]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__idTem__6A30C649]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__idSer__6E01572D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__idMet__6EF57B66]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__idHue__6C190EBB]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__idHot__6B24EA82]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reservaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Reservaciones] DROP CONSTRAINT IF EXISTS [FK__Reservaci__idHab__6D0D32F4]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT IF EXISTS [FK__Huesped__idPais__6383C8BA]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT IF EXISTS [FK__Huesped__idEstad__6477ECF3]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Huesped]') AND type in (N'U'))
ALTER TABLE [dbo].[Huesped] DROP CONSTRAINT IF EXISTS [FK__Huesped__idCiuda__656C112C]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__idPais__5EBF139D]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__idPais__5DCAEF64]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__idEstado__5FB337D6]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Hotel]') AND type in (N'U'))
ALTER TABLE [dbo].[Hotel] DROP CONSTRAINT IF EXISTS [FK__Hotel__idCiudad__628FA481]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Habitaciones] DROP CONSTRAINT IF EXISTS [FK__Habitacio__idTip__6FE99F9F]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Habitaciones]') AND type in (N'U'))
ALTER TABLE [dbo].[Habitaciones] DROP CONSTRAINT IF EXISTS [FK__Habitacio__idEst__70DDC3D8]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [FK__Empleados__idPue__693CA210]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [FK__Empleados__idPai__66603565]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [FK__Empleados__idEst__6754599E]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Empleados]') AND type in (N'U'))
ALTER TABLE [dbo].[Empleados] DROP CONSTRAINT IF EXISTS [FK__Empleados__idCiu__68487DD7]
GO
/****** Object:  Table [dbo].[Tipo_Servicios]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tipo_Servicios]
GO
/****** Object:  Table [dbo].[Tipo_Habitacion]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Tipo_Habitacion]
GO
/****** Object:  Table [dbo].[Temporada]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Temporada]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Servicios]
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Reservaciones]
GO
/****** Object:  Table [dbo].[Puesto_Empleado]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Puesto_Empleado]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Pais]
GO
/****** Object:  Table [dbo].[Metodo_Pago]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Metodo_Pago]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Huesped]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Hotel]
GO
/****** Object:  Table [dbo].[Habitaciones]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Habitaciones]
GO
/****** Object:  Table [dbo].[Estado_Habitacion]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Estado_Habitacion]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Estado]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Empleados]
GO
/****** Object:  Table [dbo].[Ciudad]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP TABLE IF EXISTS [dbo].[Ciudad]
GO
USE [master]
GO
/****** Object:  Database [Hotel]    Script Date: 01/11/2019 08:46:04 p. m. ******/
DROP DATABASE IF EXISTS [Hotel]
GO
/****** Object:  Database [Hotel]    Script Date: 01/11/2019 08:46:04 p. m. ******/
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
/****** Object:  Table [dbo].[Ciudad]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ciudad](
	[idCiudad] [int] NOT NULL,
	[Nombre_Ciudad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Ciudad] PRIMARY KEY CLUSTERED 
(
	[idCiudad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Empleados]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Empleados](
	[idEmpleado] [int] NOT NULL,
	[Nombre_Empleado] [varchar](20) NOT NULL,
	[ApellidoP_Empleado] [varchar](20) NOT NULL,
	[ApellidoM_Empleado] [varchar](20) NOT NULL,
	[Edad_Empleado] [int] NOT NULL,
	[idPais] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[idCiudad] [int] NOT NULL,
	[CalleNumero_Empleado] [varchar](50) NOT NULL,
	[CodigoPostal] [int] NOT NULL,
	[Telefono_Empleado] [bigint] NOT NULL,
	[CorreoEmpleado] [varchar](30) NOT NULL,
	[idPuesto] [int] NOT NULL,
 CONSTRAINT [PK_Empleados] PRIMARY KEY CLUSTERED 
(
	[idEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[idEstado] [int] NOT NULL,
	[Nombre_Estado] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado_Habitacion]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado_Habitacion](
	[idEstadoHabitacion] [int] NOT NULL,
	[Descripcion_Est] [varchar](20) NOT NULL,
 CONSTRAINT [PK_Estado_Habitacion] PRIMARY KEY CLUSTERED 
(
	[idEstadoHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Habitaciones]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Habitaciones](
	[idHabitacion] [int] NOT NULL,
	[idTipoHabitacion] [int] NOT NULL,
	[idEstadoHabitacion] [int] NOT NULL,
	[DetalleHabitacion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Habitaciones] PRIMARY KEY CLUSTERED 
(
	[idHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hotel]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hotel](
	[idHotel] [int] NOT NULL,
	[Nombre_Hotel] [varchar](50) NOT NULL,
	[Calificacion_Hotel] [varchar](20) NOT NULL,
	[idPais] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[idCiudad] [int] NOT NULL,
	[Calle_NumeroHotel] [varchar](50) NOT NULL,
	[CodigoPostal] [int] NOT NULL,
	[Telefono_Hotel] [bigint] NOT NULL,
	[Correo_Hotel] [varchar](30) NOT NULL,
	[ServiciosGenerales_Hotel] [varchar](100) NULL,
 CONSTRAINT [PK_Hotel] PRIMARY KEY CLUSTERED 
(
	[idHotel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Huesped]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Huesped](
	[idHuesped] [int] NOT NULL,
	[Nombre_Huesped] [varchar](20) NOT NULL,
	[ApellidoP_Huesped] [varchar](20) NOT NULL,
	[ApellidoM_Huesped] [varchar](20) NOT NULL,
	[Edad_Huesped] [int] NOT NULL,
	[idPais] [int] NOT NULL,
	[idEstado] [int] NOT NULL,
	[idCiudad] [int] NOT NULL,
	[CalleNumero_Huesped] [varchar](50) NOT NULL,
	[CodigoPostal] [int] NOT NULL,
	[Telefono_Huesped] [bigint] NOT NULL,
	[Correo_Huesped] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Huesped] PRIMARY KEY CLUSTERED 
(
	[idHuesped] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Metodo_Pago]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Metodo_Pago](
	[idMetodoPago] [int] NOT NULL,
	[NumeroTarjeta] [bigint] NOT NULL,
	[TipoTarjeta] [varchar](30) NOT NULL,
 CONSTRAINT [PK_Metodo_Pago] PRIMARY KEY CLUSTERED 
(
	[idMetodoPago] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[idPais] [int] NOT NULL,
	[Nombre_Pais] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[idPais] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Puesto_Empleado]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Puesto_Empleado](
	[idPuesto] [int] NOT NULL,
	[Nombre_Puesto] [varchar](50) NOT NULL,
	[Descripcion_Puesto] [varchar](100) NULL,
	[Salario_Puesto] [money] NOT NULL,
 CONSTRAINT [PK_Puesto_Empleado] PRIMARY KEY CLUSTERED 
(
	[idPuesto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reservaciones]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservaciones](
	[idReservacion] [int] NOT NULL,
	[idTemporada] [int] NOT NULL,
	[idHotel] [int] NOT NULL,
	[idHuesped] [int] NOT NULL,
	[NumeroPersonas] [smallint] NOT NULL,
	[FechaEntrada] [date] NOT NULL,
	[FechaSalida] [date] NOT NULL,
	[idHabitacion] [int] NOT NULL,
	[idServicio] [int] NOT NULL,
	[idMetodoPago] [int] NOT NULL,
	[MontoTotal] [money] NOT NULL,
	[MotivoVisita] [varchar](50) NOT NULL,
	[DescripcionExtra] [varchar](100) NULL,
 CONSTRAINT [PK_Reservaciones] PRIMARY KEY CLUSTERED 
(
	[idReservacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Servicios]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Servicios](
	[idServicio] [int] NOT NULL,
	[idTipoServicio] [int] NOT NULL,
	[Fecha_Servicio] [date] NOT NULL,
	[Precio_Servicio] [money] NOT NULL,
 CONSTRAINT [PK_Servicios] PRIMARY KEY CLUSTERED 
(
	[idServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Temporada]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Temporada](
	[idTemporada] [int] NOT NULL,
	[Nombre_Temporada] [varchar](30) NOT NULL,
	[FechaInicio_Temporada] [date] NOT NULL,
	[FechaFinal_Temporada] [date] NOT NULL,
 CONSTRAINT [PK_Temporada] PRIMARY KEY CLUSTERED 
(
	[idTemporada] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Habitacion]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Habitacion](
	[idTipoHabitacion] [int] NOT NULL,
	[Nombre_TipoHab] [varchar](30) NOT NULL,
	[Descripcion_TipoHab] [varchar](50) NOT NULL,
	[Capacidad_TipoHab] [smallint] NOT NULL,
	[Precio_TipoHab] [money] NOT NULL,
 CONSTRAINT [PK_Tipo_Habitacion] PRIMARY KEY CLUSTERED 
(
	[idTipoHabitacion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Tipo_Servicios]    Script Date: 01/11/2019 08:46:04 p. m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Servicios](
	[idTipoServicio] [int] NOT NULL,
	[DescripcionTipoServicio] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Tipo_Servicios] PRIMARY KEY CLUSTERED 
(
	[idTipoServicio] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (1, N'Monterrey')
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (2, N'San Nicolas')
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (3, N'Ciudad No Asignada (America)')
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (4, N'Ciudad No Asignada (Asia)')
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (5, N'Ciudad No Asignada (Africa)')
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (6, N'Ciudad No Asignada (Europa)')
GO
INSERT [dbo].[Ciudad] ([idCiudad], [Nombre_Ciudad]) VALUES (7, N'Ciudad No Asignada (Oceania)')
GO
INSERT [dbo].[Empleados] ([idEmpleado], [Nombre_Empleado], [ApellidoP_Empleado], [ApellidoM_Empleado], [Edad_Empleado], [idPais], [idEstado], [idCiudad], [CalleNumero_Empleado], [CodigoPostal], [Telefono_Empleado], [CorreoEmpleado], [idPuesto]) VALUES (1, N'Alexis', N'Bliss', N'Kaufman', 28, 4, 7, 3, N'Canada Pl #404', 999, 42020899, N'lexikauf@hotmail.com', 2)
GO
INSERT [dbo].[Empleados] ([idEmpleado], [Nombre_Empleado], [ApellidoP_Empleado], [ApellidoM_Empleado], [Edad_Empleado], [idPais], [idEstado], [idCiudad], [CalleNumero_Empleado], [CodigoPostal], [Telefono_Empleado], [CorreoEmpleado], [idPuesto]) VALUES (2, N'Manuel', N'Andrade', N'Oropeza', 29, 18, 35, 3, N'Dr. Andrade 140-A', 6720, 55789140, N'mannyandrade@hotmail.com', 3)
GO
INSERT [dbo].[Empleados] ([idEmpleado], [Nombre_Empleado], [ApellidoP_Empleado], [ApellidoM_Empleado], [Edad_Empleado], [idPais], [idEstado], [idCiudad], [CalleNumero_Empleado], [CodigoPostal], [Telefono_Empleado], [CorreoEmpleado], [idPuesto]) VALUES (3, N'Catherine', N'Joy', N'Perry', 31, 24, 47, 6, N'Nevsky Ave 56', 19101, 24566666, N'catjp@hotmail.com', 1)
GO
INSERT [dbo].[Empleados] ([idEmpleado], [Nombre_Empleado], [ApellidoP_Empleado], [ApellidoM_Empleado], [Edad_Empleado], [idPais], [idEstado], [idCiudad], [CalleNumero_Empleado], [CodigoPostal], [Telefono_Empleado], [CorreoEmpleado], [idPuesto]) VALUES (4, N'Ammanda', N'Rose', N' Saccomanno', 28, 16, 31, 6, N'Alcamo TP 66', 91011, 23516024, N'amros@hotmail.com', 2)
GO
INSERT [dbo].[Empleados] ([idEmpleado], [Nombre_Empleado], [ApellidoP_Empleado], [ApellidoM_Empleado], [Edad_Empleado], [idPais], [idEstado], [idCiudad], [CalleNumero_Empleado], [CodigoPostal], [Telefono_Empleado], [CorreoEmpleado], [idPuesto]) VALUES (5, N'Colby', N'Rollins', N'Lopez', 33, 13, 26, 3, N'1290 6th Ave 2nd Floo', 10104, 22227000, N'colbyrl@hotmail.com', 4)
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (1, N'Berlin')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (2, N'Hamburgo')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (3, N'Buenos Aires')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (4, N'Cordoba')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (5, N'Brasilia')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (6, N'Rio de Janeiro')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (7, N'Ottawa')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (8, N'Toronto')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (9, N'Santiago')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (10, N'Valparaiso')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (11, N'Pekin')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (12, N'Shangai')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (13, N'Bogota')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (14, N'Bolivar')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (15, N'Pionyang')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (16, N'Rason')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (17, N'Seul')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (18, N'Busan')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (19, N'San Jose')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (20, N'Alajuela')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (21, N'El Cairo')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (22, N'Mar Rojo')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (23, N'Madrid')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (24, N'Cataluña')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (25, N'Washington')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (26, N'Nueva York')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (27, N'Paris')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (28, N'Lyon')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (29, N'Nueva Delhi')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (30, N'Guyarat')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (31, N'Roma')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (32, N'Milan')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (33, N'Tokio')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (34, N'Osaka')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (35, N'Ciudad de México')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (36, N'Nuevo Leon')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (37, N'Abuya')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (38, N'Niger')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (39, N'Ámsterdam')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (40, N'Roterdam')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (41, N'Varsovia')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (42, N'Lublin')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (43, N'Lisboa')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (44, N'Oporto')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (45, N'Londres')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (46, N'Manchester')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (47, N'Moscu')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (48, N'Leningrado')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (49, N'Montevideo')
GO
INSERT [dbo].[Estado] ([idEstado], [Nombre_Estado]) VALUES (50, N'Salto')
GO
INSERT [dbo].[Estado_Habitacion] ([idEstadoHabitacion], [Descripcion_Est]) VALUES (1, N'Disponible')
GO
INSERT [dbo].[Estado_Habitacion] ([idEstadoHabitacion], [Descripcion_Est]) VALUES (2, N'Ocupado')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (1, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (2, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (3, 1, 2, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (4, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (5, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (6, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (7, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (8, 1, 2, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (9, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (10, 1, 1, N'Habitacion perteneciente al primer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (11, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (12, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (13, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (14, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (15, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (16, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (17, 2, 2, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (18, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (19, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (20, 2, 1, N'Habitacion perteneciente al segundo piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (21, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (22, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (23, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (24, 3, 2, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (25, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (26, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (27, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (28, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (29, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (30, 3, 1, N'Habitacion perteneciente al tercer piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (31, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (32, 4, 2, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (33, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (34, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (35, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (36, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (37, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (38, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (39, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Habitaciones] ([idHabitacion], [idTipoHabitacion], [idEstadoHabitacion], [DetalleHabitacion]) VALUES (40, 4, 1, N'Habitacion perteneciente al cuarto piso del hotel')
GO
INSERT [dbo].[Hotel] ([idHotel], [Nombre_Hotel], [Calificacion_Hotel], [idPais], [idEstado], [idCiudad], [Calle_NumeroHotel], [CodigoPostal], [Telefono_Hotel], [Correo_Hotel], [ServiciosGenerales_Hotel]) VALUES (1, N'Hack-Inn', N'5 estrellas', 18, 36, 2, N'Ave. Universidad Norte 101', 66450, 81580000, N'hackinn@hotmail.com', N'Hotel perteneciente a International Hotel Group')
GO
INSERT [dbo].[Huesped] ([idHuesped], [Nombre_Huesped], [ApellidoP_Huesped], [ApellidoM_Huesped], [Edad_Huesped], [idPais], [idEstado], [idCiudad], [CalleNumero_Huesped], [CodigoPostal], [Telefono_Huesped], [Correo_Huesped]) VALUES (1, N'Allen', N'Styles', N'Jones', 42, 13, 26, 3, N'1203 Zaragoza St', 78040, 63079168, N'ajph1@hotmail.com')
GO
INSERT [dbo].[Huesped] ([idHuesped], [Nombre_Huesped], [ApellidoP_Huesped], [ApellidoM_Huesped], [Edad_Huesped], [idPais], [idEstado], [idCiudad], [CalleNumero_Huesped], [CodigoPostal], [Telefono_Huesped], [Correo_Huesped]) VALUES (2, N'Rebecca', N'Lynch', N' Quin', 32, 23, 45, 6, N' 88 High St', 78040, 1235986, N'beclyn@hotmail.com')
GO
INSERT [dbo].[Huesped] ([idHuesped], [Nombre_Huesped], [ApellidoP_Huesped], [ApellidoM_Huesped], [Edad_Huesped], [idPais], [idEstado], [idCiudad], [CalleNumero_Huesped], [CodigoPostal], [Telefono_Huesped], [Correo_Huesped]) VALUES (3, N'Ashley', N'Flair', N'Raymond', 33, 14, 27, 6, N'36 Rue dAboukir', 75002, 84429279, N'asfli@hotmail.com')
GO
INSERT [dbo].[Huesped] ([idHuesped], [Nombre_Huesped], [ApellidoP_Huesped], [ApellidoM_Huesped], [Edad_Huesped], [idPais], [idEstado], [idCiudad], [CalleNumero_Huesped], [CodigoPostal], [Telefono_Huesped], [Correo_Huesped]) VALUES (4, N'Bryan', N'Loyd', N'Danielson', 38, 13, 26, 3, N'360 Rainbow Blvd', 14303, 63043622, N'brydan@hotmail.com')
GO
INSERT [dbo].[Huesped] ([idHuesped], [Nombre_Huesped], [ApellidoP_Huesped], [ApellidoM_Huesped], [Edad_Huesped], [idPais], [idEstado], [idCiudad], [CalleNumero_Huesped], [CodigoPostal], [Telefono_Huesped], [Correo_Huesped]) VALUES (5, N'Jeffrey', N'Hardy', N'Nero', 42, 2, 3, 3, N'Av. de los Incas 4672', 14274, 44235124, N'jeffhn@hotmail.com')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (1, 1, N'Aerolinea')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (2, 2, N'Aerolinea')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (3, 3, N'Viajes (American Express)')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (4, 4, N'Bancos (Visa)')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (5, 5, N'Bancos (Mastercard)')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (6, 6, N'Bancos (Otros)')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (7, 7, N'Sector petrolífero')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (8, 8, N'Telecomunicacion')
GO
INSERT [dbo].[Metodo_Pago] ([idMetodoPago], [NumeroTarjeta], [TipoTarjeta]) VALUES (9, 9, N'Asignacion Nacional')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (1, N'Alemania')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (2, N'Argentina')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (3, N'Brasil')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (4, N'Canada')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (5, N'Chile')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (6, N'China')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (7, N'Colombia')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (8, N'Corea del Norte')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (9, N'Corea del Sur')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (10, N'Costa Rica')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (11, N'Egipto')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (12, N'España')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (13, N'Estados Unidos')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (14, N'Francia')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (15, N'India')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (16, N'Italia')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (17, N'Japon')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (18, N'Mexico')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (19, N'Nigeria')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (20, N'Paises Bajos')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (21, N'Polonia')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (22, N'Portugal')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (23, N'Reino Unido')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (24, N'Rusia')
GO
INSERT [dbo].[Pais] ([idPais], [Nombre_Pais]) VALUES (25, N'Uruguay')
GO
INSERT [dbo].[Puesto_Empleado] ([idPuesto], [Nombre_Puesto], [Descripcion_Puesto], [Salario_Puesto]) VALUES (1, N'Recepcion', N'Se encargan de llever el registro de entradas y salidas del hotel ', 7000.0000)
GO
INSERT [dbo].[Puesto_Empleado] ([idPuesto], [Nombre_Puesto], [Descripcion_Puesto], [Salario_Puesto]) VALUES (2, N'Limpieza', N'Se encargan de mantener la higiene de las habitaciones ', 3000.0000)
GO
INSERT [dbo].[Puesto_Empleado] ([idPuesto], [Nombre_Puesto], [Descripcion_Puesto], [Salario_Puesto]) VALUES (3, N'Gerente', N'Responsable del funcionamiento general del hotel y de la calidad del servicio', 10000.0000)
GO
INSERT [dbo].[Puesto_Empleado] ([idPuesto], [Nombre_Puesto], [Descripcion_Puesto], [Salario_Puesto]) VALUES (4, N'Boton', N'Se encarga de recibir a los huespedes y guiarlos hasta su habitación', 5000.0000)
GO
INSERT [dbo].[Reservaciones] ([idReservacion], [idTemporada], [idHotel], [idHuesped], [NumeroPersonas], [FechaEntrada], [FechaSalida], [idHabitacion], [idServicio], [idMetodoPago], [MontoTotal], [MotivoVisita], [DescripcionExtra]) VALUES (1, 3, 1, 1, 3, CAST(N'2020-06-02' AS Date), CAST(N'2020-06-04' AS Date), 24, 11, 2, 3000.0000, N'Vacaciones', N'Sin descripción extra')
GO
INSERT [dbo].[Reservaciones] ([idReservacion], [idTemporada], [idHotel], [idHuesped], [NumeroPersonas], [FechaEntrada], [FechaSalida], [idHabitacion], [idServicio], [idMetodoPago], [MontoTotal], [MotivoVisita], [DescripcionExtra]) VALUES (2, 2, 1, 2, 1, CAST(N'2020-01-30' AS Date), CAST(N'2020-01-31' AS Date), 8, 2, 3, 1500.0000, N'Trabajo', N'Sin descripción extra')
GO
INSERT [dbo].[Reservaciones] ([idReservacion], [idTemporada], [idHotel], [idHuesped], [NumeroPersonas], [FechaEntrada], [FechaSalida], [idHabitacion], [idServicio], [idMetodoPago], [MontoTotal], [MotivoVisita], [DescripcionExtra]) VALUES (3, 3, 1, 3, 4, CAST(N'2020-04-05' AS Date), CAST(N'2020-04-08' AS Date), 32, 7, 4, 4000.0000, N'Vacaciones', N'Sin descripción extra')
GO
INSERT [dbo].[Reservaciones] ([idReservacion], [idTemporada], [idHotel], [idHuesped], [NumeroPersonas], [FechaEntrada], [FechaSalida], [idHabitacion], [idServicio], [idMetodoPago], [MontoTotal], [MotivoVisita], [DescripcionExtra]) VALUES (4, 3, 1, 4, 1, CAST(N'2020-05-22' AS Date), CAST(N'2020-05-27' AS Date), 3, 15, 5, 1500.0000, N'Trabajo', N'Sin descripción extra')
GO
INSERT [dbo].[Reservaciones] ([idReservacion], [idTemporada], [idHotel], [idHuesped], [NumeroPersonas], [FechaEntrada], [FechaSalida], [idHabitacion], [idServicio], [idMetodoPago], [MontoTotal], [MotivoVisita], [DescripcionExtra]) VALUES (5, 4, 1, 5, 2, CAST(N'2020-08-31' AS Date), CAST(N'2020-09-05' AS Date), 17, 20, 6, 2300.0000, N'Vacaciones', N'Sin descripción extra')
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (1, 1, CAST(N'2019-09-21' AS Date), 300.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (2, 1, CAST(N'2019-12-21' AS Date), 300.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (3, 1, CAST(N'2020-03-21' AS Date), 300.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (4, 1, CAST(N'2020-06-21' AS Date), 300.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (5, 2, CAST(N'2019-09-21' AS Date), 1200.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (6, 2, CAST(N'2019-12-21' AS Date), 500.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (7, 2, CAST(N'2020-03-21' AS Date), 1700.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (8, 2, CAST(N'2020-06-21' AS Date), 1500.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (9, 3, CAST(N'2019-09-21' AS Date), 1100.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (10, 3, CAST(N'2019-12-21' AS Date), 1100.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (11, 3, CAST(N'2020-03-21' AS Date), 1100.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (12, 3, CAST(N'2020-06-21' AS Date), 1100.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (13, 4, CAST(N'2019-09-21' AS Date), 400.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (14, 4, CAST(N'2019-12-21' AS Date), 400.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (15, 4, CAST(N'2020-03-21' AS Date), 400.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (16, 4, CAST(N'2020-06-21' AS Date), 400.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (17, 5, CAST(N'2019-09-21' AS Date), 750.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (18, 5, CAST(N'2019-12-21' AS Date), 750.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (19, 5, CAST(N'2020-03-21' AS Date), 750.0000)
GO
INSERT [dbo].[Servicios] ([idServicio], [idTipoServicio], [Fecha_Servicio], [Precio_Servicio]) VALUES (20, 5, CAST(N'2020-06-21' AS Date), 750.0000)
GO
INSERT [dbo].[Temporada] ([idTemporada], [Nombre_Temporada], [FechaInicio_Temporada], [FechaFinal_Temporada]) VALUES (1, N'Otoño 2019', CAST(N'2019-09-21' AS Date), CAST(N'2019-12-20' AS Date))
GO
INSERT [dbo].[Temporada] ([idTemporada], [Nombre_Temporada], [FechaInicio_Temporada], [FechaFinal_Temporada]) VALUES (2, N'Invierno 2019', CAST(N'2019-12-21' AS Date), CAST(N'2020-03-20' AS Date))
GO
INSERT [dbo].[Temporada] ([idTemporada], [Nombre_Temporada], [FechaInicio_Temporada], [FechaFinal_Temporada]) VALUES (3, N'Primavera 2020', CAST(N'2020-03-21' AS Date), CAST(N'2020-06-20' AS Date))
GO
INSERT [dbo].[Temporada] ([idTemporada], [Nombre_Temporada], [FechaInicio_Temporada], [FechaFinal_Temporada]) VALUES (4, N'Verano 2020', CAST(N'2020-06-21' AS Date), CAST(N'2020-09-20' AS Date))
GO
INSERT [dbo].[Tipo_Habitacion] ([idTipoHabitacion], [Nombre_TipoHab], [Descripcion_TipoHab], [Capacidad_TipoHab], [Precio_TipoHab]) VALUES (1, N'Individual', N'Habitacion para 1 persona', 1, 1100.0000)
GO
INSERT [dbo].[Tipo_Habitacion] ([idTipoHabitacion], [Nombre_TipoHab], [Descripcion_TipoHab], [Capacidad_TipoHab], [Precio_TipoHab]) VALUES (2, N'Doble', N'Habitacion para 2 personas', 2, 1500.0000)
GO
INSERT [dbo].[Tipo_Habitacion] ([idTipoHabitacion], [Nombre_TipoHab], [Descripcion_TipoHab], [Capacidad_TipoHab], [Precio_TipoHab]) VALUES (3, N'Matrimonial', N'Habitacion con 2 camas matrimonial', 4, 1900.0000)
GO
INSERT [dbo].[Tipo_Habitacion] ([idTipoHabitacion], [Nombre_TipoHab], [Descripcion_TipoHab], [Capacidad_TipoHab], [Precio_TipoHab]) VALUES (4, N'Suite', N'Habitacion con un sofacama', 4, 2200.0000)
GO
INSERT [dbo].[Tipo_Servicios] ([idTipoServicio], [DescripcionTipoServicio]) VALUES (1, N'Desayuno')
GO
INSERT [dbo].[Tipo_Servicios] ([idTipoServicio], [DescripcionTipoServicio]) VALUES (2, N'Piscina')
GO
INSERT [dbo].[Tipo_Servicios] ([idTipoServicio], [DescripcionTipoServicio]) VALUES (3, N'Spa')
GO
INSERT [dbo].[Tipo_Servicios] ([idTipoServicio], [DescripcionTipoServicio]) VALUES (4, N'Wi-fi')
GO
INSERT [dbo].[Tipo_Servicios] ([idTipoServicio], [DescripcionTipoServicio]) VALUES (5, N'Bar')
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudad] ([idCiudad])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Empleados]  WITH CHECK ADD FOREIGN KEY([idPuesto])
REFERENCES [dbo].[Puesto_Empleado] ([idPuesto])
GO
ALTER TABLE [dbo].[Habitaciones]  WITH CHECK ADD FOREIGN KEY([idEstadoHabitacion])
REFERENCES [dbo].[Estado_Habitacion] ([idEstadoHabitacion])
GO
ALTER TABLE [dbo].[Habitaciones]  WITH CHECK ADD FOREIGN KEY([idTipoHabitacion])
REFERENCES [dbo].[Tipo_Habitacion] ([idTipoHabitacion])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudad] ([idCiudad])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Hotel]  WITH CHECK ADD FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([idCiudad])
REFERENCES [dbo].[Ciudad] ([idCiudad])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([idEstado])
GO
ALTER TABLE [dbo].[Huesped]  WITH CHECK ADD FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([idPais])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([idHabitacion])
REFERENCES [dbo].[Habitaciones] ([idHabitacion])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([idHotel])
REFERENCES [dbo].[Hotel] ([idHotel])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([idHuesped])
REFERENCES [dbo].[Huesped] ([idHuesped])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([idMetodoPago])
REFERENCES [dbo].[Metodo_Pago] ([idMetodoPago])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([idServicio])
REFERENCES [dbo].[Servicios] ([idServicio])
GO
ALTER TABLE [dbo].[Reservaciones]  WITH CHECK ADD FOREIGN KEY([idTemporada])
REFERENCES [dbo].[Temporada] ([idTemporada])
GO
ALTER TABLE [dbo].[Servicios]  WITH CHECK ADD FOREIGN KEY([idTipoServicio])
REFERENCES [dbo].[Tipo_Servicios] ([idTipoServicio])
GO
USE [master]
GO
ALTER DATABASE [Hotel] SET  READ_WRITE 
GO
