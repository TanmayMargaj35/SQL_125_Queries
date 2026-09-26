21. Find all customers whose CNUM is 1000 above the SNUM of Serres. 
select * from customers c where c.cnum = (select s.snum + 1000 from salespeople s where s.sname = 'serres'); 

22. Give the salespeople’s commissions as percentages instead of decimal numbers. 
select s.sname , s.comm * 100 as commission_in_percentage from salespeople s;
  
23. Find the largest order taken by each salesperson on each date, eliminating those MAX orders 
which are less than $3000.00 in value. 
select s.snum , o.odate, max(o.amt) from orders o group by s.snum,o.odate having max(o.amt) >= 3000;  
    
24. List the largest orders for October 3, for each salesperson. 
select sname,max(amt) from orders join salespeople on orders.snum = salespeople.snum where odate = '1996-10-03' group by sname;
  
25. Find all customers located in cities where Serres (SNUM 1002) has customers.
select cnum,cname,city from customers where city in (select city from customers where snum = 1002);
