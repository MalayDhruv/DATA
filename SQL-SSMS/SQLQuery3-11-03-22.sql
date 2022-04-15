
update employee
set e_state = 'Gujarat'
where e_state is null

select * from employee

select *,coalesce(e_state,'Gujarat') from employee

select top 5 * from sys.databases order by create_date desc

create table demo
(
date varchar(20)
)

insert into demo values('2022/05/03'),('2021/06/06'),('31/12/2022')

update demo
set date = '2022/12/31'
where date = '31/12/2022'

alter table demo
alter column date datetime

select *,cast(date as date) from demo
select *,cast(date as varchar(20)) from demo

select e_state,sum(e_salary) from employee
group by e_state

select distinct e_name,e_gender,e_salary from employee

select e_name,e_gender,e_salary from employee
group by e_name,e_gender,e_salary

select e_name,e_gender,e_salary,count(*) a from employee
group by e_name,e_gender,e_salary
having count(*) > 1

declare @name varchar(10) = 'Malay'
print @name

declare @name varchar(10) = 'Malay'
print @name
set @name = @name + 'hello'
print @name

select *,case when e_gender = 'male' then 'M' else 'F' end newGender from employee

select *,
case when e_salary >= 30000 then 'high' when e_salary < 30000 and e_salary >= 15000 then 'mid' else 'low' end newSalary 
from employee

