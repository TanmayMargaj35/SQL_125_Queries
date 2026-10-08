71. Write a query using ANY or ALL that will find all salespeople who have no customers located in 
their city. 
select s.sname from salespeople s where s.city <> all (select c.city from customers c);

72. Write a query using the EXISTS operator that selects all salespeople with customers located in 
their cities who are not assigned to them.
select * from salespeople s where exists (select 1 from customers c where s.city = c.city and s.snum <> c.snum);

73. Write a query that selects all customers serviced by Peel or Motika. (Hint : The SNUM field 
relates the two tables to one another.) 
select c.cname from salespeople s join customers c on s.snum = c.snum where s.sname in ("Peel","Motika");

74. Count the number of salespeople registering orders for each day. (If a salesperson has more 
than one order on a given day, he or she should be counted only once.)
select o.odate, count(distinct o.snum) from orders o group by o.odate;

75. Find all orders attributed to salespeople in London. 
select o.onum,o.amt,o.odate from orders o join salespeople s on o.snum = s.snum where s.city = "London";
