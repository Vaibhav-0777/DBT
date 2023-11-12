
    
    

select
    C_CUSTKEY as unique_field,
    count(*) as n_records

from snowflake_dbt.dbt_schema.customer_model
where C_CUSTKEY is not null
group by C_CUSTKEY
having count(*) > 1


