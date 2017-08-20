-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		RJohnMillano
-- Create date: 08/19/2017
-- Description:	Sales order details CRUD
-- =============================================
ALTER PROCEDURE [dbo].[sp_salesOrderDetailsCRUD] 
	-- Add the parameters for the stored procedure here
	@orderId int = null,
	@orderDetailId int = null,
	@someString nvarchar(50) = '',
	@modifiedDate datetime = null,
	@status nvarchar(50) = '',
	@orderCancel bit = 0
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.

	SET NOCOUNT ON;

	-- Validate function to call, check if status is for DISPLAY, ADD, UPDATE, CANCEL, DELETE
	IF(@status = 'DISPLAY')
		BEGIN
			SELECT * FROM dbo.test_sub WHERE orderId = @orderId
		END
	ELSE IF(@status = 'ADD')
		BEGIN
			INSERT INTO dbo.[test_sub] (orderId,somestring,modifieddate) VALUES (@orderId,@someString,getdate())
		END
	ELSE IF(@status = 'UPDATE')
		BEGIN
			UPDATE dbo.[test_sub] SET somestring=@someString, modifieddate=GETDATE() WHERE orderId=@orderId and orderDetailID = @orderDetailId
		END
	--ELSE IF(@status = 'UPDATE')
	--	BEGIN
	--		UPDATE dbo.[test_sub] SET orderCancelled=@orderCancel, modifieddate=GETDATE() WHERE orderId=@orderId and orderDetailID = @orderDetailId
	--	END
	ELSE IF(@status = 'DELETE')
		BEGIN
			Delete FROM dbo.[test_sub] WHERE orderId=@orderId and orderDetailID=@orderDetailId
		END
	
	
END
GO
