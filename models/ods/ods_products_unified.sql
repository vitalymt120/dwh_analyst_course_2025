select 
    product_id,
    product_name,
    category,
    brand,
    price as purchase_price,
    supplier as supplier_id,
    current_timestamp as load_time
from {{ ref('seed_products_from_1C') }}
where product_id is not null