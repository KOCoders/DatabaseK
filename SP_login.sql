create proc Sp_Account_Login
@username varchar(100),
@password varchar(100)
as
begin
	declare @account int
	declare @res int
	select @account = count(*) from Account where account_username = @username and account_password = @password

	if @account > 0
		begin
			set @res = 1
		end
	else
		begin
			set @res = 0
		end
	select @res
end
