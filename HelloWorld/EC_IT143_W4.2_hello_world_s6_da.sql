/*****************************************************************************************************************
NAME:    Daniel Asare
PURPOSE: Reload the Hello World table from the view using TRUNCATE + INSERT

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   Daniel      Created reload logic using ad hoc SQL script


RUNTIME: 
Xm Xs

NOTES: 
This script demonstrates Step 6 of the Answer-Focused Approach.
It clears the table dbo.t_sql_server_benefit and reloads it from the view dbo.v_sql_server_benefit.
This pattern is common in ETL workflows where data is refreshed regularly. 
******************************************************************************************************************/

-- Q1: How do I reload my Hello World table from the view?
-- A1: Use TRUNCATE to clear the table, then INSERT to load fresh data from the view.

-- Clear the table
IF OBJECT_ID('dbo.t_sql_server_benefit') IS NOT NULL
TRUNCATE TABLE dbo.t_sql_server_benefit;

-- Reload the table from the view
INSERT INTO dbo.t_sql_server_benefit (benefit_message, current_date_time)
SELECT benefit_message, current_date_time
FROM dbo.v_sql_server_benefit;

SELECT GETDATE() AS my_date;
-- Verify the reload
SELECT * FROM dbo.t_sql_server_benefit;