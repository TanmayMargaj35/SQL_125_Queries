6. Find which salespeople currently have orders in the Orders table. 
select s.snum, s.sname from salespeople s join orders o on s.snum = o.snum group by s.snum,s.sname;

7. List names of all customers matched with the salespeople serving them. 
select cname,sname from customers join salespeople on customers.snum = salespeople.snum;
  
8. Find the names and numbers of all salespeople who had more than one customer. 
select salespeople.sname, salespeople.snum, count(customers.cname) from salespeople join customers on salespeople.snum = customers.snum group by salespeople.sname, salespeople.snum having count(customers.cname) > 1;
  
9. Count the orders of each of the salespeople and output the results in descending order. 
select salespeople.snum ,count(orders.onum) from salespeople join orders on salespeople.snum = orders.snum group by salespeople.snum order by count(orders.onum) desc;
  
10. List the Customer table if and only if one or more of the customers in the Customer table are 
located in San Jose. 
select cname from customers where exists (select 1 from customers where city = 'san jose');
