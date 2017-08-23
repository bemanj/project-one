-- ================================
-- Create User-defined Table Type
-- ================================
USE SOT
GO

-- Create the data type
CREATE TYPE tvpOrderDetail AS TABLE 
(

	[orderId] [int] NOT NULL,
	[orderDetailID] [int] NOT NULL,
	[somestring] [nvarchar](50) NULL,
	[date] [datetime] NOT NULL,
 PRIMARY KEY (orderId, orderDetailID)

)
GO
