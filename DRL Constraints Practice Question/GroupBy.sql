-- 1. Find number of customers in each city.
SELECT COUNT(city) AS Number_of_Customer , city
FROM Customer
GROUP BY city;

-- 2. Find average age of customers city-wise
SELECT AVG(age) AS Average_Age_Of_Customers, city
FROM Customer
GROUP BY city;

-- 3. Find total salary paid to officers rank-wise.
SELECT SUM(salary) AS Total_Salary_Rank_Wise , [rank]
FROM Officers
GROUP BY [rank];

-- 4. Find maximum salary of each designation. 
SELECT MAX(salary) AS Max_Salary_For_Designation, designation
FROM Officers
GROUP BY designation;

-- 5. Find minimum joining_year of each rank. 
SELECT [rank] , MIN(joining_year) AS Minimun_Joining_Year
FROM Officers
GROUP BY [rank];

-- 6. Count customers who have prime_status = ‘Yes’ city-wise. 
SELECT COUNT(prime_status) AS COUNT_CUSTOMER, city
FROM Customer
WHERE prime_status = 'Yes'
GROUP BY city;

-- 7. Find how many customers have NULL email grouped by city. 
SELECT COUNT(*) AS Number_of_Customer, city
FROM Customer
WHERE email IS NULL
GROUP BY city;

-- 8. Find number of officers joined each year. 
SELECT COUNT(*) AS Number_of_Officers, joining_year
FROM Officers
GROUP BY joining_year;

-- 9. Find average salary of officers rank-wise. 
SELECT AVG(salary) AS AVERAGE_SALARY, [rank]
FROM Officers
GROUP BY [rank];

-- 10. Find maximum and minimum age of customers city-wise.  
SELECT city, MIN(age) AS Minimum_Age, MAX(age) AS Maximum_Age
FROM Customer
GROUP BY city;