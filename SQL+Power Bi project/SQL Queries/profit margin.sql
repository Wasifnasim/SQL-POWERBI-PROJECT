-- Profit Margin & Category Analysis
SELECT 
    category,
    SUM(oi.quantity * oi.price_per_unit) AS total_revenue,
    SUM(oi.quantity * p.cost_price) AS total_cost,
    (SUM(oi.quantity * oi.price_per_unit) - SUM(oi.quantity * p.cost_price)) AS profits,
    ROUND(((SUM(oi.quantity * oi.price_per_unit) - 
    SUM(oi.quantity * p.cost_price)) / SUM(oi.quantity * oi.price_per_unit)) * 100,
            2) AS Profit_margin
FROM
    orders_items AS oi
        JOIN
    products AS p ON oi.product_id = p.product_id
GROUP BY category
order by profit_margin asc;