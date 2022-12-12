with 

products as  (

    select * from {{ ref('dim_products' )}}

),

products_details as (

    select * from {{ ref('dim_products_details') }}

),

products_and_products_details_joined as (

    select
        products.product_id,
        products.name,
        products_details.price_type

    from products

    join products_details on products.product_id = products_details.product_id

)

select * from products_and_products_details_joined