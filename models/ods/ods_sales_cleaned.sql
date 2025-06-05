select 
    sale_id,
    client_id,
    product_id,
    storage_id,
    supplier_id,
    sale_date,
    quantity,
    price,
    total_amount,
    current_timestamp as load_time
from {{ ref('seed_sales_from_amoCRM') }}
where sale_id is not null
    and product_id is not null
    and total_amount > 0