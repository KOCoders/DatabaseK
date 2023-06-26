-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE Sq_Categoty_Insert
@Name nvarchar(100),
@Alias varchar(100),
@ParentID int,
@Order int,
@Status bit
AS
BEGIN
	insert into Category(Name, Alias, ParentID, CreateDate, [Order], Status)
	values (@Name, @Alias, @ParentID, GETDATE(), @Order, @Status)
END
GO
