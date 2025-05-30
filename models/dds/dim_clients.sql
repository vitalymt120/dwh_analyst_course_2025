select distinct
    client_id,
    'Client_' || client_id as client_name,
    current_timestamp as created_at
from {{ ref('ods_sales_cleaned') }}
where client_id is not null