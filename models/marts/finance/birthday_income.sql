with 

orders as  (

    select * from {{ ref('fct_orders' )}}

),

birthday_income as (

    select
        sum(order_cost_$) as birthday_order_cost_total_income,
        avg(order_cost_$) as birthday_order_cost_avg_income
    from orders
    where promo_id = 'Birthday'
)

select * from birthday_income