CREATE DATABASE NortW
GO
USE NortW;

CREATE TABLE DimCustomers(
	[CustomerID] [nchar](5) NULL,
	[CompanyName] [nvarchar](40) NULL,
	[ContactName] [nvarchar](30) NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL
);

CREATE TABLE DimEmployees(
	[EmployeeID] [int] NULL,
	[LastName] [nvarchar](20) NULL,
	[FirstName] [nvarchar](10) NULL,
	[Title] [nvarchar](30) NULL,
	[TitleOfCourtesy] [nvarchar](25) NULL,
	[BirthDate] [datetime] NULL,
	[HireDate] [datetime] NULL,
	[City] [nvarchar](15) NULL,
	[Region] [nvarchar](15) NULL,
	[Country] [nvarchar](15) NULL,
	[ReportsToName] [nvarchar](100) NULL,
	[FullLastNameFirstName] [nvarchar](100) NULL,
	[FullFirstNameLastName] [nvarchar](100) NULL,
	[LastNameInitials] [nvarchar](1) NULL,
	[FirstNameInitials] [nvarchar](1) NULL,
	[EmployeeAge] [int] NULL,
	[EmployeeAntiquity] [int] NULL,
	[EstratoEmployeeAge] [varchar](100) NULL,
	[EstratoEmployeeAntiquity] [varchar](100) NULL
);
 
CREATE TABLE DimProducts(
	[ProductID] [int] NULL,
	[ProductName] [nvarchar](40) NOT NULL,
	[SupplierID] [int] NULL,
	[CategoryID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Discontinued] [bit] NOT NULL,
	[CompanyName] [nvarchar](40) NOT NULL,
	[CategoryName] [nvarchar](40) NOT NULL,
	[SuplierCity] [nvarchar](40) NOT NULL,
	[SuplierRegion] [nvarchar](40) NOT NULL,
	[SuplierCountry] [nvarchar](40) NOT NULL,
	[EstratoUnitPrice] [varchar](100) NULL
);

create table Estratificacion
(
    id int NULL,
    Tipo [nvarchar] (30) NULL,
    RangoInferior [real] NULL,
    RangoSuperior [real] NULL,
    Descripcion [nvarchar] (100) NULL
);

CREATE TABLE FactOrderDetails(
	[OrderID] [int] NULL,
	[ProductID] [int] NULL,
	[UnitPrice] [money] NULL,
	[Quantity] [smallint] NULL,
	[Discount] [real] NULL,
	[MontoBruto] [money] NULL,
	[DescuentoUnitario] [money] NULL,
	[DescuentoTotal] [money] NULL,
	[MontoNeto] [money] NULL,
	[EstratoUnitPrice] [varchar](100) NULL,
	[EstratoQuantity] [varchar](100) NULL,
	[EstratoDiscount] [varchar](100) NULL,
	[EstratoMontoBruto] [varchar](100) NULL,
	[EstratoDescuentoUnitario] [varchar](100) NULL,
	[EstratoDescuentoTotal] [varchar](100) NULL,
	[EstratoMontoNeto] [varchar](100) NULL
);

CREATE TABLE FactOrders(
	[OrderID] [int]  NULL,
	[CustomerID] [nchar](5) NULL,
	[EmployeeID] [int] NULL,
	[OrderDate] [datetime] NULL,
	[CompanyName] [nvarchar](60) NULL,
	[Freight] [money] NULL,
	[ShipName] [nvarchar](40) NULL,
	[ShipCity] [nvarchar](15) NULL,
	[ShipRegion] [nvarchar](15) NULL,
	[ShipCountry] [nvarchar](15) NULL,
	[EstratoFreight] [varchar](100) NULL
);
