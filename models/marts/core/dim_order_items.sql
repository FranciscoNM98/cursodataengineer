WITH stg_order_items AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_order_items') }}
    ),

ORDER_ITEMS AS (
    SELECT
        order_id
        , product_id
        , item_quantity
    FROM stg_order_items
    )

SELECT * FROM ORDER_ITEMS