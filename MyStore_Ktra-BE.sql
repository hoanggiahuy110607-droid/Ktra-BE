USE master;
GO
DROP DATABASE IF EXISTS MyStore;
GO

CREATE DATABASE MyStore;
GO

USE MyStore;
GO

CREATE TABLE [dbo].[Category](
    [CategoryID] [int] IDENTITY(1,1) NOT NULL,
    [CategoryName] [nvarchar](max) NOT NULL,
    PRIMARY KEY CLUSTERED ([CategoryID] ASC)
);
GO

CREATE TABLE [dbo].[Product](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [ProductName] [nvarchar](max) NOT NULL,
    [UnitPrice] [decimal](18, 2) NOT NULL,
    [CategoryID] [int] NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO

CREATE TABLE [dbo].[Customer](
    [CustomerID] [int] IDENTITY(1,1) NOT NULL,
    [CustomerName] [nvarchar](max) NOT NULL,
    [Phone] [nvarchar](max) NOT NULL,
    [Email] [nvarchar](max) NOT NULL,
    PRIMARY KEY CLUSTERED ([CustomerID] ASC)
);
GO

CREATE TABLE [dbo].[Order](
    [OrderID] [int] IDENTITY(1,1) NOT NULL,
    [CustomerID] [int] NOT NULL,
    [OrderDate] [date] NOT NULL,
    [TotalAmount] [decimal](18, 2) NOT NULL,
    [PaymentStatus] [nvarchar](max) NOT NULL,
    [AddressDelivery] [nvarchar](max) NOT NULL,
    PRIMARY KEY CLUSTERED ([OrderID] ASC)
);
GO

CREATE TABLE [dbo].[OrderDetail](
    [ID] [int] IDENTITY(1,1) NOT NULL,
    [ProductID] [int] NOT NULL,
    [OrderID] [int] NOT NULL,
    [Quantity] [int] NOT NULL,
    [UnitPrice] [decimal](18, 2) NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);
GO
