select 
    supplier_id,
    supplier_name,
    region,
    rating,
    supplier_reg_date,
    supplier_phone,
    supplier_manager_name,
    current_timestamp as load_time
from {{ ref('seed_suppliers_from_excel') }}
where supplier_id is not null