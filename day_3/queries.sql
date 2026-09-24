11. Match salespeople to customers according to what city they lived in.
select s.sname, c.cname from salespeople s join customers c on s.city = c.city;

12. Find the largest order taken by each salesperson. 
select s.snum, max(amt) from salespeople s join orders o on s.snum = o.snum group by s.snum;
  
13. Find customers in San Jose who have a rating above 200. 
select c.cnum from customers c where c.city = 'san jose' and rating > 200;

14. List the names and commissions of all salespeople in London. 
select s.sname , s.comm from salespeople s where city = "London"; 
  
15. List all the orders of salesperson Motika from the Orders table. 
select o.onum from salespeople s join orders o on s.snum = o.snum where s.sname = 'motika';
