Create table suppliers(
id int primary key,
supplier_name varchar(50)
);

Insert into suppliers values
(1,"ShockWave Tech"),
(2,"CDW"),
(3,"Acme Tech"),
(4,"CloudTail"),
(5,"Alpha Seller");

Create table products
(
id int primary key,
ProductName varchar(50),
PartNumber int,
ProductLabel varchar(50),
StartingInventory int,
InventoryReceived int,
InventoryShipped int,
InventoryOnHand int,
MinimumRequired int
);

Insert into products values
(1,"Motor",126541,"RGB123",25,12,10,15,11),
(2,"Motor2",126542,"RGB223",30,45,15,65,18),
(3,"Motor3",126543,"RGB323",62,35,20,62,19),
(4,"Motor4",126544,"RGB423",20,35,45,75,98),
(5,"Motor5",126545,"RGB523",10,25,16,68,12),
(6,"Motor6",126546,"RGB623",80,65,52,72,68),
(7,"Motor7",126547,"RGB723",72,33,15,35,28),
(8,"Motor8",126548,"RGB823",24,46,9,32,64);

-- Orders Table
Create table Orders(
id int primary key,
Name varchar(50),
productid int,
NumberShipped int,
OrderDate date,
Foreign key(productid) References products(id)
);
drop table Orders;
Insert into Orders values
(101,"Gerrard",1,36,"2023-05-16"),
(102,"Liv",2,23,"2023-08-28"),
(103,"Cozmo",3,20,"2023-08-27"),
(104,"Tony",6,63,"2023-09-30"),
(105,"Galina",6,43,"2023-06-10"),
(106,"Gerard",3,70,"2023-08-02"),
(107,"Traver",7,66,"2023-02-03"),
(108,"Clevie",5,88,"2023-09-13"),
(109,"Reuben",4,32,"2023-03-28"),
(110,"Codie",2,78,"2023-01-06"),

(111,"Merv",2,72,"2023-04-25"),
(112,"Merwyn",3,68,"2022-11-14"),
(113,"Matteo",6,55,"2023-07-17"),
(114,"Nancee",5,31,"2023-06-29"),
(115,"Patricio",7,95,"2023-10-08"),
(116,"Jeff",2,92,"2023-10-24"),
(117,"Giustino",3,61,"2023-06-18"),
(118,"Kelsey",6,96,"2023-01-03"),
(119,"Schuyler",2,52,"2023-07-09"),
(120,"Izzy",1,14,"2023-06-13"),

(121,"Louie",1,22,"2023-05-18"),
(122,"Risa",3,16,"2023-09-11"),
(123,"Terrence",6,34,"2023-08-17"),
(124,"Florentia",3,64,"2022-12-03"),
(125,"Ronny",1,145,"2023-08-16"),
(126,"Sholom",2,16,"2023-06-25"),
(127,"Udell",5,155,"2022-12-17"),
(128,"Shauna",2,69,"2023-06-25"),
(129,"Enoch",6,104,"2023-06-21"),
(130,"Orelia",7,193,"2022-11-05"),

(131,"Westbrook",7,25,"2022-12-20"),
(132,"Maximo",6,163,"2023-09-21"),
(133,"Maressa",5,153,"2022-11-10"),
(134,"Sigismund",2,191,"2023-10-12"),
(135,"Ezekiel",1,183,"2023-06-07"),
(136,"Koral",6,19,"2023-09-02"),
(137,"Sada",4,13,"2023-07-28"),
(138,"Aldrich",3,83,"2023-01-20"),
(139,"Aldric",2,143,"2023-04-14"),
(140,"Nevins",1,3,"2023-07-30"),

(141,"Travus",1,66,"2023-02-25"),
(142,"Morry",2,15,"2022-12-17"),
(143,"Maxy",2,24,"2023-01-30"),
(144,"Dionis",6,45,"2023-06-05"),
(145,"Rhianna",5,123,"2023-08-13"),
(146,"Shayne",7,78,"2023-07-03"),
(147,"Bridget",1,89,"2022-12-06"),
(148,"Chlo",3,96,"2022-12-10"),
(149,"Pepe",2,136,"2023-02-11"),
(150,"Lonny",4,32,"2023-04-07"),

(151,"Ansel",4,32,"2023-04-08"),
(152,"Ravid",5,132,"2023-02-28"),
(153,"Dennis",3,62,"2023-06-02"),
(154,"Claudelle",6,42,"2023-10-03"),
(155,"Conn",7,62,"2023-10-15"),
(156,"Mallorie",4,93,"2023-06-19"),
(157,"La verne",1,32,"2023-02-10"),
(158,"Clem",7,99,"2023-06-16"),
(159,"Stearne",2,122,"2023-02-09"),
(160,"Erek",6,92,"2023-09-30"),

(161,"Wally",6,92,"2023-05-20"),
(162,"Sioux",5,62,"2023-09-12"),
(163,"Lane",3,78,"2022-11-10"),
(164,"Kristoforo",7,45,"2023-05-25"),
(165,"Maurene",1,12,"2023-07-13"),
(166,"Bevan",6,111,"2023-08-11"),
(167,"Jemmy",3,122,"2023-04-12"),
(168,"Wally",1,94,"2023-04-11"),
(169,"Glory",7,96,"2023-06-05"),
(170,"Reba",1,55,"2022-11-10");

Create table purchases
(
id int(11) Primary Key, 
supplierid int(11) ,
productid int(11) ,
NumberReceived int(11), 
PurchaseDate date,
Foreign key(supplierid) References suppliers(id),
Foreign key(productid) References products(id)
)

select * from purchases;
Insert into purchases values
(1001,1,2,20,"2023-10-29"),
(1002,2,3,112,"2023-07-31"),
(1003,3,4,20,"2023-06-14"),
(1004,4,1,42,"2023-09-02"),
(1005,5,5,90,"2023-09-30"),
(1006,5,8,120,"2023-05-28"),
(1007,1,7,60,"2023-07-12"),
(1008,5,6,70,"2023-06-08"),
(1009,1,2,123,"2023-08-13"),
(1010,3,1,55,"2023-03-11"),
(1011,4,6,41,"2023-04-21"),
(1012,4,8,65,"2023-05-21"),
(1013,2,5,33,"2023-02-27"),
(1014,4,2,99,"2022-11-05"),
(1015,3,1,55,"2023-08-20"),
(1016,3,1,78,"2023-04-26"),
(1017,1,2,180,"2023-07-19"),
(1018,2,7,50,"2023-06-06"),
(1019,5,2,120,"2023-04-10");

select * from purchases;

select * from suppliers;
select * from products;
select * from orders;
select * from purchases;




-- ****************** Qstn ********************
-- QST1) Which Product has minimum storage in Inventory Management?--

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


