{% snapshot  snap_cust_timestamp %}
{{
 config(
strategy='timestamp',
unique_key='id',
updated_at='load_time',
invalidate_hard_deletes=True
)
}}
select * 
from {{source('raw_schema_dev','customers')}}
{% endsnapshot %}
