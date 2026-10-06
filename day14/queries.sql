66. Find the SUM of all purchases from the Orders table. 
  select sum(o.amt) from orders o;

67. Write a SELECT command that produces the order number, amount and date for all rows in 
the order table. 
  select o.onum,o.amt,o.odate from orders o;

68. Count the number of nonNULL rating fields in the Customers table (including repeats).
  select count(c.rating) from customers c where c.rating is not null;

69. Write a query that gives the names of both the salesperson and the customer for each order 
after the order number.  
  select s.sname, c.cname, o.onum from salespeople s join customers c on s.snum = c.snum join orders o on c.cnum = o.cnum;

70. List the commissions of all salespeople servicing customers in London. 
 select s.sname,c.cname, s.comm from salespeople s join customers c on s.snum = c.snum where c.city = "London";
