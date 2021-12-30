USE [controleponto]
GO

/****** Object:  Table [dbo].[TabDepartamento]    Script Date: 30/12/2021 11:04:33 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[TabDepartamento](
	[DepartamentoID] [int] NOT NULL,
	[Responsavel] [nchar](20) NULL,
	[Login] [nchar](10) NULL,
	[Email] [nchar](20) NULL
) ON [PRIMARY]

GO


