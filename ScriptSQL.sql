USE [master]
GO
/****** Object:  Database [Prueba3]    Script Date: 06-06-19 22:26:58 ******/
CREATE DATABASE [Prueba3]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Prueba3', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Prueba3.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Prueba3_log', FILENAME = N'c:\Program Files\Microsoft SQL Server\MSSQL11.SQLEXPRESS\MSSQL\DATA\Prueba3_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Prueba3] SET COMPATIBILITY_LEVEL = 110
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Prueba3].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Prueba3] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Prueba3] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Prueba3] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Prueba3] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Prueba3] SET ARITHABORT OFF 
GO
ALTER DATABASE [Prueba3] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Prueba3] SET AUTO_CREATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba3] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Prueba3] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Prueba3] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Prueba3] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Prueba3] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Prueba3] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Prueba3] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Prueba3] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Prueba3] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Prueba3] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Prueba3] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Prueba3] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Prueba3] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Prueba3] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Prueba3] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Prueba3] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Prueba3] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Prueba3] SET  MULTI_USER 
GO
ALTER DATABASE [Prueba3] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Prueba3] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Prueba3] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Prueba3] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
USE [Prueba3]
GO
/****** Object:  Table [dbo].[Camion_Camionero]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camion_Camionero](
	[Cod_Cam_Camiones] [int] IDENTITY(1,1) NOT NULL,
	[Rut] [int] NULL,
	[Id_Camion] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Camion_Camionero] PRIMARY KEY CLUSTERED 
(
	[Cod_Cam_Camiones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camionero]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camionero](
	[Rut] [int] NOT NULL,
	[Dv] [nvarchar](9) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [nvarchar](50) NULL,
	[Salario] [int] NULL,
	[Poblacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Camionero] PRIMARY KEY CLUSTERED 
(
	[Rut] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[Id_Camion] [int] IDENTITY(1,1) NOT NULL,
	[Matricula] [nvarchar](6) NULL,
	[Tipo] [int] NULL,
	[Potencia] [int] NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[Id_Camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comuna](
	[Cod_Comuna] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
	[Cod_Provincia] [int] NULL,
 CONSTRAINT [PK_Comuna] PRIMARY KEY CLUSTERED 
(
	[Cod_Comuna] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Paquete]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[Cod_Paquete] [int] NOT NULL,
	[Descripcion] [nvarchar](100) NOT NULL,
	[Destinatario] [nvarchar](50) NOT NULL,
	[Direc_Destinatario] [nvarchar](50) NOT NULL,
	[Cod_Comuna] [int] NOT NULL,
	[Rut] [int] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[Cod_Paquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Cod_Provincia] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Cod_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Camion]    Script Date: 06-06-19 22:26:58 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Camion](
	[Tipo] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tipo_Camion] PRIMARY KEY CLUSTERED 
(
	[Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Camion_Camionero] ON 

INSERT [dbo].[Camion_Camionero] ([Cod_Cam_Camiones], [Rut], [Id_Camion], [Fecha]) VALUES (5, 12345678, 8, CAST(0x0000AA640164BE90 AS DateTime))
SET IDENTITY_INSERT [dbo].[Camion_Camionero] OFF
INSERT [dbo].[Camionero] ([Rut], [Dv], [Nombre], [Telefono], [Direccion], [Salario], [Poblacion]) VALUES (12345678, N'k', N'Test', 1234567, N'Test', 500000, N'Test')
SET IDENTITY_INSERT [dbo].[Camiones] ON 

INSERT [dbo].[Camiones] ([Id_Camion], [Matricula], [Tipo], [Potencia]) VALUES (8, N'ABCD12', 1, 10000)
INSERT [dbo].[Camiones] ([Id_Camion], [Matricula], [Tipo], [Potencia]) VALUES (9, N'YZ0987', 1, 10000)
SET IDENTITY_INSERT [dbo].[Camiones] OFF
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (1, N'Arica', 1)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (2, N'Camarones', 1)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (3, N'Putre', 2)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (4, N'General Lagos', 2)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (5, N'Iquique', 3)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (6, N'Alto Hospicio', 3)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (7, N'Pozo Almonte', 4)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (8, N'Camiña', 4)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (9, N'Colchane', 4)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (10, N'Huara', 4)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (11, N'Pica', 4)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (12, N'Antofagasta', 5)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (13, N'Mejillones', 5)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (14, N'Sierra Gorda', 5)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (15, N'Taltal', 5)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (16, N'Calama', 6)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (17, N'Ollagüe', 6)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (18, N'San Pedro de Atacama', 6)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (19, N'Tocopilla', 7)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (20, N'María Elena', 7)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (21, N'Copiapó', 8)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (22, N'Caldera', 8)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (23, N'Tierra Amarilla', 8)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (24, N'Chañaral', 9)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (25, N'Diego de Almagro', 9)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (26, N'Vallenar', 10)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (27, N'Alto del Carmen', 10)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (28, N'Freirina', 10)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (29, N'Huasco', 10)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (30, N'La Serena', 11)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (31, N'Coquimbo', 11)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (32, N'Andacollo', 11)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (33, N'La Higuera', 11)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (34, N'Paiguano', 11)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (35, N'Vicuña', 11)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (36, N'Illapel', 12)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (37, N'Canela', 12)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (38, N'Los Vilos', 12)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (39, N'Salamanca', 12)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (40, N'Ovalle', 13)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (41, N'Combarbalá', 13)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (42, N'Monte Patria', 13)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (43, N'Punitaqui', 13)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (44, N'Río Hurtado', 13)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (45, N'Valparaíso', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (46, N'Casablanca', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (47, N'Concón', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (48, N'Juan Fernández', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (49, N'Puchuncaví', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (50, N'Quilpué', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (51, N'Quintero', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (52, N'Villa Alemana', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (53, N'Viña del Mar', 14)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (54, N'Isla de Pascua', 15)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (55, N'Los Andes', 16)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (56, N'Calle Larga', 16)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (57, N'Rinconada', 16)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (58, N'San Esteban', 16)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (59, N'La Ligua', 17)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (60, N'Cabildo', 17)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (61, N'Papudo', 17)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (62, N'Petorca', 17)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (63, N'Zapallar', 17)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (64, N'Quillota', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (65, N'Calera', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (66, N'Hijuelas', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (67, N'La Cruz', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (68, N'Limache', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (69, N'Nogales', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (70, N'Olmué', 18)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (71, N'San Antonio', 19)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (72, N'Algarrobo', 19)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (73, N'Cartagena', 19)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (74, N'El Quisco', 19)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (75, N'El Tabo', 19)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (76, N'Santo Domingo', 19)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (77, N'San Felipe', 20)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (78, N'Catemu', 20)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (79, N'Llaillay', 20)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (80, N'Panquehue', 20)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (81, N'Putaendo', 20)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (82, N'Santa María', 20)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (83, N'Rancagua', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (84, N'Codegua', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (85, N'Coinco', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (86, N'Coltauco', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (87, N'Doñihue', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (88, N'Graneros', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (89, N'Las Cabras', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (90, N'Machalí', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (91, N'Malloa', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (92, N'Mostazal', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (93, N'Olivar', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (94, N'Peumo', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (95, N'Pichidegua', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (96, N'Quinta de Tilcoco', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (97, N'Rengo', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (98, N'Requínoa', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (99, N'San Vicente', 21)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (100, N'Pichilemu', 22)
GO
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (101, N'La Estrella', 22)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (102, N'Litueche', 22)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (103, N'Marchihue', 22)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (104, N'Navidad', 22)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (105, N'Paredones', 22)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (106, N'San Fernando', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (107, N'Chépica', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (108, N'Chimbarongo', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (109, N'Lolol', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (110, N'Nancagua', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (111, N'Palmilla', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (112, N'Peralillo', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (113, N'Placilla', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (114, N'Pumanque', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (115, N'Santa Cruz', 23)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (116, N'Talca', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (117, N'Constitución', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (118, N'Curepto', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (119, N'Empedrado', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (120, N'Maule', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (121, N'Pelarco', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (122, N'Pencahue', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (123, N'Río Claro', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (124, N'San Clemente', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (125, N'San Rafael', 24)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (126, N'Cauquenes', 25)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (127, N'Chanco', 25)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (128, N'Pelluhue', 25)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (129, N'Curicó', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (130, N'Hualañé', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (131, N'Licantén', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (132, N'Molina', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (133, N'Rauco', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (134, N'Romeral', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (135, N'Sagrada Familia', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (136, N'Teno', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (137, N'Vichuquén', 26)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (138, N'Linares', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (139, N'Colbún', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (140, N'Longaví', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (141, N'Parral', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (142, N'Retiro', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (143, N'San Javier', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (144, N'Villa Alegre', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (145, N'Yerbas Buenas', 27)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (146, N'Concepción', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (147, N'Coronel', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (148, N'Chiguayante', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (149, N'Florida', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (150, N'Hualqui', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (151, N'Lota', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (152, N'Penco', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (153, N'San Pedro de la Paz', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (154, N'Santa Juana', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (155, N'Talcahuano', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (156, N'Tomé', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (157, N'Hualpén', 28)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (158, N'Lebu', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (159, N'Arauco', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (160, N'Cañete', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (161, N'Contulmo', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (162, N'Curanilahue', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (163, N'Los Álamos', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (164, N'Tirúa', 29)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (165, N'Los Ángeles', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (166, N'Antuco', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (167, N'Cabrero', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (168, N'Laja', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (169, N'Mulchén', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (170, N'Nacimiento', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (171, N'Negrete', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (172, N'Quilaco', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (173, N'Quilleco', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (174, N'San Rosendo', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (175, N'Santa Bárbara', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (176, N'Tucapel', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (177, N'Yumbel', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (178, N'Alto Biobío', 30)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (179, N'Chillán', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (180, N'Bulnes', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (181, N'Cobquecura', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (182, N'Coelemu', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (183, N'Coihueco', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (184, N'Chillán Viejo', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (185, N'El Carmen', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (186, N'Ninhue', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (187, N'Ñiquén', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (188, N'Pemuco', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (189, N'Pinto', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (190, N'Portezuelo', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (191, N'Quillón', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (192, N'Quirihue', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (193, N'Ránquil', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (194, N'San Carlos', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (195, N'San Fabián', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (196, N'San Ignacio', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (197, N'San Nicolás', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (198, N'Treguaco', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (199, N'Yungay', 31)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (200, N'Temuco', 32)
GO
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (201, N'Carahue', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (202, N'Cunco', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (203, N'Curarrehue', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (204, N'Freire', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (205, N'Galvarino', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (206, N'Gorbea', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (207, N'Lautaro', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (208, N'Loncoche', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (209, N'Melipeuco', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (210, N'Nueva Imperial', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (211, N'Padre Las Casas', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (212, N'Perquenco', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (213, N'Pitrufquén', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (214, N'Pucón', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (215, N'Saavedra', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (216, N'Teodoro Schmidt', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (217, N'Toltén', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (218, N'Vilcún', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (219, N'Villarrica', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (220, N'Cholchol', 32)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (221, N'Angol', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (222, N'Collipulli', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (223, N'Curacautín', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (224, N'Ercilla', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (225, N'Lonquimay', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (226, N'Los Sauces', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (227, N'Lumaco', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (228, N'Purén', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (229, N'Renaico', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (230, N'Traiguén', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (231, N'Victoria', 33)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (232, N'Valdivia', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (233, N'Corral', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (234, N'Lanco', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (235, N'Los Lagos', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (236, N'Máfil', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (237, N'Mariquina', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (238, N'Paillaco', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (239, N'Panguipulli', 34)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (240, N'La Unión', 35)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (241, N'Futrono', 35)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (242, N'Lago Ranco', 35)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (243, N'Río Bueno', 35)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (244, N'Puerto Montt', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (245, N'Calbuco', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (246, N'Cochamó', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (247, N'Fresia', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (248, N'Frutillar', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (249, N'Los Muermos', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (250, N'Llanquihue', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (251, N'Maullín', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (252, N'Puerto Varas', 36)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (253, N'Castro', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (254, N'Ancud', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (255, N'Chonchi', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (256, N'Curaco de Vélez', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (257, N'Dalcahue', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (258, N'Puqueldón', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (259, N'Queilén', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (260, N'Quellón', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (261, N'Quemchi', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (262, N'Quinchao', 37)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (263, N'Osorno', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (264, N'Puerto Octay', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (265, N'Purranque', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (266, N'Puyehue', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (267, N'Río Negro', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (268, N'San Juan de la Costa', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (269, N'San Pablo', 38)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (270, N'Chaitén', 39)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (271, N'Futaleufú', 39)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (272, N'Hualaihué', 39)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (273, N'Palena', 39)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (274, N'Coyhaique', 40)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (275, N'Lago Verde', 40)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (276, N'Aysén', 41)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (277, N'Cisnes', 41)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (278, N'Guaitecas', 41)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (279, N'Cochrane', 42)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (280, N'O''Higgins', 42)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (281, N'Tortel', 42)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (282, N'Chile Chico', 43)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (283, N'Río Ibáñez', 43)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (284, N'Punta Arenas', 44)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (285, N'Laguna Blanca', 44)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (286, N'Río Verde', 44)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (287, N'San Gregorio', 44)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (288, N'Cabo de Hornos (Ex - Navarino)', 45)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (289, N'Antártica', 45)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (290, N'Porvenir', 46)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (291, N'Primavera', 46)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (292, N'Timaukel', 46)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (293, N'Natales', 47)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (294, N'Torres del Paine', 47)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (295, N'Santiago', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (296, N'Cerrillos', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (297, N'Cerro Navia', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (298, N'Conchalí', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (299, N'El Bosque', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (300, N'Estación Central', 48)
GO
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (301, N'Huechuraba', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (302, N'Independencia', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (303, N'La Cisterna', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (304, N'La Florida', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (305, N'La Granja', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (306, N'La Pintana', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (307, N'La Reina', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (308, N'Las Condes', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (309, N'Lo Barnechea', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (310, N'Lo Espejo', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (311, N'Lo Prado', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (312, N'Macul', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (313, N'Maipú', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (314, N'Ñuñoa', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (315, N'Pedro Aguirre Cerda', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (316, N'Peñalolén', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (317, N'Providencia', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (318, N'Pudahuel', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (319, N'Quilicura', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (320, N'Quinta Normal', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (321, N'Recoleta', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (322, N'Renca', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (323, N'San Joaquín', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (324, N'San Miguel', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (325, N'San Ramón', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (326, N'Vitacura', 48)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (327, N'Puente Alto', 49)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (328, N'Pirque', 49)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (329, N'San José de Maipo', 49)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (330, N'Colina', 50)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (331, N'Lampa', 50)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (332, N'Tiltil', 50)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (333, N'San Bernardo', 51)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (334, N'Buin', 51)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (335, N'Calera de Tango', 51)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (336, N'Paine', 51)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (337, N'Melipilla', 52)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (338, N'Alhué', 52)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (339, N'Curacaví', 52)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (340, N'María Pinto', 52)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (341, N'San Pedro', 52)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (342, N'Talagante', 53)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (343, N'El Monte', 53)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (344, N'Isla de Maipo', 53)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (345, N'Padre Hurtado', 53)
INSERT [dbo].[Comuna] ([Cod_Comuna], [Nombre], [Cod_Provincia]) VALUES (346, N'Peñaflor', 53)
INSERT [dbo].[Paquete] ([Cod_Paquete], [Descripcion], [Destinatario], [Direc_Destinatario], [Cod_Comuna], [Rut]) VALUES (1, N'Test', N'Test', N'Test', 1, 12345678)
SET IDENTITY_INSERT [dbo].[Provincia] ON 

INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (1, N'Arica')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (2, N'Parinacota')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (3, N'Iquique')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (4, N'Tamarugal')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (5, N'Antofagasta')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (6, N'El Loa')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (7, N'Tocopilla')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (8, N'Copiapó')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (9, N'Chañaral')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (10, N'Huasco')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (11, N'Elqui')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (12, N'Choapa')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (13, N'Limarí')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (14, N'Valparaíso')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (15, N'Isla de Pascua')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (16, N'Los Andes')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (17, N'Petorca')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (18, N'Quillota')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (19, N'San Antonio')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (20, N'San Felipe de Aconcagua')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (21, N'Cachapoal')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (22, N'Cardenal Caro')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (23, N'Colchagua')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (24, N'Talca')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (25, N'Cauquenes')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (26, N'Curicó')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (27, N'Linares')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (28, N'Concepción')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (29, N'Arauco')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (30, N'Biobío')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (31, N'Ñuble')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (32, N'Cautín')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (33, N'Malleco')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (34, N'Valdivia')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (35, N'Ranco')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (36, N'Llanquihue')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (37, N'Chiloé')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (38, N'Osorno')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (39, N'Palena')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (40, N'Coyhaique')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (41, N'Aysén')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (42, N'Capitán Prat')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (43, N'General Carrera')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (44, N'Magallanes')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (45, N'Antártica Chilena')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (46, N'Tierra del Fuego')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (47, N'Última Esperanza')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (48, N'Santiago')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (49, N'Cordillera')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (50, N'Chacabuco')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (51, N'Maipo')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (52, N'Melipilla')
INSERT [dbo].[Provincia] ([Cod_Provincia], [Nombre]) VALUES (53, N'Talagante')
SET IDENTITY_INSERT [dbo].[Provincia] OFF
SET IDENTITY_INSERT [dbo].[Tipo_Camion] ON 

INSERT [dbo].[Tipo_Camion] ([Tipo], [Nombre]) VALUES (1, N'Camion 3/4')
INSERT [dbo].[Tipo_Camion] ([Tipo], [Nombre]) VALUES (2, N'Remolque')
INSERT [dbo].[Tipo_Camion] ([Tipo], [Nombre]) VALUES (3, N'Remolque Articulado')
INSERT [dbo].[Tipo_Camion] ([Tipo], [Nombre]) VALUES (4, N'Estacas')
INSERT [dbo].[Tipo_Camion] ([Tipo], [Nombre]) VALUES (5, N'Cama Baja')
INSERT [dbo].[Tipo_Camion] ([Tipo], [Nombre]) VALUES (6, N'Plataforma')
SET IDENTITY_INSERT [dbo].[Tipo_Camion] OFF
ALTER TABLE [dbo].[Camion_Camionero]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Camionero_Camionero] FOREIGN KEY([Rut])
REFERENCES [dbo].[Camionero] ([Rut])
GO
ALTER TABLE [dbo].[Camion_Camionero] CHECK CONSTRAINT [FK_Camion_Camionero_Camionero]
GO
ALTER TABLE [dbo].[Camion_Camionero]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Camionero_Camiones] FOREIGN KEY([Id_Camion])
REFERENCES [dbo].[Camiones] ([Id_Camion])
GO
ALTER TABLE [dbo].[Camion_Camionero] CHECK CONSTRAINT [FK_Camion_Camionero_Camiones]
GO
ALTER TABLE [dbo].[Camiones]  WITH CHECK ADD  CONSTRAINT [FK_Camiones_Tipo_Camion] FOREIGN KEY([Tipo])
REFERENCES [dbo].[Tipo_Camion] ([Tipo])
GO
ALTER TABLE [dbo].[Camiones] CHECK CONSTRAINT [FK_Camiones_Tipo_Camion]
GO
ALTER TABLE [dbo].[Comuna]  WITH CHECK ADD  CONSTRAINT [FK_Comuna_Provincia] FOREIGN KEY([Cod_Provincia])
REFERENCES [dbo].[Provincia] ([Cod_Provincia])
GO
ALTER TABLE [dbo].[Comuna] CHECK CONSTRAINT [FK_Comuna_Provincia]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Camionero] FOREIGN KEY([Rut])
REFERENCES [dbo].[Camionero] ([Rut])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Camionero]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Comuna] FOREIGN KEY([Cod_Comuna])
REFERENCES [dbo].[Comuna] ([Cod_Comuna])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Comuna]
GO
USE [master]
GO
ALTER DATABASE [Prueba3] SET  READ_WRITE 
GO
