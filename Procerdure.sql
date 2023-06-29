select * from Lop
go

create proc List_Student_From_Class
@malop varchar(10)
as
begin
	select * from Sinh_Vien where Ma_Lop = @malop
end
go

exec List_Student_From_Class 'TH2002/01'