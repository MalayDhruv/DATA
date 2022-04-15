use md 
select * from employee

insert into employee
values('Meet','meet@gmail.com',25000,'11/11/1991',9611228475,'Gujarat','Male',3)

--Q1
select e_name,e_salary 
from employee
where e_salary IN(
SELECT e_salary
from employee
GROUP BY e_salary
HAVING COUNT(*)>1
)

--Q2
select top 5 e_salary from employee order by e_salary desc
with e_salary
as
(
select e_name,e_Salary,roq
)
	
--Q4
select e_salary from employee where e_salary > 10000 and department_id = 2

select * from department
select * from employee

--Q5
SELECT * FROM employee
WHERE e_salary > 
ALL(SELECT avg(e_salary)FROM employee GROUP BY department_id
having count(*)>avg(e_salary)
)