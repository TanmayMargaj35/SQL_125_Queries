35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range. 
select c.cname from customers c where left(c.cname,1) between "A" and "G";

36. Select all the possible combinations of customers that you can assign. 
select c1.cname customer_1, c2.cname customers_2 from customers c1 cross join customers c2 where c1.cname < c2.cname;

37. Select all orders that are greater than the average for October 4. 
select o.onum,o.amt from orders o where o.onum > (select avg(amt) from orders o where o.odate = "1996-10-04"); 

38. Write a select command using a corelated subquery that selects the names and numbers of all 
customers with ratings equal to the maximum for their city. 
select c.cname, c.cnum from customers c where c.rating = (select max(c2.rating) from customers c2 where c2.city = c.city); 

39. Write a query that totals the orders for each day and places the results in descending order.
select o.odate, sum(amt) from orders o group by o.odate order by sum(amt) desc;

40. Write a select command that produces the rating followed by the name of each customer in 
San Jose. 
select c.rating, c.cname from customers c where c.city = 'san jose';
