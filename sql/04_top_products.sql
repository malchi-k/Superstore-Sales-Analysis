-- топ 10 товаров по категориям
SELECT "Product Name" ,
Category ,
ROUND(SUM(Sales),2) as total_sales,
ROUND(SUM(Profit),2 ) as total_profit,
ROUND(SUM(Profit)*100 / SUM(Sales),2)
From orders o 
GROUP BY "Product Name",Category
ORDER BY total_sales DESC
LIMIT 10
