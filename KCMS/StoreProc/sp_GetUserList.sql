USE [KTShop]
GO
/****** Object:  StoredProcedure [dbo].[sp_GetUsers]    Script Date: 7/26/2023 9:19:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
alter PROCEDURE [dbo].[sp_GetUserList]
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM [User];
END

