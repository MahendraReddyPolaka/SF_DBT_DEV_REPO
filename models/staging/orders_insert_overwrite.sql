{{ config(materialized="incremental",
         incremental_strategy="insert_overwrite",
         
) }}

select * from {{source('raw_schema_dev','ordersdata')}} limit 10