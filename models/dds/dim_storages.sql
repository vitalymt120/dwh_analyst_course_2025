select distinct
    storage_id,
    case 
        when storage_id = 'sto_001' then 'Санкт-Петербург'
        when storage_id = 'sto_002' then 'Москва'
        when storage_id = 'sto_003' then 'Екатеринбург'
        when storage_id = 'sto_004' then 'Новосибирск'
        else 'Склад_' || storage_id
    end as storage_name,
    current_timestamp as created_at
from {{ ref('ods_sales_cleaned') }}
where storage_id is not null