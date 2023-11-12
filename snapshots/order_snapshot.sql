{% snapshot order_snapshot %}

{{
config(
		target_schema='dbt_schema',
		unique_key = 'O_ORDERKEY',
		strategy ='timestamp',
		updated_at='O_ORDERDATE'
	)
	
}}
select * from ORDERS

{% endsnapshot %}