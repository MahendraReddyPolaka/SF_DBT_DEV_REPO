{% macro datatyp_change(col_name) %}

   cast ({{col_name}} as float)

{% endmacro %}
