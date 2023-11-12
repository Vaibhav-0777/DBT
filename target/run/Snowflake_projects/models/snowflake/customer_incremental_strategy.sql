-- back compat for old kwarg name
  
  begin;
    
        
            
            
        
    

    

    merge into snowflake_dbt.dbt_schema.customer_incremental_strategy as DBT_INTERNAL_DEST
        using snowflake_dbt.dbt_schema.customer_incremental_strategy__dbt_tmp as DBT_INTERNAL_SOURCE
        on (
                DBT_INTERNAL_SOURCE.C_CUSTKEY = DBT_INTERNAL_DEST.C_CUSTKEY
            )

    
    when matched then update set
        "C_CUSTKEY" = DBT_INTERNAL_SOURCE."C_CUSTKEY","C_NAME" = DBT_INTERNAL_SOURCE."C_NAME","C_ADDRESS" = DBT_INTERNAL_SOURCE."C_ADDRESS","C_NATIONKEY" = DBT_INTERNAL_SOURCE."C_NATIONKEY","C_PHONE" = DBT_INTERNAL_SOURCE."C_PHONE","C_ACCTBAL" = DBT_INTERNAL_SOURCE."C_ACCTBAL","C_MKTSEGMENT" = DBT_INTERNAL_SOURCE."C_MKTSEGMENT","C_COMMENT" = DBT_INTERNAL_SOURCE."C_COMMENT"
    

    when not matched then insert
        ("C_CUSTKEY", "C_NAME", "C_ADDRESS", "C_NATIONKEY", "C_PHONE", "C_ACCTBAL", "C_MKTSEGMENT", "C_COMMENT")
    values
        ("C_CUSTKEY", "C_NAME", "C_ADDRESS", "C_NATIONKEY", "C_PHONE", "C_ACCTBAL", "C_MKTSEGMENT", "C_COMMENT")

;
    commit;