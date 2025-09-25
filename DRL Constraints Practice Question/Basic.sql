-- 1. Write a query to select all columns from the `customer` table.
SELECT *
FROM Customer;
SELECT *
FROM Officers;
USE DRL_Practice;

-- 2. How do you select only `customer_name` and `age` columns from the `customer` table?
SELECT customer_name , age
FROM Customer;

-- 3. Can we use `SELECT` without `FROM`? Give an example.
-- Apply the all math operations
SELECT 22+22 as Add_Two_Numbers;
SELECT 11*10 as Multiply_Two_Numbers;

-- 4. Write a query to display the current date. 
SELECT GETDATE() AS DATE;

-- 5. Write a query to convert "anurag" into uppercase 
SELECT UPPER('anurag');
SELECT LOWER('ANURAG');

-- 6. Write a query to select customers whose age is greater than 25
SELECT *
FROM Customer
WHERE age > 25;

-- 7. How do you select customers whose `prime_status` is NULL? 
SELECT *
FROM Customer
WHERE prime_status IS NULL;

-- 8. Write a query to find customers living in the city `Delhi`. 
SELECT *
FROM Customer
WHERE city = 'Delhi';

-- 9. How do you filter customers whose `age` is less than 18? 
SELECT *
FROM Customer
WHERE age < 18;

-- 10. Write a query to display all customers except those in `Mumbai`. 
SELECT *
FROM Customer
WHERE city != 'Mumbai';

-- 11. Write a query to get customers with age between 20 and 40.
SELECT *
FROM Customer
WHERE age BETWEEN 20 AND 40;

-- 12. How do you get all customers with age NOT between 30 and 50?
SELECT *
FROM Customer
WHERE age NOT BETWEEN 30 AND 50;

-- 14. Use `BETWEEN` to select customers whose salary is between 30,000 and 50,000.  
SELECT *
FROM Officers
WHERE salary BETWEEN 30000 AND 50000;

-- 15. Use `BETWEEN` to find officers whose `joining_year` is between 2010 and 2020. 
SELECT *
FROM Officers
WHERE joining_year BETWEEN 2010 AND 2020;

-- 16. Write a query to find officers with names in (`Lakshay`, `Maharana Pratap`, `Deepika`).  
SELECT *
FROM Officers
WHERE officer_name IN ('Lakshay', 'Maharana Pratap', 'Deepika');

-- 17. How do you select customers from cities `Delhi`, `Mumbai`, and `Kolkata`?
SELECT *
FROM Customer
WHERE city IN ('Delhi', 'Mumbai', 'Kolkata');

-- 18. Write a query to find customers whose `age` is in (18, 25, 30, 40).  
SELECT *
FROM Customer
WHERE age IN (18,25,30,40);

-- 19. Write a query to display officers whose designation is either `Inspector` or `Constable`.
SELECT *
FROM Officers
WHERE designation IN ('INSPECTOR', 'CONSTABLE');

-- 20. How do you exclude customers whose ID is in (1, 2, 3, 4)?
SELECT *
FROM Customer
WHERE customer_id NOT IN (1,2,3,4);

-- 21. Write a query to select customers from `Delhi` AND with age greater than 25.  
SELECT *
FROM Customer
WHERE city = 'Delhi' AND age >= 25;

-- 22. Write a query to select customers who are either from `Mumbai` OR have age less than 20.
SELECT *
FROM Customer
WHERE city = 'Mumbai' OR age < 20;

-- 23. Use `NOT` to exclude customers from `Kolkata`.  
SELECT *
FROM Customer
WHERE NOT city = 'Kolkata';

-- 24. Write a query to find officers whose `rank` is NOT `Major`.
SELECT *
FROM Officers
WHERE NOT rank = 'MAJOR';

-- 25. How do you combine `AND` and `OR` in a single query?
SELECT *
FROM Officers
WHERE (designation = 'INSPECTOR' AND salary > 44000) OR (designation = 'CONSTABLE' AND joining_year > 2016);

-- 26. Write a query to find customers whose `prime_status` is NULL.
SELECT *
FROM Customer
WHERE prime_status IS NULL;

-- 27. How do you find customers whose `email` is NOT NULL?
SELECT *
FROM Customer
WHERE email IS NOT NULL;

-- 28. Write a query to display all officers who have NULL `address`.  
SELECT *
FROM Officers
WHERE address IS NULL;

-- 30. Write a query to count how many customers have NULL in `phone_number`.  
SELECT COUNT(*) null_phone_number
FROM Customer
WHERE phone_number IS NULL;

-- ## Functions (DUAL table style)

-- 31. Write a query to add 25 + 75 without using any table.
SELECT 25 + 72 AS Addition;

-- 32. Write a query to display current timestamp.  
SELECT CURRENT_TIMESTAMP AS Current_Date_and_Time;

-- 33. Write a query to find length of the string "Database".
SELECT LEN('Database') AS String_Length;

-- 34. Write a query to display "hello world" in uppercase.
SELECT UPPER('anurag sahu') AS Uppercase_String;

-- 35. Write a query to display square root of 144.
SELECT SQRT(144) AS Square_Root;

-- 36. Write a query to find customers with age > 20 AND city = `Delhi`.
SELECT *
from Customer
WHERE age > 20 AND city = 'Delhi';

-- 37. Write a query to find customers with prime_status = NULL OR age < 18.   n
SELECT *
FROM Customer
WHERE age < 18 OR prime_status IS NULL;

-- 38. Write a query to find customers whose name is in (`Lakshay`, `Deepika`) AND age > 30.
SELECT *
FROM Customer
WHERE customer_name IN ('Lakshay','Deepika') AND age > 30;

-- 39. Write a query to find customers with salary between 40,000 AND 60,000 AND city in (`Delhi`, `Mumbai`).  
SELECT *
FROM Officers
WHERE salary BETWEEN 40000 AND 60000 AND address IN ('Delhi','Mumbai');

-- 40. Write a query to display customers not from (`Kolkata`, `Bangalore`).  
SELECT *
FROM Customer
WHERE NOT city IN ('kolkata','bangalore');

-- 46. Write a query to display all unique cities from the `customer` table.  
SELECT DISTINCT city
FROM Customer;

-- 47. Write a query to count total number of customers.  
SELECT COUNT(*) AS Total_Customers
FROM Customer;

-- 48. Write a query to find average age of customers.  
SELECT AVG(age) AS Average_Age
FROM Customer;

-- 49. Write a query to get maximum salary from `officers`.
SELECT MAX(salary) AS Highest_Salary
FROM Officers;

-- 50. Write a query to display minimum age from `customer`.  
SELECT MIN(age) as Minimum_Age
FROM Customer;