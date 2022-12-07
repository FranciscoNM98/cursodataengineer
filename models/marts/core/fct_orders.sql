WITH stg_orders AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_orders') }}
    ),

ORDERS AS (
    SELECT
        order_id
        , address_id
        , user_id
        , tracking_id
        , promo_id
        , order_creation
        , order_estimated_delivery
        , order_delivery
        , DATEDIFF (day, order_creation, order_delivery) as days_to_deliver
        , status
        , shipping_service
        , shipping_cost_$
        , order_cost_$
        , order_total_$
    FROM stg_orders
    )

SELECT * FROM ORDERS