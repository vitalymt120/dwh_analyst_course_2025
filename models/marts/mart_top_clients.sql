select 
    client_id,
    count(*) as total_orders,
    sum(total_amount) as total_spent,
    avg(total_amount) as avg_order_value,
    sum(quantity) as total_items_bought,
    max(sale_date) as last_order_date
from {{ ref('facts_sales') }}
group by client_id
order by total_spent desc
limit 10