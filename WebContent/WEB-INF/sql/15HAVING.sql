USE w3schools;

SELECT * FROM Customer;

SELECT Country, COUNT(CustomerID) count FROM Customers
WHERE count = 6 -- WHERE FROM절 테이블의 각 Row를 연산
GROUP BY Country
;

SELECT Country, COUNT(CustomerID) FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 3; -- HAVING aggregate function 결과를 조건으로 줄 수 있음

SELECT Country, COUNT(CustomerID) count FROM Customers
GROUP BY Country
HAVING count > 3;

-- 가장 적은 고객이 있는 나라들 조회
SELECT Country FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) =
(
	SELECT COUNT(CustomerID) count
	FROM Customers 
	GROUP BY Country
	ORDER BY count
	LIMIT 1
);

-- GROUP BY : 2개 이상의 컬럼 사용 가능
SELECT * FROM Orders ORDER BY OrderDate;

-- 날짜별 몇개의 주문이 있는지?
SELECT OrderDate, COUNT(OrderID) count
FROM Orders
GROUP BY OrderDate
ORDER BY count, OrderDate;

-- 날짜별, 직원별로 몇개의 주문이 있는지?
SELECT OrderDate, EmployeeID, COUNT(OrderID)
FROM Orders
GROUP BY OrderDate, EmployeeID
ORDER BY OrderDate, EmployeeID;

-- leetcode 1693
# Write your MySQL query statement below
SELECT date_id, make_name,
    COUNT(DISTINCT lead_id) AS unique_leads,
    COUNT(DISTINCT partner_id) AS unique_partners
FROM DailySales
GROUP BY date_id, make_name
ORDER BY date_id, make_name;