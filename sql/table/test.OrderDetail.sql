USE [SOT]
GO


/****** Object:  Table [dbo].[test_sub]    Script Date: 17/08/2017 1:51:13 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[test.OrderDetail](
	[orderId] [int] NOT NULL,
	[orderDetailID] [int] NOT NULL,
	[somestring] [nvarchar](50) NULL,
	[date] [datetime] NOT NULL,
 CONSTRAINT [PK_test.OderDetail] PRIMARY KEY CLUSTERED 
(
	[orderId] ASC,
	[orderDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO


