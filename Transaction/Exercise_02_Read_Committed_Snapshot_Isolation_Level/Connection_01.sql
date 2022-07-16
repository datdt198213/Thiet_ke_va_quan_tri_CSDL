-- Connection 1
/* Leave the above line to easily see that this query window
belongs to Connection 1. */
CREATE DATABASE TestDB;
GO
ALTER DATABASE TestDB SET READ_COMMITTED_SNAPSHOT ON;
GO
USE TestDB;
GO
CREATE SCHEMA Test;
GO
CREATE TABLE Test.TestTable (
Col1 INT NOT NULL
,Col2 INT NOT NULL
);
INSERT Test.TestTable (Col1, Col2) VALUES (1,10);
INSERT Test.TestTable (Col1, Col2) VALUES (2,20);
INSERT Test.TestTable (Col1, Col2) VALUES (3,30);
INSERT Test.TestTable (Col1, Col2) VALUES (4,40);
INSERT Test.TestTable (Col1, Col2) VALUES (5,50);
INSERT Test.TestTable (Col1, Col2) VALUES (6,60);

-- Connection 1
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRAN;
SELECT * FROM Test.TestTable
WHERE Col1 = 1;

/*
Question:
Why wasn’t the SELECT statement blocked by Connection 2? 
Which values were returned by the query, the values that existed before or after the update?
*/

/*
Answer:
The SELECT statement wasn't blocked by Connection 2 because the only have a connection in this situation
Values were returned by the query is Col1: 1, Col2: 10
The values that exitsted before update is
The values that exitsted after update is
*/

SELECT * FROM Test.TestTable
WHERE Col1 = 1;

/*
Question:
Which values are now returned, the values that existed before or after the update?
Did this SELECT statement return dirty reads?
Did the first SELECT statement in Connection 1 return dirty reads?
*/

/*
Answer:
the values are returned Col1: 1, Col2: 11
the values are existed before the update:
the values are existed after the update:
this SELECT statement return dirty reads
the first SELECT statement in Connection 1 return dirty read
*/