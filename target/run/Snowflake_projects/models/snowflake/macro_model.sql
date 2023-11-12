
  
    

        create or replace transient table snowflake_dbt.dbt_schema.macro_model
         as
        (select * from (
   select * from dbt_schema.customer_base where  C_ADDRESS = 'vmMzp2o6Q0DOetTCVk'
)
        );
      
  