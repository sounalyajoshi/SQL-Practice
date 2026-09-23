create database Emplyoees;
use Emplyoees;

create table Emplyoees(
EmpId int,
EmpName varchar(20),
age int,
salary decimal(10,2),
[location] varchar(10)
);

insert into Emplyoees(EmpId,EmpName,age ,salary,[location])
values(1,'jhon',28,21000.78,'bangalore');