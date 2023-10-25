# SQL Practice Code

This SQL code file contains 50 example SQL queries to practice and demonstrate key concepts in SQL. The code uses a sample database with tables like `sales`, `people`, `products`, and `geo`.

## SQL Commands Explained

1. `SHOW TABLES` - Lists all tables in the database

2. `DESC sales` - Describes the columns and data types in the `sales` table 

3. `SELECT * FROM sales` - Selects all columns and rows from the `sales` table

4. `SELECT SaleDate, Amount, Customers FROM sales` - Selects only the specified columns from the `sales` table

5. `SELECT Amount, SaleDate, Boxes, Amount/Boxes FROM sales` - Performs a calculation in the SELECT statement 

6. `SELECT Amount, SaleDate, Boxes, Amount/Boxes AS 'amount per box' FROM sales` - Uses AS to alias a column name

7. `SELECT * FROM sales WHERE amount > 10000` - Uses a WHERE clause to filter rows

8. `SELECT * FROM sales WHERE amount > 10000 ORDER BY amount` - Adds ORDER BY to sort result set

9. `SELECT * FROM sales WHERE amount > 10000 ORDER BY amount DESC` - Uses DESC to get descending order sort

10. `SELECT * FROM sales WHERE GeoID='G1' ORDER BY PID, Amount DESC` - Sorts by multiple columns

11. `SELECT * FROM sales WHERE amount>=10000 AND SaleDate>='2022-01-01'` - Combines two conditions with AND

12. `SELECT SaleDate, Amount FROM sales WHERE amount > 10000 AND year(SaleDate) = 2022 ORDER BY amount DESC` - Calls the YEAR() function in the WHERE clause

13. `SELECT * FROM sales WHERE Boxes>0 AND Boxes <=50` - Uses > and <= to get values in a range 

14. `SELECT * FROM sales WHERE boxes BETWEEN 0 AND 50 ORDER BY boxes` - Uses BETWEEN for range checking

15. `SELECT Amount,SaleDate,Boxes, WEEKDAY(SaleDate) AS 'day of week' FROM sales WHERE WEEKDAY(SaleDate)=4` - Uses WEEKDAY() function

16. `SELECT * FROM people WHERE Team='Delish' OR Team='Jucies'` - Uses OR to match one of two conditions

17. `SELECT * FROM people WHERE Team IN ('Delish','Jucies')` - Simpler way to match multiple values

18. `SELECT * FROM people WHERE Salesperson LIKE 'B%'` - Uses LIKE and % wildcard to match values that start with 'B'

19. `SELECT * FROM people WHERE Salesperson LIKE '%B%'` - Matches values containing 'B' anywhere 

20. `SELECT SaleDate,Amount, CASE WHEN Amount<1000 THEN 'Under 1k' [...] END AS 'Amount Category' FROM sales` - Uses CASE statement to categorize amounts

21. `SELECT s.SaleDate, s.Amount FROM sales AS s` - Aliases table name with shorter name

22. `SELECT s.SaleDate, s.Amount, p.Salesperson [...] FROM sales s JOIN people p ON p.SPID=s.SPID` - Joins two tables on a key column 

23. `SELECT s.SaleDate, s.Amount, pr.product FROM sales s LEFT JOIN products pr ON pr.pid=s.pid` - Uses LEFT JOIN to select all rows from left table

24. `SELECT s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team FROM sales s JOIN people p ON p.SPID=s.SPID JOIN products pr ON pr.PID=s.PID` - Joins multiple tables 

25. `SELECT s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team FROM [...] WHERE s.Amount<500` - Adds WHERE clause to joins

26. `SELECT s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team FROM [...] WHERE s.Amount<500 AND p.Team='Delish'` - Adds multiple WHERE conditions

27. `SELECT s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team FROM [...] WHERE p.Team=''` - Matches empty values with empty string

