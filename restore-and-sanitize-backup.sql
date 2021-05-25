RESTORE DATABASE [AdventureWorks] FROM DISK = '/tmp/AdventureWorksLT2017.bak'
WITH FILE = 1,
MOVE 'AdventureWorksLT2012_Data' TO '/var/opt/mssql/data/AdventureWorks.mdf',
MOVE 'AdventureWorksLT2012_Log' TO '/var/opt/mssql/data/AdventureWorks.ldf',
NOUNLOAD, REPLACE, STATS = 5
GO
USE [AdventureWorks]
GO
UPDATE SalesLT.Customer
SET EmailAddress = FirstName + '@adithyavj.in',
    LastName = 'Customer',
    Phone = FORMAT(CAST(LEFT(CAST(ABS(CAST(CAST(NEWID() as BINARY(10)) as INT)) as VARCHAR(max))+'0000000000',10) as BIGINT),'###-###-####'),
    PasswordHash = '',
    PasswordSalt = ''