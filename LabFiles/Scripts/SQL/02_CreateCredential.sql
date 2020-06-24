CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Demo@pass123';
CREATE DATABASE SCOPED CREDENTIAL MigrationCredential
WITH IDENTITY = '<ADLS Gen2 Account Name>' , SECRET = '<ADLS Gen2 Key>'

CREATE EXTERNAL DATA SOURCE MigrationStor WITH (TYPE = HADOOP,
LOCATION=
'wasbs://scaleanalytics@<ADLS Gen2 Account Name>.blob.core.windows.net/WoodgroveMySQL',
CREDENTIAL = MigrationCredential);

CREATE EXTERNAL FILE FORMAT MigrationFiles WITH(FORMAT_TYPE = DelimitedText,
FORMAT_OPTIONS (FIELD_TERMINATOR = '|'));
