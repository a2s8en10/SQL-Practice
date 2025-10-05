USE ShopDB;
--  1. Create a table `Student` with `StudentID` as Primary Key. Test inserting duplicate `StudentID`.
CREATE TABLE DDLStudent
(
    StudentID INT PRIMARY KEY,
    Name VARCHAR(50),
    Age INT
)
INSERT INTO DDLStudent
    (StudentID , Name, Age)
VALUES
    (1, 'Alice', 20),
    (2, 'Bob', 22);
-- (1, 'Charlie', 23); -- This will fail due to duplicate StudentID

-- 2. Create a table `Department` with composite Primary Key (`DeptID`, `DeptName`). Insert valid and duplicate records and observe behavior.
CREATE TABLE Department
(
    DeptID INT,
    DeptName VARCHAR(50),
    Age INT,
    PRIMARY KEY(DeptID, DeptName)
)
INSERT INTO Department
    (DeptID,DeptName,Age)
VALUES
    (1, 'HR', 30),
    (2, 'Finance', 35);
-- (1, 'HR', 40); -- This will fail due to duplicate composite key

-- 3. Create `Library` table with `BookID` as Primary Key. Try inserting `NULL` in `BookID` and check error.
CREATE TABLE Library
(
    BookID INT PRIMARY KEY,
    Title VARCHAR(100),
    Description VARCHAR(255),
    PublishedYear INT,
    Author VARCHAR(100)
)
INSERT INTO Library
    (BookID, Title,[Description],PublishedYear,Author)
VALUES
    (1, 'The Great Gatsby', 'A novel set in the Jazz Age', 1925, 'F. Scott Fitzgerald'),
    (2, 'To Kill a Mockingbird', 'A novel about racial injustice', 1960, 'Harper Lee'),
    (3, '1984', 'A dystopian novel', 1949, 'George Orwell'),
    (4, 'Pride and Prejudice', 'A classic romance novel', 1813, 'Jane Austen');
-- (null,'How To Talk To Anyone','A book about communication skills',2013,'Leil Lowndes')
-- error message:- Cannot insert the value NULL into column 'BookID', table 'master.dbo.Library'.


-- 4. Alter an existing table to add a Primary Key on `EmpID`.
CREATE TABLE Employee
(
    -- its a very important to add NOT NULL constraint while adding primary key using alter table command
    EmpID INT NOT NULL,
    EmpName VARCHAR(50) NOT NULL,
    EmpAge INT NOT NULL
)
-- if you can not add primary key while create table then you can add primary key using alter table command
ALTER TABLE Employee
Add CONSTRAINT PK_EmpID PRIMARY KEY (EmpID);
-- DROP TABLE IF EXISTS Employee;
INSERT INTO Employee
    (EmpID, EmpName, EmpAge)
VALUES
    (1, 'John', 21),
    (2, 'Jane', 22);
-- error message:- Violation of PRIMARY KEY constraint 'PK_EmpID'. Cannot insert duplicate key in object 'dbo.Employee'. The duplicate key value is (1)
-- (1, 'Doe', 23);


-- 5. Drop the Primary Key constraint from a table.
ALTER TABLE Employee
DROP CONSTRAINT PK_EmpID;
-- remove primary key constraint from any table
-- Now you can insert duplicate EmpID Easily
INSERT INTO Employee
    (EmpID, EmpName, EmpAge)
VALUES
    (1, 'Doe', 23);


-- 6. Can a table have two Primary Keys? Try creating and observe.
CREATE TABLE StudentTwoPK
(
    StudId INT PRIMARY KEY,
    StudName VARCHAR(50),
    StudAge INT,
    -- StudRollNo INT PRIMARY KEY
)
-- Error message: Cannot add multiple PRIMARY KEY constraints to table 'StudentTwoPK'.


-- 7. Insert records violating Primary Key constraints and check the error message.
INSERT INTO StudentTwoPK
    (StudId, StudName, StudAge)
VALUES
    (1, 'Alice', 20),
    (2, 'Bob', 22);
-- (1, 'Charlie', 23) -- Violation of PRIMARY KEY constraint 'PK__StudentT__F5C0A7FFE554A99D'. Cannot insert duplicate key in object 'dbo.StudentTwoPK'. The duplicate key value is (1).



-- 8. Create a table with Primary Key and a Unique constraint on another column. Insert data to test both constraints.
CREATE TABLE StudentUnique
(
    StudentID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE,
    Name VARCHAR(50)
)
INSERT INTO StudentUnique
    (StudentID, Email, Name)
VALUES
    (1, 'alice@example.com', 'Alice'),
    (2, 'bob@example.com', 'Bob');
-- (3, 'alice@example.com', 'David'); -- Violation of UNIQUE KEY constraint 'UQ__StudentU__A9D105340C3BDEA7'. Cannot insert duplicate key in object 'dbo.StudentUnique'. The duplicate key value is (alice@example.com).
-- (1, 'charlie@example.com', 'Charlie'); -- Violation of PRIMARY KEY constraint 'PK__StudentU__32C52B8F1D8E3DAD'. Cannot insert duplicate key in object 'dbo.StudentUnique'. The duplicate key value is (1).


-- 9. Explain the difference between Primary Key and Clustered Index. Create a table to test.
CREATE TABLE TestClusteredIndex
(
    ID INT PRIMARY KEY CLUSTERED,
    Name VARCHAR(50)
)
INSERT INTO TestClusteredIndex
    (ID, Name)
VALUES
    (1, 'Alice'),
    (2, 'Bob'),
    (3, 'Charlie');


    
-- 10. Create a table `Customer` with `CustomerID` as Primary Key and observe indexing behavior in SSMS.
CREATE TABLE TestCustomer
(
    CustomerID INT PRIMARY KEY,
    CustomerName VARCHAR(100),
    ContactNumber VARCHAR(13)
)
INSERT INTO TestCustomer
    (CustomerID, CustomerName, ContactNumber)VALUES
    (1, 'John Doe', '123-456-7890'),
    (2, 'Jane Smith', '987-654-3210');
    