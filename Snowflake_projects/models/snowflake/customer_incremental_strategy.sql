{{

	config(
	
		materialized='incremental',		
		unique_key='C_CUSTKEY',
		on_schema_change='append_new_columns'
	)
	
}}
select * from dbt_schema.customer_schema_change