USE w3schools;

SELECT * FROM Employees;

-- safe mode 해제
SET SQL_SAFE_UPDATES = 0;

DELETE FROM Employees; -- 모든 레코드 삭제

SELECT * FROM Customers;

SELECT * FROM Customers WHERE Country = 'Mexico';

ID	LAST NAME	FIRST NAME	BIRTH DATE
DELETE FROM Customers WHERE Country = 'Mexico';

DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';
SELECT * FROM Customers WHERE CustomerName='Alfreds Futterkiste';
