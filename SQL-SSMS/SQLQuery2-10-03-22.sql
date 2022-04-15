create table department
(
d_id int identity(1,1) primary key,
d_name varchar(10) not null
)

insert into department values('it'),('sales'),('finance'),('hr')

select * from department

select * from sys.tables
select * from INFORMATION_SCHEMA.TABLES


alter table emp
add e_dob date

alter table emp
add e_state varchar(10) default ('Gujarat')

drop table emp

drop table employee

create table employee
(
e_id int primary key identity(1,1),
e_name varchar(20) not null,
e_mail varchar(100) unique,
e_salary numeric(5) check(e_salary >= 10000),
e_dob date,
e_mob numeric(10) unique,
e_state varchar(10) default ('Gujarat'),
e_gender varchar(10),
department_id int foreign key references department(d_id)
)

select * from employee

truncate table employee

insert into employee
values('Malay','malay@gmail.com',50000,'09/18/1998',9687688099,'Gujarat','Male',1)

insert into employee
values('Dhruv','dhruv@gmail.com',25000,'06/12/1999',9687677088,'Gujarat','Male',2)

set identity_insert employee off

insert into employee
values('Avi','avi@gmail.com',35000,'11/11/1990',9511228475,'Gujarat','Female',2)

insert into employee
values('Jay','jay@gmail.com',15000,'06/10/1999',6387677088,'Gujarat','Male',3)

insert into employee
values('Abhishek','abhishek@gmail.com',22000,'09/18/1998',9687675099,'Gujarat','Male',1)


select * from department

select * from employee where e_salary > 30000

select * from employee where e_salary between 15000 and 30000

select * from employee where department_id != null


select * from employee where e_name = 'malay'
select * from employee where e_name != 'malay'

select * from employee where e_salary = 25000 and department_id = 2
select * from employee where e_salary = 15000 or department_id = 2

select e.e_name,d.d_name
from employee e
join department d
on d.d_id = e.department_id

select e.e_name,d.*
from employee e
left join department d
on d.d_id = e.department_id
where d.d_id is not null

select e.*,d.*
from department d
right join employee e
on d.d_id = e.department_id

select e.*,d.*
from employee e
full join department d
on d.d_id = e.department_id

select e.*,d.*
from employee e
cross join department d

select * from employee order by e_name asc

select e_name,e_mail,e_salary from employee order by e_state desc

select *,
rank() over(partition by e_gender order by e_salary desc) [rank],
dense_rank() over(partition by e_gender order by e_salary desc) [dense rank],
row_number() over(partition by e_gender order by e_salary desc) [row_number],
ntile(2) over(partition by e_gender order by e_salary desc) [ntile]
from employee


select * from employee

select *,
LEAD(e_salary,3) over(order by e_id)
from employee

select *,
lag(e_salary,3) over(order by e_id)
from employee

select *,
first_value(e_salary) over(order by e_id desc)
from employee

select *,
last_value(e_salary) over(order by e_gender desc)
from employee

select charindex('M','Malay',2)

select patindex('%mal%','malay')

select replicate('abc',3)

select stuff('malay',1,3,'*')

select 'Hi' + 'Malay'
select 9+8

select concat('Malay',9)

select QUOTENAME('Hi','(')

select abs(-9.5)

select ceiling(1.45)

select floor(1.5)

select rand()

select SQUARE(2)

select round(145.55,1),round(145.45,1),round(145.0,1),round(123.580,1)

select DATEADD(day,2,'2022/02/02')
select DATEADD(day,-2,'2022/02/01')
select DATEADD(month,2,'2022/02/02')

select DATEPART(year,'2022/02/02')
select year('2022/02/02')
