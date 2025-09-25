# Data Retrieval Language (DRL) - Practice Questions

## Basic SELECT

1. Write a query to select all columns from the `customer` table.  
2. How do you select only `customer_name` and `age` columns from the `customer` table?  
3. Can we use `SELECT` without `FROM`? Give an example.  
4. Write a query to display the current date.  
5. Write a query to convert "anurag" into uppercase.  

## WHERE Clause

6. Write a query to select customers whose age is greater than 25.  
7. How do you select customers whose `prime_status` is NULL?  
8. Write a query to find customers living in the city `Delhi`.  
9. How do you filter customers whose `age` is less than 18?  
10. Write a query to display all customers except those in `Mumbai`.  

## BETWEEN

11. Write a query to get customers with age between 20 and 40.  
12. How do you get all customers with age NOT between 30 and 50?  
13. Write a query to select customers who joined between `2022-01-01` and `2023-01-01`.  
14. Use `BETWEEN` to select customers whose salary is between 30,000 and 50,000.  
15. Use `BETWEEN` to find officers whose `joining_year` is between 2010 and 2020.  

## IN

16. Write a query to find officers with names in (`Lakshay`, `Maharana Pratap`, `Deepika`).  
17. How do you select customers from cities `Delhi`, `Mumbai`, and `Kolkata`?  
18. Write a query to find customers whose `age` is in (18, 25, 30, 40).  
19. Write a query to display officers whose designation is either `Inspector` or `Constable`.  
20. How do you exclude customers whose ID is in (1, 2, 3, 4)?  

## AND / OR / NOT

21. Write a query to select customers from `Delhi` AND with age greater than 25.  
22. Write a query to select customers who are either from `Mumbai` OR have age less than 20.  
23. Use `NOT` to exclude customers from `Kolkata`.  
24. Write a query to find officers whose `rank` is NOT `Major`.  
25. How do you combine `AND` and `OR` in a single query?  

## IS NULL

26. Write a query to find customers whose `prime_status` is NULL.  
27. How do you find customers whose `email` is NOT NULL?  
28. Write a query to display all officers who have NULL `address`.  
29. How do you check if a `discount` column is NULL?  
30. Write a query to count how many customers have NULL in `phone_number`.  

## Functions (DUAL table style)

31. Write a query to add 25 + 75 without using any table.  
32. Write a query to display current timestamp.  
33. Write a query to find length of the string "Database".  
34. Write a query to display "hello world" in uppercase.  
35. Write a query to display square root of 144.  

## Combining Concepts

36. Write a query to find customers with age > 20 AND city = `Delhi`.  
37. Write a query to find customers with prime_status = NULL OR age < 18.  
38. Write a query to find officers whose name is in (`Lakshay`, `Deepika`) AND age > 30.  
39. Write a query to find customers with salary between 40,000 AND 60,000 AND city in (`Delhi`, `Mumbai`).  
40. Write a query to display customers not from (`Kolkata`, `Bangalore`).  

## Order of Execution

41. Explain the execution order of a `SELECT` query.  
42. Why `FROM` executes before `SELECT`?  
43. Can we use column alias in `WHERE` clause? Why/Why not?  
44. Write an example query that shows `SELECT` evaluated last.  
45. Explain with example: execution is **RIGHT to LEFT**.  

## Extra Practice

46. Write a query to display all unique cities from the `customer` table.  
47. Write a query to count total number of customers.  
48. Write a query to find average age of customers.  
49. Write a query to get maximum salary from `officers`.  
50. Write a query to display minimum age from `customer`.  

# DRL Practice Questions – Pattern Searching, ORDER BY, GROUP BY

## Pattern Searching (LIKE, %, _)

1. Find customers whose name starts with letter `A`.  
2. Find customers whose name ends with `n`.  
3. Find customers whose name contains `raj`.  
4. Find customers whose name has exactly 5 characters.  
5. Find customers whose name has second character `a`.  
6. Find customers whose city starts with `D`.  
7. Find customers whose city ends with `i`.  
8. Find customers whose email contains `gmail`.  
9. Find customers whose name starts with `S` and has at least 3 characters.  
10. Find customers whose name ends with `p` and has exactly 4 characters.  

## ORDER BY

11. Display all customers sorted by name in ascending order.  
12. Display all customers sorted by name in descending order.  
13. Display customers sorted by age ascending.  
14. Display customers sorted by age descending.  
15. Display officers sorted by salary highest first.  
16. Display officers sorted by joining_year oldest first.  
17. Display customers sorted by city ascending, then by name ascending.  
18. Display customers sorted by prime_status (Yes first).  
19. Display officers sorted by rank and then by salary descending.  
20. Display customers sorted by email NULL values last.  

