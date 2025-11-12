-- Track Monthly Sales Performance
SELECT 
    MONTH(o.order_date) AS Months,
    DATE_FORMAT(order_date, '%b') AS month_name,
    SUM(o.total_amount) AS revenue,
    COUNT(order_id) AS orders
FROM
    orders AS o
GROUP BY 
MONTH(o.order_date),
month_name
order by 
Months;