select 
    product_id,
    product_name,
    category,
    brand,
    purchase_price,
    supplier_id
from {{ ref('ods_products_unified') }}