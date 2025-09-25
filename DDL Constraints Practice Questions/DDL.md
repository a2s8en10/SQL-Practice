# SQL Server Constraints (DDL) - Interview-Level Practice Questions

## Primary Key (1-10)

1. Create a table `Student` with `StudentID` as Primary Key. Test inserting duplicate `StudentID`.
2. Create a table `Department` with composite Primary Key (`DeptID`, `DeptName`). Insert valid and duplicate records and observe behavior.
3. Create `Library` table with `BookID` as Primary Key. Try inserting `NULL` in `BookID` and check error.
4. Alter an existing table to add a Primary Key on `EmpID`.
5. Drop the Primary Key constraint from a table.
6. Can a table have two Primary Keys? Try creating and observe.
7. Insert records violating Primary Key constraints and check the error message.
8. Create a table with Primary Key and a Unique constraint on another column. Insert data to test both constraints.
9. Explain the difference between Primary Key and Clustered Index. Create a table to test.
10. Create a table `Customer` with `CustomerID` as Primary Key and observe indexing behavior in SSMS.

## Foreign Key (11-20)

11. Create `Customer` table with `CustID` as Primary Key.
12. Create `Orders` table with `CustID` as Foreign Key referencing `Customer(CustID)`.
13. Insert a row into `Orders` with a `CustID` that does not exist in `Customer`. Observe the error.
14. Insert a valid `CustID` into `Orders` that exists in `Customer`.
15. Delete a customer who has orders. Observe what happens.
16. Modify Foreign Key with `ON DELETE CASCADE` and delete a parent record. Observe effect.
17. Modify Foreign Key with `ON UPDATE CASCADE` and update `CustID`. Observe effect in child table.
18. Create a table with multiple Foreign Keys (e.g., `Orders` referencing both `Customer` and `Product`).
19. Create a self-referencing Foreign Key (e.g., `Employee` table with `ManagerID` referencing `EmpID`). Insert sample data.
20. Can a Foreign Key column accept `NULL`? Test with sample data.

## Unique Constraint (21-30)

21. Create a `Users` table with `Username` as UNIQUE. Insert duplicate `Username` and observe error.
22. Insert multiple `NULL` values in the UNIQUE column and check behavior.
23. Create a table with multiple UNIQUE columns (`Email`, `Phone`) and insert test data.
24. Add UNIQUE constraint to an existing column using `ALTER TABLE`.
25. Try adding UNIQUE constraint on a column that already has duplicate data. Observe error.
26. Create a UNIQUE constraint on multiple columns together (composite UNIQUE). Test insertion.
27. Drop a UNIQUE constraint and insert duplicate values to observe behavior.
28. Can a table have both Primary Key and multiple UNIQUE constraints? Test by creating a table.
29. Explain difference between UNIQUE constraint and Unique Index in SQL Server.
30. Test inserting duplicate data in a column with UNIQUE constraint using INSERT and SELECT queries.

## Check Constraint (31-40)

31. Create `Employee` table with CHECK constraint `Age > 18`. Insert valid and invalid data.
32. Create `Marks` table with CHECK constraint `Score BETWEEN 0 AND 100`. Test insertion of invalid scores.
33. Add multiple CHECK constraints on a single column and test.
34. Create a CHECK constraint across multiple columns (`Salary > Bonus`). Test with sample data.
35. Create CHECK constraint to allow only specific values in a column (`Gender IN ('M', 'F')`).
36. Add a CHECK constraint to an existing column using `ALTER TABLE`.
37. Drop a CHECK constraint and insert previously invalid data.
38. Compare CHECK constraint vs Trigger for enforcing data validation.
39. Test disabling a CHECK constraint temporarily and insert invalid data.
40. Observe the error message when a CHECK constraint is violated during insert or update.

## Default Constraint (41-50)

41. Create `Account` table with `Balance` DEFAULT 1000. Insert data without specifying Balance.
42. Insert data specifying Balance to override the default.
43. Create `Orders` table with `OrderDate` DEFAULT GETDATE(). Insert data without date and check.
44. Create `Products` table with `Status` DEFAULT 'Available'. Insert with and without Status.
45. Add DEFAULT constraint to an existing column using `ALTER TABLE`. Test insertion.
46. Drop DEFAULT constraint and insert a row without value. Observe behavior.
47. Can DEFAULT constraint use functions like `GETDATE()` or `NEWID()`? Test in a table.
48. Create a table with multiple DEFAULT constraints (different columns) and insert data.
49. Explain difference between DEFAULT constraint and CHECK constraint. Test with sample data.
50. Test DEFAULT constraint with NULL insertion. Does it replace NULL with default value?