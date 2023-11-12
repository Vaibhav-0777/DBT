
  
    

        create or replace transient table snowflake_dbt.dbt_schema.vars_model
         as
        (select * from customer_base
        );
      
  