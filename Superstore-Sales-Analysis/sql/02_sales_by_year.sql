-- продажи и прибиль по годам
SELECT 
    strftime('%Y', "Order Date") AS year,
    ROUND(SUM(Sales), 2) AS total_sales,
    ROUND(SUM(Profit), 2) AS total_profit,
    ROUND(SUM(Profit)*100.0 / SUM(Sales), 2) AS profit_margin_pct
FROM orders
GROUP BY year
ORDER BY year;