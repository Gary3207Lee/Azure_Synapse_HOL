--Execute this line from the master database
CREATE LOGIN dataloader WITH PASSWORD = 'Demo@pass123';
CREATE USER dataloader FOR LOGIN dataloader;

--Execute the remainder of these lines from the sqlpool database
CREATE USER dataloader FOR LOGIN dataloader;
GRANT CONTROL ON DATABASE::sqlpool to dataloader;
EXEC sp_addrolemember 'largerc', 'dataloader';
