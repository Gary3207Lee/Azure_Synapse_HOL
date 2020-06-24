CREATE TABLE [dbo].[CardTransaction]
(
	[transactionID] [nvarchar](40) NOT NULL,
	[accountID] [nvarchar](20) NULL,
	[transactionAmountUSD] [float] NULL,
	[transactionAmount] [float] NULL,
	[transactionCurrencyCode] [nvarchar](3) NULL,
	[localHour] [nvarchar](3) NULL,
	[transactionIPaddress] [nvarchar](10) NULL,
	[ipState] [nvarchar](100) NULL,
	[ipPostcode] [nvarchar](20) NULL,
	[ipCountryCode] [nvarchar](2) NULL,
	[isProxyIP] [nvarchar](10) NULL,
	[browserLanguage] [nvarchar](20) NULL,
	[paymentInstrumentType] [nvarchar](20) NULL,
	[cardType] [nvarchar](20) NULL,
	[paymentBillingPostalCode] [nvarchar](20) NULL,
	[paymentBillingState] [nvarchar](50) NULL,
	[paymentBillingCountryCode] [nvarchar](2) NULL,
	[cvvVerifyResult] [nvarchar](1) NULL,
	[digitalItemCount] [int] NULL,
	[physicalItemCount] [int] NULL,
	[accountPostalCode] [nvarchar](20) NULL,
	[accountState] [nvarchar](50) NULL,
	[accountCountry] [nvarchar](2) NULL,
	[accountAge] [int] NULL,
	[isUserRegistered] [nvarchar](10) NULL,
	[paymentInstrumentAgeInAccount] [float] NULL,
	[numPaymentRejects1dPerUser] [int] NULL,
	[transactionDateTime] [datetime] NULL,
	[collectionType] [nvarchar](50) NULL,
	[id] [nvarchar](40) NOT NULL
)
WITH
(
	DISTRIBUTION = ROUND_ROBIN,
	CLUSTERED COLUMNSTORE INDEX
)
GO

