USE ShopDB;

-- 1. Create `Customer` table with `CustID` as Primary Key.
CREATE TABLE ShopPk
(
    ShopID INT PRIMARY KEY,
    ShopName VARCHAR(100)
)
INSERT INTO ShopPk
    (ShopID, ShopName)
VALUES
    (1, 'John Doe'),
    (2, 'Jane Smith'),
    (3, 'Alice Johnson'),
    (4, 'Bob Brown'),
    (5, 'Charlie Davis');

-- 2. Create `Orders` table with `CustID` as Foreign Key referencing `Customer(CustID)`.
CREATE TABLE ShopFk
(
    orderId INT PRIMARY KEY,
    orderDate DATE,
    ShopID INT,
    FOREIGN KEY (ShopID) REFERENCES ShopPk(ShopID)
)

INSERT INTO ShopFk
    (orderId, orderDate, ShopID)
VALUES
    (1, '2023-01-01', 1),
    (2, '2023-01-02', 2),
    (3, '2023-01-03', 1),
    (4, '2023-01-04', 2),
    (5, '2023-01-05', 1);

SELECT *
FROM ShopPk;
SELECT *
FROM ShopFk;


-- 3. Insert a row into `Orders` with a `CustID` that does not exist in `Customer`. Observe the error.
INSERT INTO ShopFk
    (orderId, orderDate, ShopID)
VALUES(6, '2023-01-06', 3);
--  ERROR MESSAGE:- This will fail as ShopID 3 does not exist in ShopPk.


-- 4. Insert a valid `ShopID` into `Orders` that exists in `Customer`.
INSERT INTO ShopFk
    (orderId, orderDate, ShopID)
VALUES(6, '2023-01-06', 1);

-- 5. Delete a shop who has orders. Observe what happens.
DELETE FROM ShopPk WHERE ShopID = 1;
-- ERROR MESSAGE:- This will fail as ShopID 1 is referenced in ShopFk.

-- 6. Modify Foreign Key with `ON DELETE CASCADE` and delete a parent record. Observe effect.

-- find the name of the foreign key constraint
SELECT
    f.name AS ForeignKey,
    OBJECT_NAME(f.parent_object_id) AS ChildTable,
    COL_NAME(fc.parent_object_id, fc.parent_column_id) AS FK_Column,
    OBJECT_NAME(f.referenced_object_id) AS ParentTable,
    COL_NAME(fc.referenced_object_id, fc.referenced_column_id) AS PK_Column
FROM
    sys.foreign_keys AS f
    INNER JOIN
    sys.foreign_key_columns AS fc
    ON f.object_id = fc.constraint_object_id
WHERE 
    OBJECT_NAME(f.parent_object_id) IN ('ShopFk', 'ShopPk')
    OR OBJECT_NAME(f.referenced_object_id) IN ('ShopFk', 'ShopPk');


-- Drop the existing foreign key constraint
ALTER TABLE ShopFk
DROP CONSTRAINT FK__ShopFk__ShopID__72C60C4A;

-- Add the foreign key constraint with ON DELETE CASCADE
ALTER TABLE ShopFk
ADD CONSTRAINT FK__ShopFk__ShopID__72C60C4A
FOREIGN KEY (ShopID)
REFERENCES ShopPk(ShopID)
ON DELETE CASCADE;

-- Now delete the shop with ShopID = 2
DELETE FROM ShopPk WHERE ShopID = 2;

SELECT *
FROM ShopFk;
SELECT *
FROM ShopPk;


-- 8. Create a table with multiple Foreign Keys (e.g., `Orders` referencing both `Customer` and `Product`).
CREATE TABLE Product
(
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(100)
)

CREATE TABLE MultipleFK
(
    OrderID INT PRIMARY KEY,
    ShopID INT,
    ProductID INT,
    FOREIGN KEY (ShopID) REFERENCES ShopPk(ShopID) ON DELETE CASCADE,
    FOREIGN KEY (ProductID) REFERENCES Product (ProductID) ON DELETE CASCADE
)

-- 9. Create a self-referencing Foreign Key (e.g., `Employee` table with `ManagerID` referencing `EmpID`). Insert sample data.
CREATE TABLE Emp
(
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(100),
    ManagerID INT,
    FOREIGN KEY (ManagerID) REFERENCES Emp(EmpID)
)
INSERT INTO Emp
    (EmpID, EmpName, ManagerID)
VALUES
    (1, 'Alice', NULL),
    (2, 'Bob', 1),
    (3, 'Charlie', 1),
    (4, 'David', 2);

SELECT *
FROM Emp;

-- 10. Can a Foreign Key column accept `NULL`? Test with sample data.
INSERT INTO Emp
    (EmpID, EmpName, ManagerID)
VALUES
    (5, 'Eve', NULL),
    (6, 'Frank', 2);

SELECT *
FROM Emp;