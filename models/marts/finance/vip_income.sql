with 

orders as  (

    select * from {{ ref('fct_orders' )}}

),

vip_income as (

    select
        sum(order_cost_$) as vip_order_cost_total_income,
        avg(order_cost_$) as vip_order_cost_avg_income
    from orders
    where promo_id = 'VIP'
)

select * from vip_income