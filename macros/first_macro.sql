{% macro first_macro() %}
   select * from dbt_schema.customer_base where  C_ADDRESS = 'vmMzp2o6Q0DOetTCVk'
{% endmacro %}