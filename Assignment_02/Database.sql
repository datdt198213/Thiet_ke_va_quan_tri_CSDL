SELECT * FROM HumanResources.Employee
-- khong co index
SELECT NationalIDNumber from HumanResources.Employee where VacationHours = 99
-- co index
SELECT NationalIDNumber from HumanResources.Employee WHERE BusinessEntityID = 1

