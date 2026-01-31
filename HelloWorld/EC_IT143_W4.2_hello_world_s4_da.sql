/*****************************************************************************************************************
NAME:    My Script Name
PURPOSE: My script purpose...

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   JJAUSSI       1. Built this script for EC IT440


RUNTIME: 
Xm Xs

NOTES: 
This is where I talk about what this script is, why I built it, and other stuff...
 
******************************************************************************************************************/

-- Q1: What is the benefit of SQL Server?
-- A1: SQL Server helps store, manage, and query data efficiently.
-- Drop the view if it already exists
DROP VIEW IF EXISTS dbo.v_sql_server_benefit;
GO

--Create the view
CREATE VIEW dbo.v_sql_server_benefit
AS SELECT 'SQL Server helps store, manage, and query data efficiently.' AS benefit_message,
GETDATE() AS current_date_time;
GO