-- Q: What is the benefit of SQL Server?

DECLARE @Benefit NVARCHAR(200);
SET @Benefit = 'SQL Server helps store, manage, and query data efficiently.';

PRINT @Benefit;
PRINT 'Answer retrieved on: ' + CONVERT(NVARCHAR, GETDATE());
