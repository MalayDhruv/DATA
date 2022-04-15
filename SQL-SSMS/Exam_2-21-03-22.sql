--Name : Malay Dhruv
--E_id : 20068
--Paper_np : 2

use md
create table emp2(
id varchar(5) primary key,
e_name varchar(10),
dob date,
salary numeric(10),
city varchar(20)
)
insert into emp2(id,e_name,dob,salary,city) values('E01','Tulsi','1982/01/26',12000,'Ahmedabad')
insert into emp2 values('E02','Gopi','1983/08/15',15000,'Anand'),('E03','Rajshree','1984/10/3',20000,'Vadodara'),('E04','Vaishali','1985/03/23',25000,'Surat'),('E05','Laxmi','1983/02/14',18000,'Anand')
insert into emp2(id,e_name,dob,salary,city) values('E06','Shivali','1984/09/05',20000,null)

select * from emp2

--Q1 DONE
--Q2 DONE
--Q3
select id,dob from emp2 group by id,dob having id in('E01','E03')

--Q4
select * from emp2 where salary between 18000 and 20000

--Q5
select * from  emp2 where city not in ('Ahmedabad','Surat')

--Q6
select * from emp2 where city like('%d')

--Q7 Already Done in Table 
--alter table emp2
--add constraint salary check(salary>10000)

--Q8
select * from emp2 where dob between '1982/01/01' and '1983/12/31'

--Q9
select city,avg(salary) from emp2
group by city

--Q10
select * from emp2 where salary>16000
