create database company

use company

create table Departments
(
Id int primary key,
Name nvarchar(25) not null check (len(Name)>2)
)



create table Employees
(
Id int,
FullName nvarchar(25) not null check(len(FullName)>3),
Salary int check (Salary>0),
Email nvarchar(25) not null unique,
DepartmentId int FOREIGN KEY REFERENCES Departments(Id)

)