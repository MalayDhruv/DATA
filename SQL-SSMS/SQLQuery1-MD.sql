create database Md

select * from sys.schemas
select * from sys.databases
use Md


create table employee(
e_id int,
e_name varchar(20),
e_gender varchar(10),
)

alter table employee
add e_mobile numeric(10)

select* from employee