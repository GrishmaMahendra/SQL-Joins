--Creating Views in SQL: Views are temporary table in SQL

Create View PersonH as select [DepartmentID],[ShiftID],[StartDate],
                              [EndDate] from [Humanresources].[EmployeeDepartmentHistory]

Select * from PersonH

Create View Biscuits as select [Name], [ModifiedDate], [GroupName]
                     from [AdventureWorks2017]. [HumanResources]. [Department]
					 Where GroupName = 'Sales and Marketing'

Select * from Biscuits 

--Formula for creating views: Creat View ViewName as select ColumnName, columnName from Tb_Name
--Formula for creating views: Creat View ViewName as select ColumnName, columnName from Tb_Name where condition 

--Creating Views from two tables
--Formula for creating View ViewName as select ColumnName, ColumnName, ColumnName from Tb1Name, Tb2Name 

Create View Test_Tables as select  [BusineEntityID], [DepartmentID],
                                   [HumanResources].[EmployeeDepartmentHistory].[ModifiedDate],
								   [HumanResources].[EmployeePayHistory].[ModifiedDate]

From [HumanResources].[EmployeeDepartmentHistory],[HumanResources].[EmployeePayHistory]
                              


--Creating stored procedures: formula create procedure Procedure_Name as Sql_query go

Create procedure display_View as 
                 select * from PersonH GO 

exec display_View

create procedure [Extract] as 
                 Select SUM(Price) from [Laptop Sales (1)]
				 Where Country = 'United Kingdom' or Country = 'United States' 
				 go

Exec [Extract] 

create procedure [Food] as 
                 select SUM(Price) from [Laptop Sales (1)]
				 Where [State] = 'England' or [State] = 'NY'
				 GO
Exec [Food]



--Stored procedure are lines of code used to save long queries within SQL---
--Formula create procedure Van as ***sql query*** go

Create procedure [Van] as
                 Select SUM(Price) from[Laptop Sales]
				 Where Country = 'United Kingdom' or Country = 'United States'
				 go

execute [Van]

Create View New as Select Product,Price, Payment_Type, [Name] from [Laptop Sales]

Select * from New
                       