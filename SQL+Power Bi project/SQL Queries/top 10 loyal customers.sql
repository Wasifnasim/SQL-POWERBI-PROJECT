-- Identify the Top 10 Loyal Customers
SELECT 
    name,
    city,
    o.customer_id,
    SUM(o.total_amount) AS total_spend,
    COUNT(o.order_id) AS orders
FROM
    orders AS o
        INNER JOIN
    customers AS c ON o.customer_id = c.customer_id
GROUP BY c.name , c.customer_id , c.city
ORDER BY total_spend DESC
LIMIT 10;