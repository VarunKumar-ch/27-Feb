--cube total sales customers categories products
select companyname,categoryname,productname,
sum(order_details.unitprice*order_details.quantity)
from products
natural join customers
inner join categories
on categories.categoryid
=products.productid
inner join order_details
on order_details.productid = products.productid
group by cube (companyname,categoryname,productname)
;
--
select companyname from 
customers
union
select companyname from
suppliers;
--
select city from 
customers
union all
select city from
suppliers
order by city;
--
select country from
customers
union
select country from 
suppliers
order by country desc;

--
select country from 
customers
intersect
select country from 
suppliers;
--
select country from 
customers
intersect all
select country from 
suppliers
order by country asc;

--
select count(*) from
(select country from 
customers
intersect all
select country from 
suppliers)as coun;

--
select city from 
customers
intersect
select city from 
suppliers;

--
select count(*) from
(select country from
customers
except all
select country from
suppliers) as cc;
--
select count(*) from
(select city from customers
except all
select city from suppliers)
as dd;

--
select * from orders;

