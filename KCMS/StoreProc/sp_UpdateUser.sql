ALTER PROCEDURE [dbo].[sp_UpdateUser]
@Id int,
@UserName varchar(50),
@Password varchar(32),
@Name nvarchar(50),
@Address nvarchar(50),
@Email nvarchar(50),
@Phone nvarchar(50)
AS
BEGIN
    --SET NOCOUNT ON;
    UPDATE [User]
    SET [UserName] = @UserName,
        [Password] = @Password,
        [Name] = @Name,
        [Address] = @Address,
        [Email] = @Email,
        [Phone] = @Phone
    WHERE [ID] = @Id;
END