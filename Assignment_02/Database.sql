-- index in HumnaResources.Employee
SELECT * INTO NewEmployee 
FROM HumanResources.Employee

SELECT * INTO NewEmployeeIndex 
FROM HumanResources.Employee

CREATE INDEX NewIndex
ON NewEmployeeIndex(VacationHours)

DROP INDEX NewIndex ON NewEmployeeIndex

SELECT *
FROM NewEmployee 
WHERE VacationHours=34

SELECT * 
FROM NewEmployeeIndex 
WHERE VacationHours=34

-- index in Person.Address
SELECT * INTO Address_NoIndex
FROM Person.Address

SELECT * INTO Address_Index
FROM Person.Address

CREATE INDEX NewIndex
ON Address_Index(City)

set statistics	io on
SELECT *
FROM Address_NoIndex 
WHERE City = 'Bothell'


set statistics io on
SELECT *
FROM Address_Index
WHERE City = 'Bothell'
