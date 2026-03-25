-- общая информаци о данных
SELECT 
COUNT(*) AS total,
COUNT(DISTINCT "Order ID") AS total_id_order,
Min("Order Date") AS fisrt_order,
Max("Order Date") AS end_order
from orders