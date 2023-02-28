--1)
select * from orders;
--2)
select orderid,orderdate from orders;
--3)
select distinct(country) from customers;
--4)
select distinct(count(country))
from customers;
--5)
select count(*) from customers 
where country ='USA';
--6)
select * from employees;
--7)
select count(*) from employees 
where employeeid = 5;
--8)
select employeeid from 
orders where orderdate ='1996-07-24';
--9)
select companyname,contactname from customers
where  city='Berlin' and country='Germany';
--10)
select companyname,contactname from customers
where  country='Spain' or country='Germany';
--11)
select orderid,orderdate from orders
where employeeid in(3,4,5,6);
--12)
select companyname,productname,
categoryname,orderdate,order_details.productid,
order_details.unitprice,quantity from orders
inner join order_details on 
orders.orderid = order_details.orderid
inner join customers on customers.customerid = orders.
customerid
inner join products on order_details.productid 
=products.productid
inner join categories on categories.categoryid
=products.categoryid;
--13)
select companyname,productname,
categoryname,orderdate,order_details.productid,
order_details.unitprice,quantity from orders
inner join order_details on 
orders.orderid = order_details.orderid
inner join customers on customers.customerid = orders.
customerid
inner join products on order_details.productid 
=products.productid
inner join categories on categories.categoryid
=products.categoryid
where categoryname = 'Seafood'
;
--14)
select productname,orderid
from products
left join order_details on
products.productid = order_details.productid
;



