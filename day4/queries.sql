16. Find all customers with orders on October 3. 
select distinct c.cname,c.cnum from customers c join orders o on c.cnum = o.cnum where o.odate = '1996-10-03';

17. Give the sums of the amounts from the Orders table, grouped by date, eliminating all those 
dates where the SUM was not at least 2000.00 above the MAX amount. 
select o.odate,sum(o.amt) as total_sum ,max(o.amt) as max_amt from orders o group by o.odate having sum(o.amt) >= 2000 + max(o.amt); 
  
18. Select all orders that had amounts that were greater than at least one of the orders from 
October 6.
select * from orders o where o.amt > any (select o2.amt from orders o2 where o2.odate='1996-10-06'); 

19. Write a query that uses the EXISTS operator to extract all salespeople who have customers 
with a rating of 300. 
select * from salespeople s where exists (select 1 from customers c where c.snum = s.snum and c.rating >= 300); 
  
20. Find all pairs of customers having the same rating. 
select c1.cname customer_c1, c2.cname customer_c2 ,c1.rating from customers c1 join customers c2 on c1.rating = c2.rating where c1.cname < c2.cname order by c1.rating ;
