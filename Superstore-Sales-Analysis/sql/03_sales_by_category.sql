-- продажи по категориям 
SELECT Category, 
ROUND(SUM(Sales),2) as total_category,
ROUND(SUM(Profit), 2) AS total_profit,
ROUND(SUM(Profit)*100 / SUM(Sales), 2) as profit_margin_pct,
COUNT(DISTINCT "Order ID") as num_counts
From orders o 
GROUP BY Category
ORDER BY total_profit DESC;