-- Q: What is the benefit of SQL Server?
-- A: Store the answer inside a table

CREATE TABLE dbo.t_sql_server_benefit (
    ID INT PRIMARY KEY IDENTITY(1,1),
    benefit_message NVARCHAR(200),
    current_date_time DATETIME
);

INSERT INTO dbo.t_sql_server_benefit (benefit_message, current_date_time)
VALUES ('SQL Server helps store, manage, and query data efficiently.', GETDATE());

SELECT * FROM dbo.t_sql_server_benefit;
