USE [SOI]
GO

/****** Object:  Table [Sales].[SalesOrderHeader]    Script Date: 8/23/2017 1:30:17 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [dbo].[SalesOrderHeader](
	[SalesOrderID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[RevisionNumber] [tinyint] NOT NULL CONSTRAINT [DF_SalesOrderHeader_RevisionNumber]  DEFAULT ((0)),
	[OrderDate] [datetime] NOT NULL CONSTRAINT [DF_SalesOrderHeader_OrderDate]  DEFAULT (getdate()),
	[DueDate] [datetime] NOT NULL,
	[ShipDate] [datetime] NULL,
	[Status] [tinyint] NOT NULL CONSTRAINT [DF_SalesOrderHeader_Status]  DEFAULT ((1)),
	[OnlineOrderFlag] [dbo].[Flag] NOT NULL CONSTRAINT [DF_SalesOrderHeader_OnlineOrderFlag]  DEFAULT ((1)),
	[SalesOrderNumber]  AS (isnull(N'SO'+CONVERT([nvarchar](23),[SalesOrderID]),N'*** ERROR ***')),
	[PurchaseOrderNumber] [dbo].[OrderNumber] NULL,
	[AccountNumber] [dbo].[AccountNumber] NULL,
	[CustomerID] [int] NOT NULL,
	[SalesPersonID] [int] NULL,
	[TerritoryID] [int] NULL,
	[BillToAddressID] [int] NOT NULL,
	[ShipToAddressID] [int] NOT NULL,
	[ShipMethodID] [int] NOT NULL,
	[CreditCardID] [int] NULL,
	[CreditCardApprovalCode] [varchar](15) NULL,
	[CurrencyRateID] [int] NULL,
	[SubTotal] [money] NOT NULL CONSTRAINT [DF_SalesOrderHeader_SubTotal]  DEFAULT ((0.00)),
	[TaxAmt] [money] NOT NULL CONSTRAINT [DF_SalesOrderHeader_TaxAmt]  DEFAULT ((0.00)),
	[Freight] [money] NOT NULL CONSTRAINT [DF_SalesOrderHeader_Freight]  DEFAULT ((0.00)),
	[TotalDue]  AS (isnull(([SubTotal]+[TaxAmt])+[Freight],(0))),
	[Comment] [nvarchar](128) NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL CONSTRAINT [DF_SalesOrderHeader_rowguid]  DEFAULT (newid()),
	[ModifiedDate] [datetime] NOT NULL CONSTRAINT [DF_SalesOrderHeader_ModifiedDate]  DEFAULT (getdate()),
 CONSTRAINT [PK_SalesOrderHeader_SalesOrderID] PRIMARY KEY CLUSTERED 
(
	[SalesOrderID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO