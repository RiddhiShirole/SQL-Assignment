Create Database Sample1
Create Table Customer
(
CostID int primary key,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(30),
);

select * from Customer;
create index Customername on Customer( LastName,FirstName);
insert into Customer values(2011, 'samruddhi','trimbake','nagpur','india',1235682934);
insert into Customer values(2012, 'riddhi','shirole','pune','india',9346781290);
insert into Customer values(2013, 'rutika', 'jedhe','mumbai','india',9922838638);
insert into Customer values(2014,'rucha','jadhav','phuket','thailand',1234889632);
insert into Customer values(2015,'sujay','jain','ert','canada',8667453921);
insert into Customer values(2016,'kiran','barde','nashik','india',9021784578);
insert into Customer values(2017,'john','dukh','murmur','America',6756905778);
select * from Customer;

Create Table Orderss
{
id int primary key,
OrderDate datetime,
OrderNumber nvarchar(10),
CustomerssID int,
TotalAmount decimal(12,2)
);
select * from Orderss;
alter table Orderss
add constraint fk Orderss foreign key(CustomerssID)references Customerss  (CustomerssID);
select * from Customerss;
alter table Orderss
add constraint fk Orderss foreign key(CustomerssID)reference Customerss (CustomersSID);
select * from Customerss;
select * from Orderss;
EXEC sp_rename 'Orderss.Ordid', 'Ord_id','custom';
create index idx_Cos_ID on Orderss (OrderDate);
insert into Orderss values(3100,26-02-2000,102,1012,2010);
insert into Orderss values(3101,16-04-2000,103,1012,2510);
insert into Orderss values(3102,05-06-2000,104,1012,2610);
insert into Orderss values(3103,09-05-2000,105,1012,2910);
insert into Orderss values(3104,12-03-2000,106,1012,2310);
insert into Orderss values(3105,11-12-2000,107,1012,2210);

Create Table Orderss
(
id int primary key,
OrderData datetime,
CustomerssID int,
TotalAmount decimal(12,2)
);
insert into Orderss values(3100,26-02-2000,102,1012,2010);
insert into Orderss values(3101,16-04-2000,103,1012,2510);
insert into Orderss values(3102,05-06-2000,104,1012,2610);
insert into Orderss values(3103,09-05-2000,105,1012,2910);
insert into Orderss values(3104,12-03-2000,106,1012,2310);
insert into Orderss values(3104,11-04-2000,102,1012,2510);

select * from Orderss;


create table OrderItem
(
id int primary key,
Orderid int,
Productid int ,
UnitPrice decimal(12,2),
Quantity int
);
select * from OrderItem;
insert into OrderItem values(2,2,2,116,00,4);
insert into OrderItem values(3,3,3,678,00,4);

create index idx_order_pro_item on OrderItem(pro_id);
create table product
(
pro_id int primary key,
productname nvarchar(50),
unitprice decimal(12,2),
package nvarchar(30),
isdiscontinued bit
);
select * from product;
insert into product values(21,'a',235,00,5,1);
insert into product values(22,'b',468,00,3,2);
insert into product values(23,'c',678,00,4,6);
insert into product values(24,'d',784,00,6,4);
insert into product values(25,'e',890,00,2,7);
select * from product;

SELECT Country from Customer
where Country like 'A%'


SELECT country from Customerss
where country like 'i%'

SELECT * from Customer
WHERE LastName like '_i%';

select * from Customer;

SELECT * from Customer
where Country like 'Germany';

SELECT FirstName,LastName 'FullName' from Customerss;

SELECT * from Customer
WHERE LastName like '-u%';

SELECT * from Customer
WHERE FirstName like '_u%';

SELECT UnitPrice from OrderItem
WHERE UnitPrice>'10' and UnitPrice<'20';

SELECT OrderDate 'shipping' from Orderss
ORDER BY OrderDate DESC;

insert into product values(111,'exotic liquids',123.0,'yes',0);
select * from product;


select AVG(unitprice) from product;
alter table Customer add fax_number int;

select * from Customer;

alter table Orderss add shipping_name nvarchar(40),shipping_date date;
select * from Orderss;

alter table product add category nvarchar(40);
select * from product;

create table employee
(
emp_id,int,
emp_name nvarchar(40),
depart_name nvarchar(40),
manager_name nvarchar(40),
joining date,
rating int
);
select * from employee;
insert into employee values(13,'Riddhi','Incometax','priti','2002-05-13',4);
insert into employee values(14,'Manasi','service','meet','2002-07-19',2);
insert into employee values(17,'vishwajeeta','head','apurv','2005-09-5',3);
insert into employee values(18,'Reena','desk','simu','2004-05-3',6);
select * from employee;

insert into product(catagory) values('seafood');
select fax_number from Customer;

select emp_name ,manager_name from employee;


select distinct productname,unitprice,category_name
from product
where unitprice>(select AVG(unitprice) from product)

select pro_id,isnull (category,'seafood')category from product;

select * from Orderss,product where TotalAmount >'50'and productname like 'exotic liquids';

select category from product where category like 'seafood';

select ordernumber,country from Orderss,product where production like 'chai';

select emp_name,depart_name,rating from employee where emp_name like 'Riddhi';

select * from orderss,product where TotalAmount >'50'and productname like 'exotic liquids';

select min(joining) as earliestdate from employee;

select max(joining) as earliestdate from employee;

alter table product add out_of_stock nvarchar(40), unitinstock decimal(12,2);
select out_of_stock,unitinstock,unitinstock from product;


SELECT productname,unitprice
FROM product
ORDER BY unitprice DESC;


alter table product add unitinstock nvarchar(40);
select * from product;

alter table product add unitinstock nvarchar(40);
select * from product;

SELECT productname,unitinstock ,unitonorder
FROM product
WHERE (unitinstock<unitonorder);



select pro_id,productname,unitprice,category
from product
where (unitprice<20)
order By unitprice DESC;

SELECT Orderss,OrderNumber,Customer,COSTID
FROM Orderss,Customer
WHERE Orderss,COSTID= Customer,COSTID;

SELECT CustomerID from Orderss
where CustomerID like '1012';




alter table product add category_name nvarchar(40);
select * from product;

alter table product add price_alter_discount nvarchar(40);
select * from product;

select distinct productname,unitprice,category_name,price_after_discount
from product
where unitprice>(select AVG(unitprice) from product)


insert into 
select * from employee;
