{% snapshot snap_orders_check %}
{# Jinja comment; dbt ignores the enclosed content - inside {{ config - it will throw err}}#}	
{{
config(
target_schema='snapshots_schema',
strategy='check',
unique_key='id',
check_cols=['user_id','order_date', 'status']
)
 }}
 -- comment
 /* Fetch order records from source table */
select * from {{ source('raw_schema_dev', 'ordersdata') }} limit 10
{% endsnapshot %}