28. `SELECT s.SaleDate, s.Amount, p.Salesperson, pr.product, p.team FROM [...] WHERE g.Geo IN ('New Zealand','India') ORDER BY SaleDate` - Uses WHERE, JOIN, and ORDER BY together

29. `SELECT geoID, SUM(Amount), AVG(Amount), SUM(Boxes) FROM sales GROUP BY geoID` - Sums and averages grouped by one column 

30. `SELECT g.Geo, SUM(amount) [...] FROM sales s JOIN geo g ON g.GeoID=s.GeoID GROUP BY g.Geo` - Joins and groups results

31. `SELECT pr.category, p.team, SUM(Boxes), SUM(amount) FROM [...] GROUP BY pr.category, p.team ORDER BY pr.category, p.team` - Groups by multiple columns

32. `SELECT pr.Product, SUM(s.amount) AS 'Total Amount' FROM [...] GROUP BY pr.Product ORDER BY `Total Amount` DESC LIMIT 10` - Limits grouped results to top 10

33. `SELECT pr.Product, SUM(s.amount) AS 'Total Amount' FROM [...] GROUP BY pr.Product HAVING SUM(s.amount) > 50000 ORDER BY `Total Amount` DESC` - Filters grouped results with HAVING 

34. `CREATE TABLE customers (id INT, name VARCHAR(50), address VARCHAR(100))` - Creates new table with specified columns 

35. `INSERT INTO customers VALUES (1, 'John Doe', '123 Main St')` - Inserts new row into table

36. `UPDATE customers SET address='456 Park Ave' WHERE id=1` - Updates existing rows matching condition

37. `DELETE FROM customers WHERE id=1` - Deletes rows matching condition

38. `ALTER TABLE customers ADD email VARCHAR(100)` - Adds new column to existing table

39. `ALTER TABLE customers DROP COLUMN address` - Removes column from table 

40. `CREATE INDEX idx_customers_name ON customers(name)` - Creates index on name column for faster lookups 

41. `DROP INDEX idx_customers_name ON customers` - Removes index 

42. `CREATE VIEW sales_by_product AS SELECT product, SUM(amount) AS total_sales FROM [...] GROUP BY product` - Creates reusable view from query

43. `DROP VIEW sales_by_product` - Deletes view 

44. `GRANT SELECT ON sales TO user1` - Grants user permission to query table

45. `REVOKE SELECT ON sales FROM user1` - Removes user's permissions

46. `CREATE USER appuser IDENTIFIED BY 'password123'` - Creates new database user 

47. `DROP USER appuser` - Deletes user

48. `COMMIT` - Commits transactions to database

49. `ROLLBACK` - Rolls back changes, undoing transactions

50. `BEGIN TRANSACTION` - Starts new transaction block 

## SQL Glossary

**SELECT** - Retrieves data from one or more tables

**WHERE** - Filters rows returned by SELECT based on conditions

**JOIN** - Combines rows from multiple tables based on related columns

**GROUP BY** - Groups result set by one or more columns 

**ORDER BY** - Sorts result set by specified column(s)

**LIMIT** - Limits number of rows returned 

**CREATE TABLE** - Defines a new table with column names and types

**INSERT** - Adds new row(s) to a table

**UPDATE** - Changes data in existing table rows

**DELETE** - Removes rows from a table 

**INDEX** - Special data structure that improves lookup speed

**VIEW** - Saved SQL query that can be reused like a virtual table

**TRANSACTION** - Group of SQL statements that are committed or rolled back together

**COMMIT** - Saves pending transaction changes to database

**ROLLBACK** - Discards pending transaction changes

## Crash Course SQL

This SQL code serves as a crash course in key SQL concepts like SELECT queries, filtering, sorting, joining tables, grouping data, transactions, and more. It provides a solid foundation for querying and manipulating data in relational databases.

## Resource Link

[SQL Tutorial on W3Schools](https://www.w3schools.com/sql/)
