61. Produce all combinations of salespeople and customer names such that the former precedes 
the latter alphabetically, and the latter has a rating of less than 200. 
select s.sname,c.cname from salespeople s cross join customers c where s.sname < c.cname and c.rating < 200;
  
62. List all Salespeople’s names and the Commission they have earned. 
select s.sname, sum(s.comm * o.amt) as Commission_Earned from salespeople s join orders o on s.snum = o.snum group by s.snum,s.sname;

63. Write a query that produces the names and cities of all customers with the same rating as 
Hoffman. Write the query using Hoffman’s CNUM rather than his rating, so that it would still be 
usable if his rating changed. 
select c.cname, c.city from customers c where c.rating = (select c1.rating from customers c1 where c1.cnum = 2001);

64. Find all salespeople for whom there are customers that follow them in alphabetical order. 
select s.sname, c.cname from salespeople s join customers c on s.snum = c.snum where s.sname < c.cname;

65. Write a query that produces the names and ratings of all customers of all who have above 
average orders. 
select distinct c.cname,c.rating from customers c join orders o on c.cnum = o.cnum where o.amt > (select avg(amt) from orders);
