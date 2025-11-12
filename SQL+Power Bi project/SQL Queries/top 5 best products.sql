use project;
-- Identify the Top 5 Best-Selling Products
select p.product_id , p.product_name , p.category,
sum(oi.quantity * oi. price_per_unit) as total_revenue
from orders_items as oi
inner join products as p
on p.product_id = oi.product_id 
group by
p.product_id , p.product_name , p.category
order by
total_revenue desc
limit 5
; 