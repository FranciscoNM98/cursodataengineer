WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'order_items') }}
    ),

OBJETOS_PEDIDO AS (
    SELECT
        order_id as pedido_id
        , product_id as producto_id
        , quantity as cantidad
    FROM src_sql_server
    )

SELECT * FROM OBJETOS_PEDIDO