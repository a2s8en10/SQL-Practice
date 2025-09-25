-- 1. Find customers whose name starts with letter `A`.  
SELECT *
FROM Customer
WHERE customer_name LIKE 'A%';

-- 2. Find customers whose name ends with `n`.
SELECT *
FROM Customer
WHERE customer_name LIKE '%n';

-- 3. Find customers whose name contains `raj`.
SELECT *
FROM Customer
WHERE customer_name LIKE '%anu%';

-- 4. Find customers whose name has exactly 5 characters.
SELECT *
FROM Customer
WHERE customer_name LIKE '_____';

-- 5. Find customers whose name has second character `a`. 
SELECT *
FROM Customer
WHERE customer_name LIKE '_a%';

-- 6. Find customers whose city starts with `D`. 
SELECT *
FROM Customer
WHERE city LIKE 'D%';

-- 7. Find customers whose city ends with `i`.  
SELECT *
FROM Customer
WHERE city LIKE '%i';

-- 8. Find customers whose email contains `gmail`.  
SELECT *
FROM Customer
WHERE email LIKE '%gmail%';

-- 9. Find customers whose name starts with `S` and has at least 3 characters.
SELECT *
FROM Customer
WHERE customer_name LIKE 'S___%';

-- 10. Find customers whose name ends with `p` and has exactly 4 characters.
SELECT *
FROM Customer
WHERE customer_name LIKE '%____p';