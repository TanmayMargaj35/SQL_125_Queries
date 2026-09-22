1. List all the columns of the Salespeople table. 
  desc salespeople;

2. List all customers with a rating of 100. 
  select cname Customer_Name, rating from customers where rating = 100;

3. Find all records in the Customer table with NULL values in the city column.
  select * from customers where city is null;

4. Find the largest order taken by each salesperson on each date.
  select sname, odate , max(amt) from orders join salespeople on orders.snum = salespeople.snum group by sname, odate order by max(amt) desc;

5. Arrange the Orders table by descending customer number. 
select cnum from orders order by cnum desc;
