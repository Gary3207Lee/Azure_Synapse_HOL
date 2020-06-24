SELECT
    products.*
FROM
    OPENROWSET(
        BULK 'https://<ADLS Gen2 Account Name>.dfs.core.windows.net/wwi-02/product-json/json-data/*.json',
        FORMAT='CSV',
        FIELDTERMINATOR ='0x0b',
        FIELDQUOTE = '0x0b',
        ROWTERMINATOR = '0x0b'
    )
    WITH (
        jsonContent NVARCHAR(200)
    ) AS [raw]
CROSS APPLY OPENJSON(jsonContent)
WITH (
    ProductId INT,
    Seasonality INT,
    Price DECIMAL(10,2),
    Profit DECIMAL(10,2)
) AS products