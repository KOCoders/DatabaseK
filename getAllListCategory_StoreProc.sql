create proc Sp_Category_ListAll
as
begin
	select * from Category where Status = 1
	order by [Order] asc
end

exec Sp_Category_ListAll