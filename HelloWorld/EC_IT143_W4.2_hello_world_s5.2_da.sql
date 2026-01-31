-- Step 5: Create a table from the view
SELECT v.benefit_message,
       v.current_date_time
INTO dbo.t_sql_server_benefit
FROM dbo.v_sql_server_benefit AS v;

--Drop and re-create your table multiple times as needed.

DROP TABLE IF EXISTS dbo.t_sql_server_benefit;
GO
-- Recreate the table with constraints
CREATE TABLE dbo.t_sql_server_benefit (
ID INT PRIMARY KEY IDENTITY(1,1), benefit_message NVARCHAR(200) NOT NULL, current_date_time DATETIME NOT NULL DEFAULT GETDATE()
);
GO