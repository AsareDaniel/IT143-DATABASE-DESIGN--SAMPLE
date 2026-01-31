-- Q: What is the benefit of SQL Server?
-- A: Let's ask SQL Server and find out... 
-- Step 1: Create a view that holds our "answer" 

DROP VIEW IF EXISTS dbo.v_sql_server_benefit; 
GO 
CREATE VIEW dbo.v_sql_server_benefit AS
SELECT 'SQL Server helps store, manage, and query data efficiently.' AS benefit_message,
GETDATE() AS current_date_time;
GO