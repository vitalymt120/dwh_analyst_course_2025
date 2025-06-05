select 
    p.product_id,
    p.product_name,
    p.category,
    p.brand,
    sum(f.total_amount) as total_revenue,
    sum(f.profit) as total_profit,
    avg(f.margin_percent) as avg_margin_percent,
    sum(f.quantity) as total_quantity_sold,
    count(*) as total_sales
from {{ ref('facts_sales') }} f
join {{ ref('dim_products') }} p 
    on f.product_id = p.product_id
group by 
    p.product_id,
    p.product_name,
    p.category,
    p.brand
order by total_profit desc