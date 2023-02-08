/*UC1 creating the database*/
create database payroll_service;
use payroll_service;

/*UC2 creating the table*/
create table employee_payroll
(
EmployeeID int identity(1,1) primary key,
EmployeeName varchar(255),
Salary float,
StartDate Date);

/*UC3 Insert into table*/
insert into employee_payroll(EmployeeName,Salary,StartDate)
values('Priyanshu',30000,'2018-10-12')

insert into employee_payroll(EmployeeName,Salary,StartDate)
values('Hisenberg',200000,'2022-10-12')

insert into employee_payroll(EmployeeName,Salary,StartDate)
values('Newton',300000,'2019-10-12')

insert into employee_payroll(EmployeeName,Salary,StartDate)
values('Hawkings',1000000,'2020-10-12')

insert into employee_payroll(EmployeeName,Salary,StartDate)
values('Ramanujan',90000,'2021-10-12')

/*Showing the table*/
select * from employee_payroll;
