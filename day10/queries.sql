46. Write a query that  produces all pairs of salespeople with themselves as well as duplicate rows 
with the order reversed. 
select s.snum,s1.snum, s.sname, s1.sname from salespeople s cross join salespeople s1 order by s.snum,s1.snum;

47. Find all salespeople that are located in either Barcelona or London. 
select s.sname from salespeople s where city = 'barcelona' or city = 'london';
			or 
select s.sname from salespeople s where city in ('barcelona','london');
  
48. Find all salespeople with only one customer. 
select s.snum,s.sname from customers c join salespeople s on c.snum = s.snum group by s.snum,s.sname having count(c.cnum)=1;
  
49. Write a query that joins the Customer table to itself to find all pairs of customers served by a 
single salesperson. 
 select c1.cname, c2.cname,c1.snum from customers c1 join customers c2 on c1.snum = c2.snum where c1.cnum < c2.cnum;
  
50. Write a query that will give you all orders for more than $1000.00
select o.onum from orders o where o.amt > 1000;

