{{ config(materialized='table') }}

SELECT
    hc.CUSTOMER_KEY AS customer_id,
    COUNT(*) AS completed_orders_count
FROM dbt.sat_order sod
JOIN dbt.link_customer_order lco ON sod.order_pk = lco.order_pk
JOIN dbt.hub_customer hc ON lco.customer_pk = hc.customer_pk
WHERE sod.status = 'completed'
GROUP BY hc.CUSTOMER_KEY
ORDER BY completed_orders_count DESC