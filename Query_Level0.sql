-- 1. Danh sách các sinh viên khoa “Công nghệ Thông tin” khoá 2002-2006
--select sv.* from Sinh_Vien as sv
--left join lop as l on l.Ma_Lop= sv.Ma_Lop
--left join Khoa as k on k.Ma_Khoa = l.Ma_Khoa
--left join Khoa_Hoc as kh on kh.Ma_Khoa_Hoc = l.Ma_Khoa_Hoc
--where k.Ma_Khoa = 'CNTT'
--and  kh.Nam_Bat_Dau >= 2002 
--and kh.Nam_Ket_Thuc <=2006

--​Câu 2: "Cho biết các thông tin (MSSV, họ tên ,năm sinh) của các sinh viên học sớm hơn tuổi qui định (theo tuổi qui định thi sinh viên đủ 18 tuổi khi bắt đầu khóa học)"
-- Day(GETDATE()) -> lấy ngày trong tháng
-- Month(GETDATE()) -> lấy Tháng trong Năm
-- Year(GETDATE()) -> lấy năm
--select sv.MaSV, sv.Ho_Ten, sv.Nam_Sinh from Sinh_Vien as sv
--left join lop as l on sv.Ma_Lop = l.Ma_Lop
--left join Khoa_Hoc as kh on l.Ma_Khoa_Hoc = kh.Ma_Khoa_Hoc
--where kh.Nam_Bat_Dau - sv.Nam_Sinh > 18 

--​Câu 3: Cho biết sinh viên khoa CNTT, khoá 2002-2006 chưa học môn cấu trúc dữ liệu 1

--select distinct sv.* from Sinh_Vien as sv
--left join lop as l on sv.Ma_Lop = l.Ma_Lop
--left join Khoa as k on l.Ma_Khoa = k.Ma_Khoa
--left join Khoa_Hoc as kh on l.Ma_Khoa_Hoc = kh.Ma_Khoa_Hoc
--left join Mon_Hoc as mh on k.Ma_Khoa = mh.Ma_Khoa
--where k.Ma_Khoa = 'CNTT'
--and kh.Nam_Bat_Dau = 2002
--and kh.Nam_Ket_Thuc = 2006 
--and mh.MaMH not in(select MaMH from Mon_Hoc where TenMH like N'Cấu trúc dữ liệu 1')

--select distinct Sinh_Vien.*  from Sinh_Vien
--LEFT JOIN Lop ON Sinh_Vien.Ma_Lop = Lop.Ma_Lop
--LEFT JOIN Khoa ON Lop.Ma_Khoa = Khoa.Ma_Khoa
--LEFT JOIN Khoa_Hoc ON Lop.Ma_Khoa_Hoc = Khoa_Hoc.Ma_Khoa_Hoc
--LEFT JOIN Mon_Hoc ON Mon_Hoc.Ma_Khoa = Khoa.Ma_Khoa
--where Khoa.Ma_Khoa = 'CNTT'
--and Khoa_Hoc.Nam_Bat_Dau = 2002
--and Khoa_Hoc.Nam_Ket_Thuc = 2006
--and Mon_Hoc.TenMH NOT LIKE N'Cấu trúc dữ liệu 1'
