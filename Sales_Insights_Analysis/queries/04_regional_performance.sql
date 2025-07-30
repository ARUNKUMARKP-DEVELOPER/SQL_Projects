-- 4. Regional Performance
SELECT Region, SUM(Sales) AS TotalSales, SUM(Profit) AS TotalProfit
FROM sales
GROUP BY Region;
