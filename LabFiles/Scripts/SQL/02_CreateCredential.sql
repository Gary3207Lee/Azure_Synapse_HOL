CREATE MASTER KEY ENCRYPTION BY PASSWORD = 'Demo@pass123';
CREATE DATABASE SCOPED CREDENTIAL MigrationCredential
WITH IDENTITY = 'adlsgen2sea' , SECRET = 'DR4mtJXaZG9hKgVQHMtufSfYjs2PGJlI+4kl0UhuUC4sesrZ/wHbt7o1N8b+PHmTHlu2Vj4/9GLe9WfSYLrgrQ=='

CREATE EXTERNAL DATA SOURCE MigrationStor WITH (TYPE = HADOOP,
LOCATION=
'wasbs://scaleanalytics@adlsgen2sea.blob.core.windows.net/WoodgroveMySQL',
CREDENTIAL = MigrationCredential);

CREATE EXTERNAL FILE FORMAT MigrationFiles WITH(FORMAT_TYPE = DelimitedText,
FORMAT_OPTIONS (FIELD_TERMINATOR = '|'));
