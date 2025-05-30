select 
    s.supplier_id,
    s.supplier_name,
    s.region,
    s.rating,
    sum(f.total_amount) as total_revenue,
    sum(f.profit) as total_profit,
    count(*) as total_orders
from {{ ref('facts_sales') }} f
join {{ ref('dim_suppliers') }} s 
    on f.supplier_id = s.supplier_id
group by 
    s.supplier_id,
    s.supplier_name,
    s.region,
    s.rating
order by total_revenue desc