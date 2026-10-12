96. Which salespersons attend to customers not in the city they have been assigned to? 
select s.sname,s.snum from salespeople s join customers c on s.snum = c.snum where s.city <> c.city;

97. Which salespeople get commission greater than 0.11 are serving customers rated less than 250? 
select distinct s.sname from salespeople s join customers c on s.snum = c.snum where s.comm > 0.11 and c.rating < 250;

98. Which salespeople have been assigned to the same city but get different commission percentages? 
select s1.sname salesperson_1, s2.sname salespeople_2, s1.city, s1.comm comission_1, s2.comm comission_2 from salespeople s1 join salespeople s2 on s1.city = s2.city and s1.snum < s2.snum where s1.comm <> s2.comm;

99. Which salesperson has earned the most by way of commission? 
select s.sname salespeople_name, sum(s.comm * o.amt) Commission_earned from salespeople s join orders o on s.snum = o.snum group by s.sname order by commission_earned desc limit 1;

100.Does the customer who has placed the maximum number of orders have the maximum rating? 
select c.cname,c.rating, count(o.onum) total_orders from customers c join orders o on c.cnum = o.cnum group by c.cname,c.cnum,c.rating having count(o.onum) = (select max(order_count) from (select count(*) order_count from orders group by cnum) as temp );
