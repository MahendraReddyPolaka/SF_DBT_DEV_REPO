{{ config(
materialized="incremental",
unique_key ='id',
incremental_strategy= "merge"
) }}
select * from {{source('raw_schema_dev','ordersdata')}}  limit 15