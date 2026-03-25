WITH product_sales AS (
    SELECT 
        Category,
        "Product Name",
        ROUND(SUM(Sales), 2) AS total_sales,
        RANK() OVER (PARTITION BY Category ORDER BY SUM(Sales) DESC) AS rank_in_category
    FROM orders
    GROUP BY Category, "Product Name"
)
SELECT 
    Category,
    "Product Name",
    total_sales,
    rank_in_category
FROM product_sales
WHERE rank_in_category <= 5
ORDER BY Category, rank_in_category;