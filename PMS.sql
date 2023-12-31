USE [PMS]

CREATE TABLE [dbo].[PMS_FixedIncomeMaster](
	[FIID] [int] IDENTITY(1000,1) NOT NULL,
	[FIName] [varchar](max) NULL,
	[FIDescription] [varchar](max) NULL,
	[RateOfInterest] [numeric](18, 2) NULL,
	[Tenure] [numeric](18, 2) NULL,
	[PurchaseUnitValue] [numeric](18, 2) NULL
)
CREATE TABLE [dbo].[PMS_MutualFundMaster](
	[MFID] [int] IDENTITY(1000,1) NOT NULL,
	[MFName] [varchar](max) NULL,
	[FundHouse] [varchar](max) NULL,
	[FundType] [varchar](max) NULL,
	[FaceValue] [numeric](18, 2) NULL
)
CREATE TABLE [dbo].[PMS_StockMaster](
	[StockId] [int] IDENTITY(1000,1) NOT NULL,
	[StockName] [varchar](max) NULL,
	[FaceValue] [numeric](18, 2) NULL,
)
CREATE TABLE [dbo].[PMS_User](
	[LoginId] [int] IDENTITY(1000,1) NOT NULL,
	[Password] [nvarchar](20) NOT NULL,
	[EmailID] [nvarchar](50) NOT NULL,
	[DOB] [datetime] NULL,
	[FirstName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NULL,
	[Gender] [char](5) NULL,
	[Address] [nvarchar](max) NULL,
	[State] [nvarchar](50) NULL,
	[City] [nvarchar](50) NULL,
	[Country] [nvarchar](50) NULL,
	[Pincode] [bigint] NULL,
	[Phone] [varchar](max) NULL,
	[Adminlndicator] [bit] NULL,
	[ValidUserlndicator] [bit] NULL
)
CREATE TABLE [dbo].[PMS_UserFixedMap](
	[FITransactionNo] [int] IDENTITY(1000,1) NOT NULL,
	[FIID] [int] NULL,
	[FIName] [varchar](max) NULL,
	[LoginId] [int] NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseQty] [numeric](18, 2) NULL
)
CREATE TABLE [dbo].[PMS_UserMFMap](
	[MFTransactionNo] [int] IDENTITY(100,1) NOT NULL,
	[MFID] [int] NULL,
	[MFName] [nvarchar](max) NULL,
	[LoginId] [int] NULL,
	[Quantity] [numeric](18, 2) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchaseQty] [numeric](18, 2) NULL,
	[FolioNo] [varchar](max) NULL
)
CREATE TABLE [dbo].[PMS_UserStockMap](
	[TransactionNo] [int] IDENTITY(1000,1) NOT NULL,
	[StockID] [int] NOT NULL,
	[StockName] [nvarchar](max) NULL,
	[LoginID] [int] NOT NULL,
	[Quantity] [numeric](18, 2) NULL,
	[PurchaseDate] [datetime] NULL,
	[PurchasePrice] [numeric](18, 2) NULL
)