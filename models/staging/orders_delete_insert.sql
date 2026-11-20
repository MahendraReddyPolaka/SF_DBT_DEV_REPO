{{ config(materialized="incremental",
         unique_key='id',
         incremental_strategy="delete+insert",
         
) }}

select * from {{source('raw_schema_dev','ordersdata')}} where id in (5,6,20)