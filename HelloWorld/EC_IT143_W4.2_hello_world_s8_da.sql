-- Call the stored procedure
EXEC dbo.sp_load_sql_server_benefit;

-- Verify the result
SELECT * FROM dbo.t_sql_server_benefit;