WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'products') }}
    ),

PRODUCTOS AS (
    SELECT
         product_id AS producto_id
        , name AS nombre_producto
        , inventory AS inventario
        , price AS precio_producto_$
    FROM src_sql_server
    )

SELECT * FROM PRODUCTOS