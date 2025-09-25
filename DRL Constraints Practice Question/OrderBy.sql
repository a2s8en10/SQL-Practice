-- 1. Display all customers sorted by name in ascending order. 
SELECT *
FROM Customer
ORDER BY customer_name ASC;

-- 2. Display all customers sorted by name in descending order. 
SELECT *
FROM Customer
ORDER BY customer_name DESC;

-- 3. Display customers sorted by age ascending.
SELECT *
FROM Customer
ORDER BY age ASC;

-- 4. Display customers sorted by age descending.  
SELECT *
FROM Customer
ORDER BY age DESC;

-- 5. Display officers sorted by salary highest first
SELECT *
FROM Officers
ORDER BY salary DESC;

-- 6. Display officers sorted by joining_year oldest first.
SELECT *
FROM Officers
ORDER BY joining_year ASC;

-- 7. Display customers sorted by city ascending, then by name ascending.  
SELECT *
FROM Customer
ORDER BY city ASC , customer_name ASC;

-- 8. Display customers sorted by prime_status (Yes first). 
SELECT *
FROM Customer
ORDER BY prime_status DESC;

-- 9. Display officers sorted by rank and then by salary descending.
SELECT *
FROM Officers
ORDER BY [rank] ASC , salary DESC;

-- 10. Display customers sorted by email NULL values last.
-- Sorting such that NULL values appear last 
-- syntext :- ORDER BY CASE WHEN <condition> THEN <priority> ELSE <priority> END
SELECT *
FROM Customer
ORDER BY CASE WHEN email IS NULL THEN 1 ELSE 0 END, email ASC;