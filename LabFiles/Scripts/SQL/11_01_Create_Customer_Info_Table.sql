CREATE TABLE [WWICustomerInfo]
 (
   [UserName] [nvarchar](100)  NULL,
   [Gender] [nvarchar](10)  NULL,
   [Phone] [nvarchar](50)  NULL,
   [Email] [nvarchar](150)  NULL,
   [CreditCard] [nvarchar](21)  NULL
 )
 WITH
 (
   DISTRIBUTION = REPLICATE,
   CLUSTERED COLUMNSTORE INDEX
 )
 GO