select 
    supplier_id,
    supplier_name,
    region,
    rating,
    supplier_reg_date,
    supplier_phone
from {{ ref('ods_suppliers_merged') }}