use SOT;
GO


--create temp table
--create table #temp_orders(
--	orderId int ,
--	subid int NOT NULL,
--	somestring nvarchar(50) NULL,
--	modifiedate datetime NOT NULL
-- )

----populate temp with dummy data
--insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'A',GETDATE())
--insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'B',GETDATE())
--insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'C',GETDATE())
--insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'D',GETDATE())
--insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'E',GETDATE())
DECLARE @orderHeaderId int = 0;
DECLARE @orderDetailId int = 0;
DECLARE @callMethod nvarchar (50) = '';
DECLARE @addSomeString nvarchar(50) = '';
DECLARE @orderCancelStatus bit = 0;

SET @orderHeaderId = 1


SET @callMethod = 'DISPLAY'
EXEC dbo.sp_salesOrderDetailsCRUD @orderId=@orderHeaderId,
@status=@callMethod

--SET @callMethod = 'ADD'
--SET @addSomeString = 'text235'
--EXEC dbo.sp_salesOrderDetailsCRUD @orderId=@orderHeaderId,
--@someString=@addSomeString, @status=@callMethod


--SET @callMethod = 'UPDATE'
--SET @addSomeString = 'text1'
--SET @orderDetailId = 51
--exec dbo.sp_salesOrderDetailsCRUD @orderId=@orderHeaderId,
--@orderDetailId=@orderDetailId,
--@someString=@addSomeString,
--@status=@callMethod

--SET @callMethod = 'DELETE'
--SET @orderDetailId = 55
--exec dbo.sp_salesOrderDetailsCRUD @orderId=@orderHeaderId,
--@orderDetailId=@orderDetailId,
--@status=@callMethod

--SET @callMethod = 'CANCEL'
--SET @orderDetailId = 51
--exec dbo.sp_salesOrderDetailsCRUD @orderId=@orderHeaderId,
--@orderDetailId=@orderDetailId,
--@orderCancel=@orderCancelStatus,
--@status=@callMethod

SET @callMethod = 'DISPLAY'
exec dbo.sp_salesOrderDetailsCRUD @orderId=@orderHeaderId,
@status=@callMethod
