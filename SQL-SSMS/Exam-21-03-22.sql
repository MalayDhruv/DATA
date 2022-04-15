--Name : Malay Dhruv
--E_id : 20068
--Paper_np : 1


use md 

create table student(
s_id int primary key identity(1,1),
s_name varchar(100),
s_subject varchar(100),
s_mark numeric(3)check(s_mark>0 and s_mark<=100) 
)

insert into student values('Malay','Science',85),('Meet','Maths',75),('Jay','Science',45),('Dhruv','Maths',65),('Tanu','Science',40),('Abhishek','Maths',65),('Ajay','Science',79),('Vraj','Maths',58),('Anuj','Science',65),('Kinajl','Maths',95)

update student
set s_mark= 30
where s_id=5

select * from student

--Q1
select * from student where s_mark between 50 and 90 and s_subject='Science'

--Q2
select *,
case when s_mark >= 90 then 'A' when s_mark < 35  then 'F' else 'B' end NewRank 
from student

--Q3
---Dynamic Result---
declare @subject varchar(10)
declare @total numeric(3) 
set @subject = 'English'
@total = select s_mark from student avg(s_mark) where s_subject = 'English'
print @total

---Staic Result---
declare @subject1 varchar(10) ='English'
declare @total1 varchar(3) = 346
print @subject1 + ' Total mark is ' + @total1


