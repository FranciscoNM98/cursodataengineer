WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'orders') }}
    ),

ORDERS AS (
    SELECT
        order_id
        , address_id
        , user_id
        , tracking_id
        , promo_id
        , created_at AS order_creation
        , estimated_delivery_at AS order_estimated_delivery
        , delivered_at AS order_delivery
        , status
        , shipping_service
        , shipping_cost AS shipping_cost_$
        , order_cost AS order_cost_$
        , order_total AS order_total_$
        , _fivetran_deleted
        , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM ORDERS