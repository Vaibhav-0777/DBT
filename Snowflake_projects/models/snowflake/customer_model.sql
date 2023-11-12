with customers as (

    select
        C_CUSTKEY,
        C_NAME,
        C_ADDRESS

    from dbt_schema.customer_base

)


select * from customers