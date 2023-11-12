
  
    

        create or replace transient table snowflake_dbt.dbt_schema.customer_model
         as
        (with customers as (

    select
        C_CUSTKEY,
        C_NAME,
        C_ADDRESS

    from dbt_schema.customer_base

)


select * from customers
        );
      
  