{{ config(
    materialized="incremental",
    incremental_strategy="append",
    pre_hook = "TRUNCATE TABLE {{ this }}",
    post_hook = "Delete from {{ ref('orders')}} where id = 7"
)
 }}

select * from {{source('raw_schema_dev','ordersdata')}} limit 10