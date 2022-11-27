WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'order_items') }}
    ),

ORDER_ITEMS AS (
    SELECT
        order_id
        , product_id
        , quantity as item_quantity
        , _fivetran_deleted
        , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM ORDER_ITEMS