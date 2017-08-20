USE [SOT]
GO

/****** Object:  StoredProcedure [dbo].[sp_createHeader]    Script Date: 18/08/2017 1:27:58 PM ******/
DROP PROCEDURE [dbo].[sp_createHeader]
GO

/****** Object:  StoredProcedure [dbo].[sp_createHeader]    Script Date: 18/08/2017 1:27:58 PM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


-- =============================================
-- Author:		RJohn Master
-- Create date: 08/18/2017
-- Description:	Create sales order header
-- =============================================
CREATE PROCEDURE [dbo].[sp_createHeader]
	-- Add the parameters for the stored procedure here
	
AS

DECLARE @headerID int;

BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	insert into dbo.[test.OrderHeader] (modifieddate) values (GETDATE());

	--select * from dbo.[test.OrderHeader] order by orderHeader desc;
	SET @headerID =  SCOPE_IDENTITY(); 

RETURN @headerID
END


GO


