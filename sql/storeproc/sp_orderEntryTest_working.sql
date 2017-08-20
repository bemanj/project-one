use SOT;

declare @orderHeaderId int;
declare @tvf_detailTest dbo.tvpOrderDetail;

--insert one record for orderHeader
--creat sales orderHeader then SAVE
--then continue adding orderDetails for the productsa
--PLAN B (return scope identity)

insert into dbo.[test.OrderHeader] (modifieddate) values (GETDATE());

select * from dbo.[test.OrderHeader] order by orderHeader desc;

--
--insert into @tvf_detailTest select * from [test_dummyDetail]

--select * from @tvf_detailTest

SET @orderHeaderId =  SCOPE_IDENTITY() 

SELECT SCOPE_IDENTITY() AS [SCOPE_IDENTITY];  


--create temp table
create table #temp_orders(
	orderId int ,
	--subid int NOT NULL,
	somestring nvarchar(50) NULL,
	modifiedate datetime NOT NULL
 )

----populate temp with dummy data
insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'A',GETDATE())
insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'B',GETDATE())
insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'C',GETDATE())
insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'D',GETDATE())
insert into #temp_orders (orderId, somestring, modifiedate) values(@orderHeaderId,'E',GETDATE())

insert into @tvf_detailTest
select * from #temp_orders;



--execute sp_orderEntry
--pass records from temp table

EXECUTE sp_orderEntry @tvf_detailTest;

select * from test_sub

--select recently added orderDetails
--select * from dbo.test_sub where orderId = @orderHeaderId

drop table #temp_orders
--delete test_sub

select * from dbo.[test.OrderHeader]
select * from dbo.test_sub

-- for later thinking
select oh.orderHeader
from dbo.[test.OrderHeader] oh 
left join dbo.test_sub od 
on oh.orderHeader = od.orderId 
where od.orderId is null