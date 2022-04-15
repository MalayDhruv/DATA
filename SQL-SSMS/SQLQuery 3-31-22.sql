use md 

select * from Employee1
select * from City
select * from Company
select * from state

select employee_name,employee_salary,state_name,city_name,company_name from Employee1 e
join City ct on e.employee_city=ct.city_id
join State s on ct.state=s.state_id
join Company c on c.company_id=e.employee_company