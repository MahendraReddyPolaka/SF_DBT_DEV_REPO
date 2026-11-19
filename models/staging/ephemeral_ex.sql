{{ config(
    materialized='ephemeral') }}

 select 
 try_cast(id as int) as id,
 first_name,
 last_name 
 from {{source('raw_schema_dev','customerdata')}}