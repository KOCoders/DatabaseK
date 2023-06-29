-- tinh diem cua lan thi cuoi cung cua moi sinh vien tuong ung voi moi mon
create function KF_Last_Crore_Of_Student
(
	@masv varchar(10),
	@mamh varchAR(10)
) returns float
as
begin
	declare @diem float
	set @diem = 0
	select top 1 @diem =  kq.Diem_Thi from Ket_Qua as kq
	where kq.MaSV = @masv and kq.MaMH = @mamh
	order by kq.Lan_Thi desc
	return @diem
end
go

select * from Ket_Qua
go
--select dbo.KF_Last_Crore_Of_Student('0212003','THT02')

-- tinh diem trung binh cac mon cua sinh vien thi lan cuoi
create function KF_Last_Avg_Crore_Of_Student
(
	@masv varchar(10)

) returns float
as
begin
	declare @diemtrungbinh float
	set @diemtrungbinh = 0
	select  @diemtrungbinh = AVG(dbo.KF_Last_Crore_Of_Student(kq.MaSV, kq.MaMH)) from Ket_Qua as kq
	where kq.MaSV = @masv
	return @diemtrungbinh
end
go

select dbo.KF_Last_Avg_Crore_Of_Student('0212002')
go