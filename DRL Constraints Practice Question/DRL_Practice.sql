-- ## Extra Practice 

-- 41. Write a query to display customers whose city starts with `M` and order them by name.  
SELECT *
FROM Customer
WHERE city LIKE 'M%'
ORDER BY customer_name;

-- 42. Write a query to display officers whose name ends with `a` ordered by salary descending.
SELECT *
FROM Officers
WHERE officer_name LIKE '%a'
ORDER BY salary DESC;

-- 43. Find number of customers in each prime_status group (Yes, No, NULL).
SELECT prime_status , COUNT(*) AS Number_of_Customer
FROM Customer
GROUP BY prime_status;

-- 44. Find average salary of officers designation-wise where salary < 60000.  
SELECT AVG(salary) AS AVERAGE_SALARY, designation
FROM Officers
WHERE salary < 60000
GROUP BY designation;

-- 45. Find customers name length > 5 ordered by city.  
SELECT *
FROM Customer
WHERE LEN(customer_name) > 5
ORDER BY city;

-- 46. Find officers whose name has `_` as second character.  
SELECT *
FROM Officers
WHERE officer_name LIKE '_%'

-- 47. Find max, min, avg salary of officers grouped by city.
SELECT MAX(salary) AS Maximum_Salary, MIN(salary) AS Minimum_salary, AVG(salary) AS AVERAGE_SALARY, designation
FROM Officers
GROUP BY designation;

-- 48. Find customers city-wise sorted by average age descending.  
SELECT AVG(age) AS Average_Age, city
FROM Customer
GROUP BY city
ORDER BY Average_Age DESC;

-- 49. Find officer designation-wise total salary sorted by total salary descending.  
SELECT SUM(salary) AS Total_Salary, designation
FROM Officers
GROUP BY designation
ORDER BY Total_Salary DESC;

-- 50. Find city-wise customers count where prime_status is NULL.  
SELECT COUNT(*) AS Number_of_Customer, city
FROM Customer
WHERE prime_status IS NULL
GROUP BY city;