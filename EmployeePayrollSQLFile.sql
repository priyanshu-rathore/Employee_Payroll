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

/*UC4 Showing the table*/
select * from employee_payroll;

/*UC5 Showing table using where condition*/
select Salary from employee_payroll where StartDate between '2018-2-2' and '2020-1-1';

/*UC6 Update Employee payroll*/
update employee_payroll set EmployeeName='INCUBUS' where EmployeeName='Priyanshu' or EmployeeID=1;

/*UC7 ability to find sum,average,min,max data from table*/
select sum(Salary) from employee_payroll where EmployeeName = 'Priyanshu' and EmployeeName = 'Hisenberg' group by EmployeeName;

/*UC8 ability to extend the table*/
alter table employee_payroll add phone varchar(20);
alter table employee_payroll add address varchar;
alter table employee_payroll add department varchar;

/*UC9 Ability to extend
employee_payroll table
to have Basic Pay,
Deductions, Taxable Pay,
Income Tax, Net Pay*/
alter table employee_payroll add BasicPay float;
alter table employee_payroll add Deductions float;
alter table employee_payroll add TaxablePay float;
alter table employee_payroll add IncomeTax float;
alter table employee_payroll add NetPay float;
