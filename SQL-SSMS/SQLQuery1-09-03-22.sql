use md
select * from sys.tables

insert into employee values(1,'Malay','M',9687688099)
insert into employee values(2,'Dhruv','M',9687687069)
insert into employee values(3,'Avi','F',9687685096)
insert into employee values(4,'Tanu','F',968775480)
insert into employee values(5,'Meet','M',9687652631)

select * from employee

update employee
set e_mobile = 9427567511
where e_id = 3

drop table employee

select * from sys.tables

create table emp
(
e_id int primary key identity(1,1),
e_name varchar(20) not null,
e_gender varchar(10),
e_salary numeric(5) check(e_salary > 10000),
e_email varchar(100) unique
)


insert into emp values('Malay','M',80000,'malay@gmail.com')
insert into emp values('Dhruv','M',50000,'dhruv@gmail.com')
insert into emp values('Avi','F',40000,'avi@gmail.com')
insert into emp values('Tanu','F',70000,'tanu@gmail.com')
insert into emp values('Meet','M',20000,'meet@gmail.com')

select * from emp
