-- show tables;
 --  show all the tables inside the database


-- desc sales; 
-- describes what is inside that table


-- select * from sales  
-- select and displays all the data in the particular table of the database


-- select SaleDate,Amount,Customers from sales 
-- it displays the selected columns from the table


-- select Amount, SaleDate, Boxes, Amount/Boxes from sales 
-- we can also applu calculations during display of the data from the table 


-- select Amount, SaleDate, Boxes, Amount/Boxes as 'amount per box' from sales 
--  we can also specify a particular name to display of the calculation by using as keyword


-- select * from sales where amount > 10000 
--  we can use where keyword as a condition to show the data which matches the particular condition set in where


-- select * from sales 
-- where amount > 10000 
-- order by amount 
-- we can use order by to sort the data in ascending or desc order. For desc order, we will add the keyword desc after the order by and filter name


--  select * from sales 
-- where amount > 10000 
-- order by amount desc --  we can use desc keyword for sorting in desc order


-- select * from sales
-- where GeoID='G1'
-- order by PID, Amount desc
-- we can use multiple sorting conditions along with filter condition (where) in sql as well


-- select * from sales
-- where amount>=10000 and SaleDate>='2022-01-01'
-- we can use and keyword to apply for multiple sorting conditions


-- select SaleDate, Amount from sales
-- where amount > 10000 and year(SaleDate) = 2022
-- order by amount desc
-- year is an inbuilt function in sql which we can use for extracting the year from sale.
-- we can use order by where and and keywords together to form a query


-- select * from sales
-- where  Boxes>0 and Boxes <=50
-- we can use the > and < symbols to achieve the values in between two numbers


-- select * from sales
-- where boxes between 0 and 50
-- order by boxes
-- we can also use between keyword to filter the conditions for where.
-- between means FROM and TO inlcuding both the values mentioned


-- select Amount,SaleDate,Boxes, weekday(SaleDate) as 'day of week' 
-- from sales
-- where weekday(SaleDate)=4
-- we can use the inbuilt function weekday that returns 0 for monday and 6 for sunday
-- in this query we have used as keyword, where and weekday to print weekday of 4 as day of week and print all the entries


-- select * from people
-- where Team='Delish' or Team='Jucies'
-- we can use the or keyword to select the filtering condition. if either ONE condition is true, it will print the results in select


-- select * from people
-- where Team in ('Delish','Jucies')
-- we can also use the in keyword for filtering condition


-- select * from people
-- where Salesperson like 'B%'
-- the like keyword will select every entry that starts with B
-- % means after or before, in this case, anything after B ,i.i., starts with B


-- select * from people
-- where Salesperson like '%B%'
-- another implementation of like keyword
-- here it means , any entry that consists B, starts with ANY and ends with ANY


-- select SaleDate,Amount,
-- case when Amount<1000 then 'Under 1k'
-- 	 when Amount<5000 then 'Under 5k'
--      when Amount<10000 then 'Under 10k'
--      else '10k and Above'
-- end as 'Amount Category'
--  from sales
--  case is like the if else of sql
--  we use when (condition) then (statement)
--  we end a case with 'end' keyword.
--  we can also use 'as' keyword to define the case as a specific name which we want


-- select s.SaleDate, s.Amount from sales as s
-- we can use as keyword in table names also to shorten the table name if they are long


-- select s.SaleDate,s.Amount, p.Salesperson,s.SPID,p.SPID as 'pid'
-- from sales s join people p 
-- where p.SPID=s.SPID
-- we can refer table names or other names WITHOUT as keyword as well
-- we have performed basic join operation using the join command and common data column


-- select s.SaleDate,s.Amount,pr.product 
-- from sales s
-- left join products pr
-- on pr.pid=s.pid
-- in left join the query will select all the entries from left table and pin to the common entry of right one


-- select s.SaleDate,s.Amount,p.Salesperson, pr.product, p.team
-- from sales s
-- join people p on p.SPID=s.SPID
-- join products pr on pr.PID=s.PID
-- we can also perform multiple joins on the tables


--  select s.SaleDate,s.Amount,p.Salesperson, pr.product, p.team
--  from sales s
--  join people p on p.SPID=s.SPID
--  join products pr on pr.PID=s.PID
--  where s.Amount<500
--  we can also use joins with where statement


--  select s.SaleDate,s.Amount,p.Salesperson, pr.product, p.team
--  from sales s
-- join people p on p.SPID=s.SPID
-- join products pr on pr.PID=s.PID
-- where s.Amount<500
-- and p.Team='Delish'
-- we can also use multiple where conditions with multiple joins


--  select s.SaleDate,s.Amount,p.Salesperson, pr.product, p.team
-- from sales s
-- join people p on p.SPID=s.SPID
-- join products pr on pr.PID=s.PID
-- where s.Amount<500
-- and p.Team=''
-- we can define EMPTY entries with '' blank


-- select s.SaleDate,s.Amount,p.Salesperson, pr.product, p.team
-- from sales s
-- join people p on p.SPID=s.SPID
-- join products pr on pr.PID=s.PID
-- join geo g on g.GeoID=s.GeoID
-- where s.Amount<500
-- and p.Team=''
-- and g.Geo in ('New Zealand','India')
-- order by SaleDate
-- we can use multiple joins nd multiple where conditions along with order by


-- select geoID, sum(Amount), avg(Amount), sum(Boxes)
-- from sales
-- group by geoID
-- group by is used to group the data sets into one category


-- select g.Geo, sum(amount), avg(amount), sum(amount)
-- from sales s
-- join geo g on g.GeoID=s.GeoID
-- group by g.Geo
-- we can use group by with join BUT group by condition should only use a parameter which we have defined previously


-- select pr.category, p.team, sum(Boxes), sum(amount)
-- from sales s 
-- join people p on p.SPID=s.SPID
-- join products pr on pr.PID=s.PID
-- group by pr.category, p.team
-- order by pr.category, p.team
-- we can use the order by group by with join as well


-- select pr.Product, sum(s.amount) as 'Total Amount'
-- from sales s
-- join products pr on pr.pid=s.pid
-- group by pr.Product
-- order by `Total Amount` desc
-- limit 10
-- we can use limit function to limit the amount of result shown


