select * from suppliers;
select * from products;
select * from orders;
select * from purchases;
use practice1;
-- QST1) Which Product has minimum storage is required in Inventory Management?--

Select ProductName,PartNumber,ProductLabel,MinimumRequired, min(MinimumRequired) from products;

-- QST2) Which ProductName has Maximum Inventory Shipped?--
Select ProductName,max(InventoryShipped) from products;

-- Qst3) Suppliers that have provided highest selling product
select supplier_name,max(NumberReceived)  from purchases
join suppliers
on(purchases.supplierid=suppliers.id);


-- 4)Products that are ordered more than 10 times
Select productname,productid,count(NumberShipped) from orders
join products
on(orders.productid=products.id)
group by productid
order by count(NumberShipped) desc;

Select productname, count(productid) from orders
 join products
on(orders.productid=products.id)
group by productid
having count(productid)>10;

-- 5) Top 3 Month of the year in which numbershipped were highest
select * from suppliers;
select * from products;
select * from orders;
select * from purchases;
Select productname, count(productid), monthname(OrderDate) from orders
 join products
on(orders.productid=products.id)
group by productid
order by count(productid) desc
limit 3;

-- 6) Which PurchaseDate NumberReceived of product by Supplier was highest?

Select purchasedate, max(NumberReceived) from purchases;
 
 -- 7) Supplier name from whom the inventory received is maximum
 
select * from suppliers;
select * from products;
select * from orders;
select * from purchases;

 Select supplier_name, max(NumberReceived) from purchases
 join suppliers 
 on(purchases.supplierid=suppliers.id);

 -- 8) Supplier name from whom the inventory received is minimum
  Select supplier_name, min(NumberReceived) from purchases
 join suppliers 
 on(purchases.supplierid=suppliers.id);
 
 -- 9)what is the average order quantity of each products
 select * from suppliers;
select * from products;
select * from orders;
select * from purchases;

select productid, productname ,avg(Numbershipped) from orders
join products
on(orders.productid=products.id)
group by productid;



-- 10) Which Product has Inventoryonhand lesser than Minimum Required

select Productname, Partnumber, Productlabel, MinimumRequired, InventoryOnHand
from products
where InventoryOnHand<MinimumRequired;


-- 11) Which product was Shipped to the customer less than 100 alter
select productid,productname,productlabel, numbershipped from
products join orders
on(orders.productid=products.id)
where numbershipped>180;

select * from suppliers;
select * from products;
select * from orders;
select * from purchases;

-- 12) Name the customer,productname, productlabel, orderdate whom the product were shipped less than 50

select name, orderdate, productname, productlabel, orderdate, numbershipped
from products join orders
on (products.id=orders.productid)
where NumberShipped<15;

-- 13) Name the customer,productname, productlabel,
-- orderdate whom the product were shipped more than 150

select name, orderdate, productname, productlabel, orderdate, numbershipped
from products join orders
on (products.id=orders.productid)
where NumberShipped>180;

select * from products;
select * from orders;
-- 14) Name the customer whome the inventory on hand is greater than numbershipped?
select name, orderdate, productname, productlabel, orderdate, numbershipped, InventoryOnHand
from products join orders
on (products.id=orders.productid)
where NumberShipped> InventoryOnHand;

select name, orderdate, productname, productlabel, orderdate, numbershipped, InventoryOnHand
from products join orders
on (products.id=orders.productid)
where NumberShipped< InventoryOnHand;

-- 15)Which product has the highest number of orders in the last 2 month ?
SELECT name,productname,productlabel, OrderDate,NumberShipped
FROM   orders 
join products
on(orders.productid=products.id)
WHERE  OrderDate > (NOW() - INTERVAL 1 MONTH);
select * from orders;

