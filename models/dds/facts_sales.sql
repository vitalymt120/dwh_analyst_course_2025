select 
    s.sale_id,
    s.client_id,
    s.product_id,
    s.storage_id,
    s.supplier_id,
    s.sale_date,
    s.quantity,
    s.price as sale_price,
    s.total_amount,
    p.purchase_price,
    -- Реальная прибыль: общая сумма продажи - закупочная цена * количество
    s.total_amount - (p.purchase_price * s.quantity) as profit,
    -- Маржинальность в процентах
    round(
        ((s.total_amount - (p.purchase_price * s.quantity)) / s.total_amount) * 100, 2
    ) as margin_percent
from {{ ref('ods_sales_cleaned') }} s
left join {{ ref('ods_products_unified') }} p 
    on s.product_id = p.product_id