with 

orders as  (

    select * from {{ ref('fct_orders' )}}

),

orders_income as (

    select
        sum(shipping_cost_$) as shipping_cost_total_income,
        avg(shipping_cost_$) as shipping_cost_avg_income,
        sum(order_cost_$) as order_cost_total_income,
        avg(order_cost_$) as order_cost_avg_income,
        sum(order_total_$) as order_total_total_income,
        avg(order_total_$) as order_total_avg_income

    from orders

)

select * from orders_income