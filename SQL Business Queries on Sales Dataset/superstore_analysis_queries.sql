SELECT
    ROUND(SUM(Sales), 2) AS Total_Sales,
    ROUND(SUM(Profit), 2) AS Total_Profit,
    ROUND(AVG(Discount), 2) AS Average_Discount
FROM sales;

SELECT
    Region,
    ROUND(SUM(Sales), 2) AS Sales,
    ROUND(SUM(Profit), 2) AS Profit
FROM sales
GROUP BY Region
ORDER BY Sales DESC;

SELECT
    [Product Name],
    ROUND(SUM(Sales), 2) AS Total_Sales
FROM sales
GROUP BY [Product Name]
ORDER BY Total_Sales DESC
LIMIT 10;

SELECT
    [Sub-Category],
    ROUND(AVG(Discount), 2) AS Avg_Discount,
    ROUND(SUM(Profit), 2) AS Total_Profit
FROM sales
GROUP BY [Sub-Category]
HAVING Avg_Discount > 0.3 AND Total_Profit < 0
ORDER BY Avg_Discount DESC;