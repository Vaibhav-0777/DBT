{{	config(
		materialized='view'
	)	
}}

select A.C_NAME model1_name,A.C_ADDRESS model1_address,B.* from {{ ref("customer_model") }} A INNER JOIN  {{ ref("customer_incremental") }} B ON A.C_CUSTKEY = B.C_CUSTKEY