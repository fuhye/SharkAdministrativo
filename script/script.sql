USE [bdshark]
GO
/****** Object:  Table [dbo].[Almacenes]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Almacenes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_Almacenes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AreasProduccion]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[AreasProduccion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_AreasProduccion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Categorias]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Categorias](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
 CONSTRAINT [PK_Categorias] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Empresas]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Empresas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](100) NULL,
	[rfc] [nchar](15) NULL,
	[calle] [varchar](50) NULL,
	[noExterior] [nchar](10) NULL,
	[codigo_postal] [nchar](10) NULL,
	[colonia] [varchar](50) NULL,
	[localidad] [varchar](50) NULL,
	[municipio] [varchar](50) NULL,
	[estado] [varchar](50) NULL,
	[pais] [varchar](50) NULL,
 CONSTRAINT [PK_Empresa] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EntradasPresentaciones]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EntradasPresentaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[presentacion_id] [int] NOT NULL,
	[almacen_id] [int] NOT NULL,
	[cantidad] [float] NULL,
	[fecha_registro] [datetime] NULL,
 CONSTRAINT [PK_EntradasPresentaciones_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Facturas]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Facturas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[folio] [varchar](10) NULL,
	[fecha_emision] [smalldatetime] NOT NULL,
	[tipo_comprobante] [varchar](200) NULL,
	[lugar_expedicion] [varchar](200) NULL,
	[forma_pago] [varchar](150) NULL,
	[moneda] [varchar](30) NULL,
	[procesada] [int] NULL,
	[tipo_cambio] [varchar](50) NULL,
	[subtotal] [varchar](30) NULL,
	[total] [varchar](30) NULL,
 CONSTRAINT [PK_Facturas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Grupos]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Grupos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
	[categoria_id] [int] NOT NULL,
 CONSTRAINT [PK_Grupos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Insumos]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Insumos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[ultimo_costo] [float] NULL,
	[costo_promedio] [float] NULL,
	[IVA] [float] NULL,
	[costo_con_impuesto] [float] NULL,
	[inventariable] [varchar](5) NULL,
	[minimo] [float] NULL,
	[maximo] [float] NULL,
	[grupo_id] [int] NOT NULL,
	[unidad_id] [int] NOT NULL,
 CONSTRAINT [PK_Insumos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[InsumosElaborados]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[InsumosElaborados](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insumos] [varchar](300) NULL,
	[rendimiento] [float] NULL,
	[grupo_id] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
	[unidad_id] [int] NOT NULL,
	[costo_unitario] [float] NULL,
	[costo_promedio] [float] NULL,
	[costo_estandar] [float] NULL,
	[inventariable] [varchar](10) NULL,
	[entrada_automatica] [int] NULL,
	[existencia] [float] NULL,
 CONSTRAINT [PK_InsumosElaborados] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Presentaciones]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Presentaciones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[ultimo_costo] [float] NULL,
	[costo_promedio] [float] NULL,
	[IVA] [float] NULL,
	[costo_con_impuesto] [float] NULL,
	[rendimiento] [float] NULL,
	[minimo] [int] NOT NULL,
	[proveedor_id] [int] NOT NULL,
	[insumo_id] [int] NOT NULL,
	[factura_id] [int] NOT NULL,
	[almacen_id] [int] NOT NULL,
	[noIdentificacion] [varchar](50) NULL,
	[costo_unitario] [float] NULL,
	[cantidad] [float] NULL,
	[existencia] [float] NULL,
 CONSTRAINT [PK_Presentaciones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ProductoPromocion]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ProductoPromocion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[producto_id] [int] NOT NULL,
	[promocion_id] [int] NOT NULL,
	[cantidad] [float] NULL,
 CONSTRAINT [PK_ProductoPromocion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Productos]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Productos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](150) NULL,
	[nombre] [varchar](50) NULL,
	[ultimoPrecio] [float] NULL,
	[IVA] [float] NULL,
	[precioConImpuesto] [float] NULL,
	[areasPreparacion] [varchar](50) NULL,
	[disponlibleEn] [varchar](50) NULL,
	[imagen] [image] NULL,
 CONSTRAINT [PK_Productos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Promociones]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Promociones](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[descripcion] [varchar](100) NULL,
	[nombre] [varchar](50) NULL,
	[ultimoPrecio] [float] NULL,
	[IVA] [float] NULL,
	[precioConImpuesto] [float] NULL,
	[areasDisponibles] [varchar](100) NULL,
	[imagen] [image] NULL,
	[diasDisponibles] [varchar](20) NULL,
	[hora_inicio] [varchar](50) NULL,
	[hora_fin] [varchar](50) NULL,
	[fecha_inicio] [datetime] NULL,
	[fecha_fin] [datetime] NULL,
 CONSTRAINT [PK_Promociones] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Proveedores]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Proveedores](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](250) NULL,
	[razon_social] [varchar](250) NULL,
	[RFC] [varchar](30) NULL,
	[calle] [varchar](50) NULL,
	[NoExterior] [varchar](10) NULL,
	[codigo_postal] [varchar](10) NULL,
	[colonia] [varchar](100) NULL,
	[localidad] [varchar](150) NULL,
	[municipio] [varchar](150) NULL,
	[estado] [varchar](150) NULL,
	[pais] [varchar](150) NULL,
	[telefono] [varchar](15) NULL,
	[fecha_registro] [smalldatetime] NOT NULL,
	[empresa_id] [int] NOT NULL,
	[sucursal] [varchar](50) NULL,
	[tipos_proveedor] [varchar](500) NULL,
 CONSTRAINT [PK_Proveedores] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Recetas]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Recetas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insumo_id] [int] NOT NULL,
	[producto_id] [int] NOT NULL,
	[insumoElaborado_id] [int] NOT NULL,
	[cantidad] [float] NULL,
	[almacenes_id] [varchar](100) NULL,
 CONSTRAINT [PK_Recetas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Salidas_almacen]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Salidas_almacen](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[insumo_id] [int] NOT NULL,
	[cantidad] [float] NULL,
	[tipo_movimiento_id] [int] NOT NULL,
	[almacen_salida] [int] NOT NULL,
 CONSTRAINT [PK_movimientos_almacen] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Tipo_movimientos]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Tipo_movimientos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NULL,
 CONSTRAINT [PK_tipo_movimientos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Unidades_Medida]    Script Date: 10/10/2016 10:13:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Unidades_Medida](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](30) NULL,
 CONSTRAINT [PK_Unidades_Medida] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
