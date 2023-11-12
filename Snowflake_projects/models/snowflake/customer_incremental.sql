{{

	config(
	
		materialized='incremental',
		
		unique_key='C_CUSTKEY'
	)
	
}}
select * from dbt_schema.customer_base