Create Database Company
Use Company
Create Table Employees
(
	Id int,
	Name nvarchar(100),
	Surname nvarchar(100),
	Position nvarchar(100),
	Salary int
)
Insert Into Employees
Values
(1,N'Leman',N'Heshimova',N'Developer',700),
(2,N'Vusal',N'Zeynalov',N'Director',800),
(3,N'Rovshen',N'Bayramov',N'Manager',350),
(4,N'Zehra',N'Quliyeva',N'Manager',200),
(5,N'Ferid',N'Qarayev',N'Developer',880)

Select Avg(Salary) From Employees

Select * From Employees Where Salary>(Select Avg(Salary) From Employees)

Select MIN(Salary) From Employees 

Select Max(Salary) From Employees

Create Database Market 

Use Market

Create Table Products
(
	Id int,
	Name nvarchar(100),
	Price int
)

Insert Into Products
Values
(1,N'Milk',15,N'AzerSud'),
(2,N'Bread',1,N'Zavod'),
(3,N'Apple',3,N'Alma'),
(4,N'Chocolate',1,N'Milka'),
(5,N'Butter',10,N'Anchor'),
(6,N'Fish',11,N'Baliq'),
(7,N'Chips',2,N'Lays'),
(8,N'Coffe',1,N'MacCoffe'),
(9,N'Tea',3,N'Berqa'),
(10,N'IceCream',2,N'Magnum')

Alter Table Products 
Add Brand nvarchar(100)


Select * From Products Where Price>(Select Avg(Price) From Products)

Select * From Products Where Price>10

Select Name+' '+Brand 'ProductInfo ' from Products Where LEN(Brand) >5