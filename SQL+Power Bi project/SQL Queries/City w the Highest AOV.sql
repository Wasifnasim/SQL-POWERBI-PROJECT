-- Find the City with the Highest Average Order Value (AOV)
SELECT c.city,
    COUNT(o.order_id) AS total_orders,
    SUM(o.total_amount) AS total_revenue,
    ROUND(SUM(o.total_amount) / COUNT(o.order_id), 2) AS avg_order_value
FROM 
    orders AS o
INNER JOIN 
    customers AS c
    ON o.customer_id = c.customer_id
GROUP BY 
    c.city
ORDER BY 
    avg_order_value DESC
LIMIT 5;
