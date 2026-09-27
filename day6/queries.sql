26. Select all customers with a rating above 200.00. 
select * from customers c where c.rating > 200
  
27. Count the number of salespeople currently listing orders in the Orders table. 
select count(distinct o.snum) from orders o; 

28. Write a query that produces all customers serviced by salespeople with a commission above 
12%. Output the customer’s name and the salesperson’s rate of commission. 
select c.cname, s.comm from customers c join salespeople s on c.snum = s.snum where s.comm * 100 > 12;

29. Find salespeople who have multiple customers. 
select s.sname, s.snum, count(*) from salespeople s join customers c on s.sum = c.snum group by s.sname,s.snum having count(*) > 1;

30. Find salespeople with customers located in their city. 
select s.sname, c.cname from salespeople s join customers c on s.city = c.city;
