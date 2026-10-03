41. Find all orders with amounts smaller than any amount for a customer in San Jose. 
select o.onum , o.amt from orders o where o.amt < any (select o2.amt from orders o2 join customers c on o2.cnum = c.cnum where c.city = 'san jose');

42. Find all orders with above average amounts for their customers.
select o.onum, o.amt from orders o where o.amt > (select avg(o2.amt) from orders o2 where o.cnum = o2.cnum );

43. Write a query that selects the highest rating in each city. 
select city , max(rating) from customers c group by city;
44. Write a query that calculates the amount of the salesperson’s commission on each order by a 
customer with a rating above 100.00. 
select o.onum, o.amt, s.sname,s.comm, o.amt * s.comm as commision_amount from orders o join customers c on o.cnum = c.cnum join salespeople s on o.snum = s.snum where c.rating > 100;

45. Count the customers with ratings above San Jose’s average.
select count(cnum) as no_of_customers from customers c where c.rating > (select avg(c2.rating) from customers c2 where city ='san jose');
