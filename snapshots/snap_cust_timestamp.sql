{% snapshot  snap_cust_timestamp %}
{{
 config(
strategy='timestamp',
unique_key='id',
updated_at='load_time',
invalidate_hard_deletes=True
)
}}
-- macro named calculate_tax is used in this snapshot
select *, {{calculate_tax('spent')}}  as spent_percentage
from {{source('raw_schema_dev','customers')}}
{% endsnapshot %}
