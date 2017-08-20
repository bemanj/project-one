USE [SOT]
GO

/****** Object:  UserDefinedTableType [dbo].[tvpOrderDetail]    Script Date: 18/08/2017 11:38:34 AM ******/
DROP TYPE [dbo].[tvpOrderDetail]
GO

/****** Object:  UserDefinedTableType [dbo].[tvpOrderDetail]    Script Date: 18/08/2017 11:38:34 AM ******/
CREATE TYPE [dbo].[tvpOrderDetail] AS TABLE(
	[orderId] [int] NOT NULL,
	[orderDetailId] [int] NOT NULL,
	[somestring] [nvarchar](50) NULL,
	[modifieddate] [datetime] NOT NULL
)
GO


