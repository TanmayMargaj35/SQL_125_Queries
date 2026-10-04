51. Write a query that lists each order number followed by the name of the customer who made 
that order.  
select o.onum, c.cname from orders o join customers c on o.cnum = c.cnum;

52. Write 2 queries that select all salespeople (by name and number) who have customers in their 
cities who they do not service, one using a join and one a corelated subquery. Which solution 
is more elegant? 
uisng Join 
select distinct s.sname, s.snum from customers c join salespeople s on c.city = s.city where s.snum <> c.snum;
using correlated subquery
select s.sname, s.snum from salespeople s where exists (select 1 from customers c where s.city = c.city and s.snum <> c.snum);

53. Write a query that selects all customers whose ratings are equal to or greater than ANY (in the 
SQL sense) of Serres’? 
select c.cname , c.cnum from customers c where c.rating >= any (select c1.rating from customers c1 join salespeople s on c1.snum = s.snum where s.sname = "serres");
  
54. Write 2 queries that will produce all orders taken on October 3 or October 4. 
1 query select o.onum from orders o where o.odate = "1996-10-03" or o.odate = "1996-10-04";

2 query select o.onum from orders o where o.odate in ("1996-10-03","1996-10-04");
  
55. Write a query that produces all pairs of orders by a given customer. Name that customer and 
eliminate duplicates.
select o.onum as order_1, o1.onum as order_2 , o.cnum as customer from orders o join orders o1 on o.cnum = o1.cnum where o.onum < o1.onum;
