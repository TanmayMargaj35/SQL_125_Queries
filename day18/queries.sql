86. Write a query that will give you the names and cities of all salespeople in London with a 
commission above 0.10. 
select s.sname Salespeople, s.city Salespeople_City from salespeople s where s.city = "London" and s.comm > 0.10;

87. What will be the output from the following query?      
SELECT * FROM ORDERS where (amt < 1000 OR NOT (odate = 10/03/1996 AND cnum > 2003)); 
select * from orders o where (o.amt < 1000 or not (o.odate = "1996-03-10" and o.cnum > 2003));

88. Write a query that selects each customer’s smallest order. 
select c.cname , min(o.amt) from orders o join customers c on o.cnum = c.cnum group by c.cname;

89. Write a query that selects the first customer in alphabetical order whose name begins with G. 
 select c.cname from customers c where c.cname like "G%" order by c.cname asc limit 1;

90. Write a query that counts the number of different nonNULL city values in the Customers table.
select count(distinct c.city) from customers c where c.city is not null;
