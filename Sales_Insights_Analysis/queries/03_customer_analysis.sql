-- 3. Customer Analysis
SELECT CustomerName, SUM(Sales) AS TotalSpent
FROM sales
GROUP BY CustomerName
ORDER BY TotalSpent DESC
LIMIT 10;
