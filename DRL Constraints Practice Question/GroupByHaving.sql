-- 1. Count number of customers in each city.  
SELECT COUNT(*) AS Number_of_Customer, city
FROM Customer
GROUP BY city;

-- 2. Find cities having more than 2 customers.
SELECT city
FROM Customer
GROUP BY city
HAVING COUNT(*) > 2;

-- 3. Find prime status categories with customer count.
SELECT COUNT(*) AS Number_of_Customer , prime_status
FROM Customer
GROUP BY prime_status;

-- 4. Find prime status categories with more than 2 customers.  
SELECT prime_status
FROM Customer
GROUP BY prime_status
HAVING COUNT(*) > 2;

-- 5. Count number of officers by designation.  
SELECT COUNT(*) AS Number_of_Officers, designation
FROM Officers
GROUP BY designation;

-- 6. Find officer designations having more than 1 officer.
SELECT designation
FROM Officers
GROUP BY designation
HAVING COUNT(*) > 1;

-- 7. Find total salary by designation.  
SELECT SUM(salary), designation
FROM Officers
GROUP BY designation;

-- 8. Find designations where total salary > 100000.  
SELECT designation
FROM Officers
GROUP BY designation
HAVING SUM(salary) > 100000;

-- 9. Find average customer age in each city.  
SELECT AVG(age) AS Average_Age, city
FROM Customer
GROUP BY city;

-- 10. Find cities where average age > 25.  
SELECT city
FROM Customer
GROUP BY city
HAVING AVG(age) > 25;

-- 11. Find minimum and maximum salary by officer rank.  
SELECT MIN(salary) AS Minimum_salary, MAX(salary) AS Maximum_Salary, [rank]
FROM Officers
GROUP BY [rank];

-- 12. Find ranks where maximum salary > 60000.  
SELECT [rank]
FROM Officers
GROUP BY [rank]
HAVING MAX(salary) > 60000;

-- 13. Count customers in each prime status group.  
SELECT COUNT(*) AS Number_of_Customer, prime_status
FROM Customer
GROUP BY prime_status;

-- 14. Find prime status groups with more than 1 customer.  
SELECT prime_status
FROM Customer
GROUP BY prime_status
HAVING COUNT(*) > 1;

-- 15. Find officer joining years with officer count.  
SELECT COUNT(*) AS Number_of_Officers, joining_year
FROM Officers
GROUP BY joining_year;

-- 16. Find joining years having more than 2 officers.  
SELECT joining_year
FROM Officers
GROUP BY joining_year
HAVING COUNT(*) > 2;

-- 17. Find total salary per joining year.  
SELECT SUM(salary) AS Total_Salary, joining_year
FROM Officers
GROUP BY joining_year;

-- 18. Find joining years where total salary > 120000.  
SELECT joining_year
FROM Officers
GROUP BY joining_year
HAVING SUM(salary) > 120000;

-- 19. Find cities with maximum customer age.
SELECT MAX(age) AS Maximum_Age, city
FROM Customer
GROUP BY city;

-- 20. Find cities where maximum customer age > 40.  
SELECT city
FROM Customer
GROUP BY city
HAVING MAX(age) > 40;

-- 21. Find designation-wise average salary.  
SELECT AVG(salary) AS AVERAGE_SALARY, designation
FROM Officers
GROUP BY designation;

-- 22. Find designations where average salary > 45000.  
SELECT designation
FROM Officers
GROUP BY designation
HAVING AVG(salary) > 45000;

-- 23. Find officer addresses with officer count.  
SELECT address, COUNT(*) AS Number_of_Officers
FROM Officers
GROUP BY address;

-- 24. Find addresses having more than 1 officer.  
SELECT address
FROM Officers
GROUP BY address
HAVING COUNT(*) > 1;

-- 25. Find city-wise total customers where count > 1.  
SELECT COUNT(*) AS Number_of_Customers, city
FROM Customer
GROUP BY city
HAVING COUNT(*) > 1;
