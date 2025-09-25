-- 1. Find all distinct cities from the customer table. 
SELECT DISTINCT city
FROM Customer;

-- 2. Find distinct prime status values in the customer table.
SELECT DISTINCT prime_status
FROM Customer;

-- 3. Get distinct customer ages. 
SELECT DISTINCT age
FROM Customer;

-- 4. Find distinct email IDs of customers.  
SELECT DISTINCT email
FROM Customer;

-- 5. List distinct officer designations.  
SELECT DISTINCT designation
FROM Officers;

-- 6. Get distinct officer ranks.  
SELECT DISTINCT [rank]
FROM Officers;

-- 7. Find distinct officer joining years.  
SELECT DISTINCT joining_year
FROM Officers;

-- 8. Find all distinct salary values of officers.  
SELECT DISTINCT salary
FROM Officers;

-- 9. Find distinct customer cities who have prime status as "Yes".  
SELECT DISTINCT city
FROM Customer
WHERE prime_status = 'Yes';

-- 10. Find distinct customer names starting with 'A'.  
SELECT DISTINCT customer_name
FROM Customer
WHERE customer_name LIKE 'A%';

-- 11. List distinct phone numbers from customer table.  
SELECT DISTINCT phone_number
FROM Customer;

-- 12. Get distinct customers who live in Delhi. 
SELECT DISTINCT customer_name
FROM Customer
WHERE city = 'Delhi';

-- 13. Find distinct officer addresses.  
SELECT DISTINCT address
FROM Officers;

-- 14. Find distinct officer designations where salary > 40000.  
SELECT DISTINCT designation
FROM Officers
WHERE salary > 40000;

-- 15. Find distinct ages of customers who are prime users.  
SELECT DISTINCT age
FROM Customer
WHERE prime_status = 'Yes';

-- 16. Get distinct combinations of customer name and city.  
SELECT DISTINCT customer_name, city
FROM Customer;

-- 17. Find distinct officer names having designation = 'Inspector'. 
SELECT DISTINCT officer_name
FROM Officers
WHERE designation = 'INSPECTOR';

-- 18. Find distinct customer names where email is NULL.  
SELECT DISTINCT customer_name
FROM Customer
WHERE email IS NULL;

-- 19. Get distinct officer joining years where rank = 'Major'.  
SELECT DISTINCT joining_year
FROM Officers
WHERE [rank] = 'MAJOR';

-- 20. Find distinct customer prime status excluding NULL values.  
SELECT DISTINCT prime_status
FROM Customer
WHERE prime_status IS NOT NULL;

-- 21. List distinct officer salary values in descending order.  
SELECT DISTINCT salary
FROM Officers
ORDER BY salary DESC;

-- 22. Find distinct cities from customer table where age > 25.  
SELECT DISTINCT city
FROM Customer
WHERE age >25;

-- 23. Find distinct officer names who joined before 2018.
SELECT DISTINCT officer_name
FROM Officers
WHERE joining_year < 2018;

-- 24. Find distinct customer emails where city = 'Mumbai'.  
SELECT DISTINCT email
FROM Customer
WHERE city = 'Mumbai';

-- 25. Get distinct officer ranks where designation = 'Constable'.
SELECT DISTINCT [rank]
FROM Officers
WHERE designation = 'CONSTABLE';