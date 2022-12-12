with 

products as  (

    select * from {{ ref('dim_products' )}}

),

products_details as (

    select * from {{ ref('dim_products_details') }}

),

products_and_products_details_joined as (

    select
        avg(products.inventory) as products_inventory_avg,
        avg(products.price_$) as products_price_$_avg,
        avg(products_details.price_type) as products_price_type_avg

    from products

    join products_details on products.product_id = products_details.product_id

)

select * from products_and_products_details_joined