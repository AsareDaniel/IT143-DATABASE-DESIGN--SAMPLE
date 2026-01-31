/*****************************************************************************************************************
NAME:    Daniel Asare
PURPOSE:  Create a stored procedure to reload Hello World data from the view

MODIFICATION LOG:
Ver      Date        Author        Description
-----   ----------   -----------   -------------------------------------------------------------------------------
1.0     05/23/2022   Daniel      Encapsulated TRUNCATE + INSERT logic into a stored procedure


RUNTIME: 
Xm Xs

NOTES: 
This script defines a stored procedure named dbo.sp_load_sql_server_benefit.
It reloads the table dbo.t_sql_server_benefit from the view dbo.v_sql_server_benefit.
Stored procedures are reusable, secure, and backed up with the database. 
******************************************************************************************************************/

-- Q1: How do I encapsulate my reload logic into a stored procedure?
-- A1: Use CREATE PROCEDURE to wrap the TRUNCATE + INSERT pattern.

-- Drop the procedure if it exists
DROP PROCEDURE IF EXISTS dbo.sp_load_sql_server_benefit;
GO

-- Create the stored procedure
CREATE PROCEDURE dbo.sp_load_sql_server_benefit
AS
BEGIN
    SET NOCOUNT ON;

    -- Clear the table
    IF OBJECT_ID('dbo.t_sql_server_benefit') IS NOT NULL
    TRUNCATE TABLE dbo.t_sql_server_benefit;

    -- Reload the table from the view
    INSERT INTO dbo.t_sql_server_benefit (benefit_message, current_date_time)
    SELECT benefit_message, current_date_time
    FROM dbo.v_sql_server_benefit;
    END;
    GO
SELECT GETDATE() AS my_date;