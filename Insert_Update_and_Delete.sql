

-- 1. Add a new supplier.
insert into northwind.suppliers(
SupplierID,
CompanyName, 
ContactName,
ContactTitle)
values(
100,
"yearUp",
"fevzi",
"app_dev");

-- 2. Add a new product provided by that supplier
insert into northwind.products(
ProductID,
ProductName,
SupplierID,
UnitPrice)
values(
97,
"product1",
100,
50);


-- 3. List all products and their suppliers.
select ProductID,ProductName, UnitPrice, s.SupplierID, CompanyName,ContactName
from northwind.products as p
join northwind.suppliers as s
on p.SupplierID=s.SupplierID
order by ProductID desc;

-- 4. Raise the price of your new product by 15%.
update northwind.products
set unitprice= unitprice * 1.15
where ProductID=97;

-- 5. List the products and prices of all products from that supplier.
select ProductID,ProductName, UnitPrice, s.SupplierID, CompanyName,ContactName
from northwind.products as p
join northwind.suppliers as s
on p.SupplierID=s.SupplierID
order by ProductID desc;

-- 6. Delete the new product.
delete from northwind.products
where ProductID=97;

-- 7. Delete the new supplier.
delete from northwind.suppliers
where SupplierID=100;

-- 8. List all products.
select ProductID, ProductName, UnitPrice
from northwind.products
order by ProductID desc;

-- 9. List all suppliers.
select SupplierID, CompanyName
from northwind.suppliers
order by SupplierID desc;

