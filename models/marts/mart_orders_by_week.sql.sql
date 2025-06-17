{{ config(materialized='table') }}

SELECT
    DATE_TRUNC('week', order_date) AS week_start,
    COUNT(*) AS total_orders
FROM dbt.sat_order
GROUP BY 1
ORDER BY 1