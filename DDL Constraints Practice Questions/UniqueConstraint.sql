USE ShopDB;



-- 1. Create a `Users` table with `Username` as UNIQUE. Insert duplicate `Username` and observe error.
CREATE TABLE Users
(
    Userid INT,
    Username VARCHAR(255) UNIQUE
)
INSERT INTO Users
    (Userid, Username)
VALUES
    (1, 'Anurag'),
    (2, 'Relax')
-- (3, 'Anurag')
-- error massage :- Cannot insert duplicate key in object 'dbo.Users'. The duplicate key value is (Anurag)

SELECT *
FROM Users



-- 2. Insert multiple `NULL` values in the UNIQUE column and check behavior.

INSERT INTO Users
    (Userid, Username)
VALUES
    (3, NULL),
    (4, NULL)
-- unique Constraint are available(insert) only one 'NULL' value.
--error massage:- Cannot insert duplicate key in object 'dbo.Users'. The duplicate key value is (<NULL>)



-- 3. Create a table with multiple UNIQUE columns (`Email`, `Phone`) and insert test data.
CREATE TABLE User1
(
    Id INT,
    F_Name VARCHAR(255),
    Email VARCHAR(255) UNIQUE,
    Phone VARCHAR(255) UNIQUE
)

INSERT INTO User1
    (Id,F_Name,Email,Phone)
VALUES
    (1, 'Anurag', 'anu@gmail.com', '1245637898'),
    (2, 'Relax', 'relax@gmail.com', '1245637891'),
    (3, 'Alex', 'alex@gmail.com', '1245637892'),
    (4, 'Leo', 'leo@gmail.com', '1245637893')


-- INSERT INTO User1 (Id,F_Name,Email,Phone)
-- VALUES
-- (5,'Rasmush','leo@gmail.com','124563789'),
-- (6,'Anu','anurag@gmail.com','1245637893')
--error massage:- Cannot insert duplicate key in object 'dbo.User1'. The duplicate key value is (leo@gmail.com)&(1245637893).



-- 4. Add UNIQUE constraint to an existing column using `ALTER TABLE`.
ALTER TABLE User1
ADD CONSTRAINT F_Name UNIQUE(F_Name);



-- 5. Try adding UNIQUE constraint on a column that already has duplicate data. Observe error.

CREATE TABLE User2
(
    id INT,
    name VARCHAR(255)
)
INSERT INTO User2
    (id , name)
VALUES
    (1, 'Anurag'),
    (2, 'Alex'),
    (3, 'Anurag')
SELECT *
from User2
ALTER TABLE User2
ADD CONSTRAINT name UNIQUE(name);

-- Error Massage:-The CREATE UNIQUE INDEX statement terminated because
-- a duplicate key was found for the object name 'dbo.User2' and
-- the index name 'name'. The duplicate key value is (Anurag).



-- 6. Create a UNIQUE constraint on multiple columns together (composite UNIQUE). Test insertion.
CREATE TABLE User3
(
    StudId INT,
    CourId INT,
    enrollment_date DATE,
    CONSTRAINT unique_student_course UNIQUE (StudId, CourId)
)

INSERT INTO User3
    (StudId,CourId,enrollment_date)
VALUES
    (1, 101, '2025-09-01'),
    (1, 102, '2025-09-02'),
    -- (same student, different course)
    (2, 101, '2025-09-03')
-- (different student, same course)

-- INSERT INTO User3
--     (StudId,CourId,enrollment_date)
-- VALUES
--     (1, 101, '2025-09-04')   --(same student, same course)
--Error Massage:-Violation of UNIQUE KEY constraint 'unique_student_course'. Cannot insert duplicate key in object 'dbo.User3'. The duplicate key value is (1, 101).



-- 7. Drop a UNIQUE constraint and insert duplicate values to observe behavior.

-- first find the Constraints name in table
SELECT name
FROM sys.key_constraints
WHERE [type] = 'UQ' AND parent_object_id = OBJECT_ID('User1');

-- then drop the column
ALTER TABLE User1
Drop CONSTRAINT UQ__User1__5C7E359E3331E1DB

-- After that insert the duplicate value if check drop the unique column
INSERT INTO User1
    (Id,F_Name,Email,Phone)
VALUES
    (6, 'Anu', 'anurag@gmail.com', '1245637893')



-- 8. Can a table have both Primary Key and multiple UNIQUE constraints? Test by creating a table.
CREATE TABLE User4
(
    -- UserId INT PRIMARY KEY UNIQUE,
    -- EmpId INT PRIMARY KEY UNIQUE,
    UserName VARCHAR(255)
)
-- Error Massage:- Both a PRIMARY KEY and UNIQUE constraint have been defined for column 'UserId', table 'User4'. Only one is allowed



-- 29. Explain difference between UNIQUE constraint and Unique Index in SQL Server.

-- ## Definition

-- UNIQUE Constraint - A rule enforced on one or more columns to ensure all values are unique.
-- Unique Index -  A type of index that enforces uniqueness and also improves query performance.

-- ## Creation Syntax

-- UNIQUE Constraint
-- CREATE TABLE Users (
--     Email VARCHAR(255) UNIQUE
-- );

-- Unique Index
-- CREATE UNIQUE INDEX idx_unique_email ON Users (Email);



-- 10 Test inserting duplicate data in a column with UNIQUE constraint using INSERT and SELECT queries.

CREATE TABLE User5
(
    Id INT,
    Email VARCHAR(255) UNIQUE
);

INSERT INTO User5
    (Id, Email)
VALUES
    (1, 'alice@example.com');
INSERT INTO User5
    (Id, Email)
VALUES
    (2, 'bob@example.com');

-- INSERT INTO User5 (Id, Email) VALUES (3, 'alice@example.com');
-- Error Massage :- Cannot insert duplicate key in object 'dbo.User5'. The duplicate key value is (alice@example.com).

SELECT *
FROM User5
WHERE Email = 'alice@example.com';

-- optional 

-- IF NOT EXISTS (
--     SELECT 1 FROM User5 WHERE Email = 'alice@example.com'
-- )
-- BEGIN
--     INSERT INTO User5 (Id, Email) VALUES (3, 'alice@example.com');
-- END





