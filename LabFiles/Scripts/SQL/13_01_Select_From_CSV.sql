SELECT
   csv.*
FROM
    OPENROWSET(
        BULK 'https://<ADLS Gen2 Account Name>.dfs.core.windows.net/wwi-02/data-generators/generator-product/generator-product.csv',
        FORMAT='CSV',
        FIRSTROW = 1
    ) WITH (
        ProductID INT,
        Seasonality INT,
        Price DECIMAL(10,2),
        Profit DECIMAL(10,2)
    ) as csv