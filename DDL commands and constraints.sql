
create database employee ;
use employee;
create table department(department_id int,department_name varchar(100));
create table location(location_id int,location varchar(30));
create table employees
(employee_id int,employee_name varchar(50),gender enum ("M","F"),age int,hire_date date,designation varchar(100),department_id int,location_id int,salary decimal(10,2));


alter table employees add column email varchar(100);
alter table employees modify column designation varchar(150);
alter table employees drop column age;
alter table employees rename column hire_date to date_of_joining;

rename table department to departments_info;
rename table location to locations;

truncate table employees;

drop table employees;
drop database employee;

create database employee;
use employee;

create table department(department_id int primary key,department_name varchar(100) not null unique);
create table location(location_id int auto_increment primary key,location varchar(30) unique not null);
create table employees
(employee_id int primary key,
employee_name varchar(50) not null,
gender enum ("M","F"),
age int check(age>=18),
hire_date date default (current_date()),
designation varchar(100),
department_id int ,
location_id int,
salary decimal(10,2),
foreign key (department_id)references department(department_id),
foreign key(location_id)references location(location_id));
