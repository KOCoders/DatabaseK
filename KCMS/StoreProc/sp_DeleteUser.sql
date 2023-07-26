CREATE PROCEDURE [dbo].[sp_DeleteUser]
@ID int
AS
BEGIN
    SET NOCOUNT ON;
    DELETE FROM [User]
    WHERE [ID] = @ID;
END