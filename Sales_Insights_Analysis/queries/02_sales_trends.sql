-- 2. Sales Trends
SELECT DATE_TRUNC('month', OrderDate) AS Month, SUM(Sales) AS TotalSales
FROM sales
GROUP BY Month
ORDER BY Month;
