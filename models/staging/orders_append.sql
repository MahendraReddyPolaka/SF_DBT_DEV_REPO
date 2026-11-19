{{ config(
    materialized="incremental",
    incremental_strategy="append",
) }}

select * from {{source('raw_schema_dev','ordersdata')}} limit 10