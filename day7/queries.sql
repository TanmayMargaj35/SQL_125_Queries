31. Find all salespeople whose name starts with ‘P’ and the fourth character is ‘l’. 
select s.sname from salespeople s where s.sname like 'p__l%'; 
  
32. Write a query that uses a subquery to obtain all orders for the customer named Cisneros. 
Assume you do not know his customer number. 
select * from orders where cnum = (select c.cnum from customers c where c.cname = 'Cisneros');
  
33. Find the largest orders for Serres and Rifkin. 
select s.sname, max(amt) as largest_order from salespeople s join orders o on s.snum = o.snum where s.sname in ('serres','rifkin') group by s.sname;

34. Extract the Salespeople table in the following order : SNUM, SNAME, COMMISSION, CITY. 
select s.snum,s.sname,s.comm,s.city from salespeople s;

35. Select all customers whose names fall in between ‘A’ and ‘G’ alphabetical range.
select c.cname from customers c where left(c.cname,1) between 'A' and 'G';
