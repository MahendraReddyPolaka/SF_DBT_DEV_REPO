{{ config(
    materialized='table') }}
    
WITH tb1 as(
    select
    id,
    user_id,
    order_date,
    status
    from {{source('raw_schema_dev','ordersdata')}})
select * from tb1