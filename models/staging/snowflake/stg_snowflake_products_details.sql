{{
    config(
        materialized='table',
    )
}}

with snowflake as (

    select * from {{ source('snowflake', 'products_details') }}

),

PRODUCTS_DETAILS as (

    select
        product_id,
        price_type

    from snowflake

)

select * from PRODUCTS_DETAILS