## GROUP BY with Aggregates

21. Find number of customers in each city.  
22. Find average age of customers city-wise.  
23. Find total salary paid to officers rank-wise.  
24. Find maximum salary of each designation.  
25. Find minimum joining_year of each rank.  
26. Count customers who have prime_status = ‘Yes’ city-wise.  
27. Find how many customers have NULL email grouped by city.  
28. Find number of officers joined each year.  
29. Find average salary of officers rank-wise.  
30. Find maximum and minimum age of customers city-wise.  

## Mix (WHERE + GROUP BY + ORDER BY)

31. Display city-wise count of customers where age > 20.  
32. Display average salary of officers who joined after 2015 grouped by designation.  
33. Display count of customers prime_status = NULL grouped by city.  
34. Display officers rank-wise max salary, ordered by salary descending.  
35. Display city-wise number of customers, sorted by count descending.  
36. Display designation-wise officer count, sorted alphabetically.  
37. Display rank-wise total salary where salary > 40000.  
38. Display city-wise customers average age, only for cities starting with `D`.  
39. Display designation-wise highest paid officer salary.  
40. Display year-wise officer count ordered by year ascending.  

## Extra Practice

41. Write a query to display customers whose city starts with `M` and order them by name.  
42. Write a query to display officers whose name ends with `a` ordered by salary descending.  
43. Find number of customers in each prime_status group (Yes, No, NULL).  
44. Find average salary of officers designation-wise where salary < 60000.  
45. Find customers name length > 5 ordered by city.  
46. Find officers whose name has `_` as second character.  
47. Find max, min, avg salary of officers grouped by city.  
48. Find customers city-wise sorted by average age descending.  
49. Find officer designation-wise total salary sorted by total salary descending.  
50. Find city-wise customers count where prime_status is NULL.  

# 📘 SQL Practice Questions – DISTINCT & GROUP BY HAVING  

Database: `DRL_Practice`  
Tables: `Customer`, `Officers`  

---

## 🔹 DISTINCT Questions (Q1 – Q25)

1. Find all distinct cities from the customer table.  
2. Find distinct prime status values in the customer table.  
3. Get distinct customer ages.  
4. Find distinct email IDs of customers.  
5. List distinct officer designations.  
6. Get distinct officer ranks.  
7. Find distinct officer joining years.  
8. Find all distinct salary values of officers.  
9. Find distinct customer cities who have prime status as "Yes".  
10. Find distinct customer names starting with 'A'.  
11. List distinct phone numbers from customer table.  
12. Get distinct customers who live in Delhi.  
13. Find distinct officer addresses.  
14. Find distinct officer designations where salary > 40000.  
15. Find distinct ages of customers who are prime users.  
16. Get distinct combinations of customer name and city.  
17. Find distinct officer names having designation = 'Inspector'.  
18. Find distinct customer names where email is NULL.  
19. Get distinct officer joining years where rank = 'Major'.  
20. Find distinct customer prime status excluding NULL values.  
21. List distinct officer salary values in descending order.  
22. Find distinct cities from customer table where age > 25.  
23. Find distinct officer names who joined before 2018.  
24. Find distinct customer emails where city = 'Mumbai'.  
25. Get distinct officer ranks where designation = 'Constable'.  

---

## 🔹 GROUP BY HAVING Questions (Q26 – Q50)

26. Count number of customers in each city.  
27. Find cities having more than 2 customers.  
28. Find prime status categories with customer count.  
29. Find prime status categories with more than 2 customers.  
30. Count number of officers by designation.  
31. Find officer designations having more than 1 officer.  
32. Find total salary by designation.  
33. Find designations where total salary > 100000.  
34. Find average customer age in each city.  
35. Find cities where average age > 25.  
36. Find minimum and maximum salary by officer rank.  
37. Find ranks where maximum salary > 60000.  
38. Count customers in each prime status group.  
39. Find prime status groups with more than 1 customer.  
40. Find officer joining years with officer count.  
41. Find joining years having more than 2 officers.  
42. Find total salary per joining year.  
43. Find joining years where total salary > 120000.  
44. Find cities with maximum customer age.  
45. Find cities where maximum customer age > 40.  
46. Find designation-wise average salary.  
47. Find designations where average salary > 45000.  
48. Find officer addresses with officer count.  
49. Find addresses having more than 1 officer.  
50. Find city-wise total customers where count > 1.  
