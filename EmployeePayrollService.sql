﻿-- UC1
Create database Payroll_Services;

exec sp_databases;   --Show all existing databases in short
select * from sys.databases;   --Show all the existing databases in details

CREATE TABLE employee_payroll1
(
EmployeeID int identity(1,1) primary key,
EmployeeName varchar(50),
PhoneNumber varchar(50),
Address varchar(255),
Department varchar(50),
Gender char(1),
BasicPay float,
Deductions float,
TaxablePay float,
Tax float,
NetPay float,
StartDate Date,
City varchar(50),
Country varchar(50)
);
Select * from employee_payroll1;
--drop table employee_payroll

--insert Values into the table
insert into employee_payroll1(EmployeeName,PhoneNumber,Address,Department,Gender,BasicPay,Deductions,TaxablePay,Tax,NetPay,StartDate,City,Country) values
('Terisa','8788616249','Jaunpur','HR','F','300000','20000','10000','20000','180000','2021-05-20','Jaunpur','INDIA');
select * from employee_payroll;  ---Display table
--Delete from employee_payroll where EmployeeID = 3;  -- To delete any particular row.


-- UC2
--CREATE PROCEDURE precedureName    -- How to create a procedure
--AS
--SELECT * FROM table_name   
--GO;
--Exec procedureName

-- Creating a Store Procedure
Create procedure SpAddEmployeeDetails
as
Begin
	Select * from employee_payroll1
END

exec SpAddEmployeeDetails  --Executing SP

-- Alter a store Procedure by C# program
ALTER PROCEDURE SpAddEmployeeDetails
(
@EmployeeName varchar(50),
@PhoneNumber varchar(50),
@Address varchar(255),
@Department varchar(50),
@Gender char(1),
@BasicPay float,
@Deductions float,
@TaxablePay float,
@Tax float,
@NetPay float,
@StartDate Date,
@City varchar(50),
@Country varchar(50)
)
as
Begin
	Insert into employee_payroll1 values(@EmployeeName,@PhoneNumber,@Address,@Department,@Gender,@BasicPay,@Deductions,@TaxablePay,@Tax,
	@NetPay,@StartDate,@City,@Country)
End


-- UC3 and UC4
Select * from employee_payroll1;

--- create company Table
Create table company (CompanyID int,CompanyName varchar(50));
select * from company

 --- create employee Table
Create table employee(EmployeeId int ,EmployeeName varchar(20),Gender char(1), PhoneNumber float, Address varchar(20), 
StartDate DATETIME ,City varchar(10) ,Country varchar(10),CompanyID int);
select * from employee
 
 --- create payroll Table
Create table payroll(EmployeeId int ,BasicPay float , Deductions float ,TaxablePay float ,IncomeTax float, NetPay float );
select * from payroll
 
 --- create department Table
Create table department1 (DepartmentID int,DepartmentName varchar(50));
select * from department1
 
 --- create employee_dept Table
Create table employee_dept (EmployeeId int,DepartmentID int);
select * from employee_dept