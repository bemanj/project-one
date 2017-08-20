USE [SOT]
GO

/****** Object:  UserDefinedTableType [dbo].[tvpOrderDetail_test]    Script Date: 18/08/2017 1:47:53 PM ******/
CREATE TYPE [dbo].[tvpOrderDetail_Update] AS TABLE(
	[orderId] [int] NOT NULL,
	[orderSubId] [int] NOT NULL,
	[somestring] [nvarchar](50) NULL,
	[modifieddate] [datetime] NOT NULL
)
GO


