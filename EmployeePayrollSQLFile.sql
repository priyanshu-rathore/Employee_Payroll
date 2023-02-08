create database payroll_service;
use payroll_service;

create table employee_payroll
(
EmployeeID int identity(1,1) primary key,
EmployeeName varchar(255),
Salary float,
StartDate Date);
