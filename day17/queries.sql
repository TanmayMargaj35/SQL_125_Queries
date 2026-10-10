81. Write a query that will produce the SNUM values of all salespeople with orders currently in the 
Orders table (without any repeats).
select distinct o.snum from orders o join salespeople s on o.snum = s.snum;

82. Write a query that lists customers in descending order of rating. Output the rating field first, 
followed by the customer’s names and numbers.
select c.rating Rating, c.cname Customers_Name, c.cnum Customers_No from customers c order by c.rating desc;
  
83. Find the average commission for salespeople in London.
select avg(s.comm) from salespeople s where s.city = "London";

84. Find all orders credited to the same salesperson who services Hoffman (CNUM 2001).
select o.onum from orders o where o.snum = (select o1.snum from orders o1 where o1.cnum = 2001);

85. Find all salespeople whose commission is in between 0.10 and 0.12 (both inclusive). 
select s.sname Salespeople_Names, s.comm Commission from salespeople s where s.comm between 0.10 and 0.12;
