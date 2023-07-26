create proc sp_InsertUser
@UserName varchar(50),
@Password varchar(32),
@Name nvarchar(50),
@Address nvarchar(50),
@Email nvarchar(50),
@Phone nvarchar(50)
as
begin 
	--set nocount on;
	insert into [User] ([UserName], [Password], [Name], [Address], [Email], [Phone])
	Values (@UserName, @Password, @Name, @Address, @Email, @Phone)
end