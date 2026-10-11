91. Find the average amount from the Orders table. 
  select avg(o.amt) from orders o;

92. What would be the output from the following query? SELECT * FROM ORDERS WHERE NOT (odate = 10/03/96 OR snum > 1006) AND amt >= 1500); 
   select * from orders o where not (o.odate = '1996-10-03' or o.snum > 1006) and o.amt >= 1500;

93. Find all customers who are not located in San Jose and whose rating is above 200. 
  select c.cname from customers c where c.city <> "san jose" and c.rating > 200;

94. Give a simpler way to write this query : SELECT snum, sname city, comm FROM salespeople WHERE (comm > + 0.12 OR comm < 0.14); 
  select snum,sname,city,comm from salespeople where comm between 0.12 and 0.14;

95. Evaluate the following query : SELECT * FROM orders WHERE NOT ((odate = 10/03/96 AND snum > 1002) OR amt > 2000.00);
  select * from orders where not ((odate = "1996-10-03" and snum > 1002) or amt > 2000.00);
