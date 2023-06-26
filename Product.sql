CREATE TABLE Category
(
	CategoryID int primary key identity,
	Name nvarchar(100),
	Alias varchar(100),
	ParentID int,
	CreateDate datetime default getdate(),
	[Order] int,
	Status bit
)

create table Product
(
	ProductID int primary key identity,
	Name nvarchar(100),
	Alias varchar(100),
	CategoryID int,
	Images nvarchar(250),
	Createdate datetime default getdate(),
	Price decimal(18,0),
	Detail ntext,
	Status bit
	Foreign key (CategoryID) references Category(CategoryID)

)