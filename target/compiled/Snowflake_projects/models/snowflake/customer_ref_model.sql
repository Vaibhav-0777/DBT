

select A.C_NAME model1_name,A.C_ADDRESS model1_address,B.* from snowflake_dbt.dbt_schema.customer_model A INNER JOIN  snowflake_dbt.dbt_schema.customer_incremental B ON A.C_CUSTKEY = B.C_CUSTKEY