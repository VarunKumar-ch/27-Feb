--1)
select companyname,orderid
from orders right join 
customers on orders.customerid
=customers.customerid;
--2)
select companyname,orderid
from orders right join 
customers on orders.customerid
=customers.customerid
where orderid is null;

--3)
select customertypeid,companyname
from customercustomerdemo
right join customers
on customercustomerdemo.customerid
=customers.customerid;
--4)
select categories.categoryid,
categoryname,productname,
products.categoryid
from categories full join
products on categories.categoryid
=products.categoryid;

--5)
select c1.contactname as suppliername1,
c2.contactname as suppliername2,c1.country
from suppliers as c1 join
suppliers as c2 on
c1.country = c2.country 
where 
c1.supplierid<>c2.supplierid
order by c1.country;

--6)
select * from
orders join
order_details on
orders.orderid = order_details.orderid;
--7)
select * from
orders join 
order_details using(orderid);
--8)
select * from
orders join 
order_details using(orderid)
join products using (productid);

--9)
select *
from  customers
natural join orders
natural join order_details;

--10)
select country,count(*)
from customers
group by country
order by country asc;

--11)
select categoryname,count(*)
from categories
join products
on categories.categoryid
=products.categoryid
group by categoryname
order by count(*)  desc;
--12)
select avg(unitsinstock*unitprice) 
from products;
--13)
select country,count(*)
from suppliers
group by country
order by count(*) desc;
--14)
select * from orders;

select shipcountry,sum(freight)
from orders
where shippeddate >='1997-01-01' and 
shippeddate<='1997-12-31'
group by shipcountry;

--15)
select productname,categories.categoryname,
sum(unitprice*unitsinstock)
from products 
inner join categories 
on products.categoryid = categories.categoryid
group by grouping sets (productname,categories.categoryname);

--16)
select companyname,categoryname,
productname,sum(order_details.unitprice*quantity) as
totalAmount
from products
natural join customers 
inner join order_details on
products.productid=order_details.productid
inner join categories on 
products.categoryid = categories.categoryid
where companyname = 'Simons bistro'
group by rollup(companyname,categoryname,productname)
order by companyname,categoryname,productname;




