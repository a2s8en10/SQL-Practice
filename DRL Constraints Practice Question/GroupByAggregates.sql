-- 1. Display city-wise count of customers where age > 20. 
SELECT COUNT(*) AS Count_Of_Customers, city
FROM Customer
WHERE age > 20
GROUP BY city;

-- 2. Display average salary of officers who joined after 2015 grouped by designation.  
SELECT AVG(salary) AS AVERAGE_SALARY, designation
FROM Officers
WHERE joining_year > 2015
GROUP BY designation;

-- 3. Display count of customers prime_status = NULL grouped by city.  
SELECT COUNT(*) AS Count_Of_Customers, city
FROM Customer
WHERE prime_status IS NULL
GROUP BY city;

-- 4. Display officers rank-wise max salary, ordered by salary descending. 
SELECT MAX(salary) AS Maximum_Salary, [rank]
FROM Officers
GROUP BY [rank]
ORDER BY Maximum_Salary DESC;

-- 5. Display city-wise number of customers, sorted by count descending.  
SELECT COUNT(*) AS Number_of_Customer, city
FROM Customer
GROUP BY city
ORDER BY Number_of_Customer DESC;

-- 6. Display designation-wise officer count, sorted alphabetically.  
SELECT COUNT(*) AS Number_of_Officers, designation
FROM Officers
GROUP BY designation
ORDER BY designation;

-- 7. Display rank-wise total salary where salary > 40000.  
SELECT SUM(salary) AS Total_Salary_Rank_Wise, [rank]
FROM Officers
WHERE salary > 40000
GROUP BY [rank]

-- 8. Display city-wise customers average age, only for cities starting with `D`.  
SELECT AVG(age) AS Average_Age, city
FROM Customer
WHERE city LIKE 'D%'
GROUP BY city

-- 9. Display designation-wise highest paid officer salary.  
SELECT MAX(SALARY) AS Maximum_Salary, designation
FROM Officers
GROUP BY designation;

-- 10. Display year-wise officer count ordered by year ascending.
SELECT COUNT(*) AS Number_of_Officers, joining_year
FROM Officers
GROUP BY joining_year
ORDER BY joining_year;