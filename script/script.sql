USE [Prueba3]
GO
/****** Object:  Table [dbo].[Camion_Camionero]    Script Date: 01-06-2019 22:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camion_Camionero](
	[Cod_Cam_Camiones] [int] NOT NULL,
	[Id_Camionero] [int] NULL,
	[Id_Camion] [int] NULL,
	[Fecha] [datetime] NULL,
 CONSTRAINT [PK_Camion_Camionero] PRIMARY KEY CLUSTERED 
(
	[Cod_Cam_Camiones] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camionero]    Script Date: 01-06-2019 22:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camionero](
	[Id_Camionero] [int] NOT NULL,
	[Rut] [nvarchar](9) NULL,
	[Nombre] [nvarchar](50) NULL,
	[Telefono] [int] NULL,
	[Direccion] [nvarchar](50) NULL,
	[Salario] [int] NULL,
	[Poblacion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Camionero] PRIMARY KEY CLUSTERED 
(
	[Id_Camionero] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Camiones]    Script Date: 01-06-2019 22:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Camiones](
	[Id_Camion] [int] NOT NULL,
	[Matricula] [nvarchar](6) NULL,
	[Tipo] [int] NULL,
	[Potencia] [int] NULL,
 CONSTRAINT [PK_Camiones] PRIMARY KEY CLUSTERED 
(
	[Id_Camion] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Comuna]    Script Date: 01-06-2019 22:15:33 ******/
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
/****** Object:  Table [dbo].[Paquete]    Script Date: 01-06-2019 22:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Paquete](
	[Cod_Paquete] [int] NOT NULL,
	[Descripcion] [nvarchar](100) NULL,
	[Destinatario] [nvarchar](50) NULL,
	[Direc_Destinatario] [nvarchar](50) NULL,
	[Cod_Comuna] [int] NULL,
	[Id_Camionero] [int] NULL,
 CONSTRAINT [PK_Paquete] PRIMARY KEY CLUSTERED 
(
	[Cod_Paquete] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 01-06-2019 22:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[Cod_Provincia] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[Cod_Provincia] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_Camion]    Script Date: 01-06-2019 22:15:33 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Tipo_Camion](
	[Tipo] [int] NOT NULL,
	[Nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Tipo_Camion] PRIMARY KEY CLUSTERED 
(
	[Tipo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
ALTER TABLE [dbo].[Camion_Camionero]  WITH CHECK ADD  CONSTRAINT [FK_Camion_Camionero_Camionero] FOREIGN KEY([Id_Camionero])
REFERENCES [dbo].[Camionero] ([Id_Camionero])
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
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Camionero] FOREIGN KEY([Id_Camionero])
REFERENCES [dbo].[Camionero] ([Id_Camionero])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Camionero]
GO
ALTER TABLE [dbo].[Paquete]  WITH CHECK ADD  CONSTRAINT [FK_Paquete_Comuna] FOREIGN KEY([Cod_Comuna])
REFERENCES [dbo].[Comuna] ([Cod_Comuna])
GO
ALTER TABLE [dbo].[Paquete] CHECK CONSTRAINT [FK_Paquete_Comuna]
GO
