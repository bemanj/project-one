USE SOT;
GO


declare @tvUpdateDetail dbo.tvpOrderDetail_Update;
declare @orderHeaderID int;

SET @orderHeaderID = 43

insert into @tvUpdateDetail
select * from test_sub where orderid = @orderHeaderID

--select * from @tvUpdateDetail

UPDATE   test_sub
					SET		test_sub.somestring= @tvUpdateDetail.somestring,
							test_sub.modifieddate= @tvUpdateDetail.modifieddate
FROM @tvUpdateDetail 
					WHERE	test_sub .id = @tvUpdateDetail.id and test_sub.orderSubId = @tvUpdateDetail.orderSubId


select * from test_sub