USE [SOT]
GO

/****** Object:  StoredProcedure [dbo].[sp_orderEntry]    Script Date: 18/08/2017 11:37:57 AM ******/
DROP PROCEDURE [dbo].[sp_orderEntry]
GO

/****** Object:  StoredProcedure [dbo].[sp_orderEntry]    Script Date: 18/08/2017 11:37:57 AM ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO




-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_orderEntry] (
	-- Add the parameters for the stored procedure here
	@orderDetail [dbo].[tvpOrderDetail] readonly )
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	begin try
	
		INSERT INTO [dbo].[test_sub] (orderId, 
								somestring, 
								modifieddate)

					SELECT		T.orderId,
								T.somestring,
								T.modifieddate
					FROM
								@orderDetail T
	
	
	end try
	begin catch
			select 'some error fired'
	end catch
	
--select * from @orderDetail
END




GO


