select ID, 
       FULL_NAME, 
       EMAIL, 
       PHONE, 
      -- SPENT, not required as are applying macro on it
       LOAD_TIME,
{{datatyp_change('spent')}} as spent,  -- alias not given then also error:Missing column specification
{{calculate_tax('spent')}}  as spent_percentage
from {{source('raw_schema_dev','customers')}}