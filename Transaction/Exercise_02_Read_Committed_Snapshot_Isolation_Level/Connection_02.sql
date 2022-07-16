--Connection 2
/* Leave the above line to easily see that this query window
belongs to Connection 2. */
USE TestDB;

-- Connection 2
BEGIN TRAN;
UPDATE Test.TestTable SET Col2 = Col2 + 1
WHERE Col1 = 1;

--Connection 2
COMMIT TRAN;