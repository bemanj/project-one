USE [SOT]
GO

/****** Object:  Table [dbo].[test.OrderHeader]    Script Date: 17/08/2017 1:48:37 PM ******/
DROP TABLE [dbo].[test.OrderHeader]
GO

/****** Object:  Table [dbo].[test.OrderHeader]    Script Date: 17/08/2017 1:48:37 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[test.OrderHeader](
	[orderHeader] [int] IDENTITY(1,1) NOT NULL,
	[modifieddate] [datetime] NOT NULL,
 CONSTRAINT [PK_test.OrderHeader] PRIMARY KEY CLUSTERED 
(
	[orderHeader] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


