------------------------
--- CREATE VIEW CALENDAR
------------------------
CREATE VIEW gold.calendar
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Calendar/',
    FORMAT = 'PARQUET'
) AS Q1;

-------------------------
--- CREATE VIEW CUSTOMERS
-------------------------
CREATE VIEW gold.customers
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Customers/',
    FORMAT = 'PARQUET'
) AS Q2;

----------------------------------
--- CREATE VIEW PRODUCT CATEGORIES
----------------------------------
CREATE VIEW gold.productcat
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
    FORMAT = 'PARQUET'
) AS Q3;

--------------------------------------
--- CREATE VIEW PRODUCT SUBCATEGORIES
--------------------------------------
CREATE VIEW gold.productsubcat
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Product_Subcategories/',
    FORMAT = 'PARQUET'
) AS Q4;

------------------------
--- CREATE VIEW PRODUCTS
------------------------
CREATE VIEW gold.products
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Products/',
    FORMAT = 'PARQUET'
) AS Q5;

------------------------
--- CREATE VIEW RETURNS
------------------------
CREATE VIEW gold.returns
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Returns/',
    FORMAT = 'PARQUET'
) AS Q6;

------------------------
--- CREATE VIEW SALES
------------------------
CREATE VIEW gold.sales
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Sales/',
    FORMAT = 'PARQUET'
) AS Q7;

----------------------------
--- CREATE VIEW TERRITORIES
----------------------------
CREATE VIEW gold.territories
AS
SELECT * FROM 
OPENROWSET
( 
    BULK 'https://adventureworkstoragedl.blob.core.windows.net/silver/AdventureWorks_Territories/',
    FORMAT = 'PARQUET'
) AS Q8;