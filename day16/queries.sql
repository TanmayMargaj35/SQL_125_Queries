76. Find all orders by customers not located in the same cities as their salespeople. 
select o.onum from orders o join customers c on o.cnum = c.cnum join salespeople s on o.snum = s.snum where c.city <> s.city;

77. Find all salespeople who have customers with more than one current order.
select c.snum,c.cnum, count(o.onum) as count_orders from customers c join orders o on c.cnum = o.cnum group by c.snum, c.cnum having count(o.onum) > 1;

78. Write a query that extracts from the Customers table every customer assigned to a 
salesperson who currently has at least one other customer (besides the customer being 
selected) with orders in the Orders table. 
select * from customers c1 where exists (select 1 from customers c2 join orders o on o.cnum = c2.cnum where c1.snum = c2.snum and c1.cnum <> c2.cnum);

79. Write a query that selects all customers whose names begin with ‘C’.
select c.cname from customers c where c.cname like "c%";

80. Write a query on the Customers table that will find the highest rating in each city. Put the output 
in this form : for the city (city) the highest rating is : (rating).
select concat("for the city", c.city, "the highest rating is : ", max(c.rating)) as result from customers c group by c.city;
