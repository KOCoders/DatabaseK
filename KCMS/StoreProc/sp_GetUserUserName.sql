CREATE PROCEDURE sp_GetUserByUserName
    @UserName NVARCHAR(100)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT top 1*
    FROM [user]
    WHERE UserName = @UserName;
END