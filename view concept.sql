drop view if exists vw_employee
go --it is makes batches send to sql server

create view vw_employee
as
select id,name,salary,departno 
from employee;
go
select * from vw_employee;


select * from INFORMATION_SCHEMA.tables;


--fetching data from view
create view vw_hetHightSalary
as
select * from employee 

where salary>20000;

select * from vw_hetHightSalary;

select * from employee

create view vw_findname
as
select name,departno from employee 
where departno=10;
select  * from  vw_findname;

select * from vw_employee;

--updating data using the view

update vw_employee
set salary=55000
where id=1;

select * FROM  vw_employee;

update vw_employee
set name='mr-smith'
where id=1;

select * from vw_employee

