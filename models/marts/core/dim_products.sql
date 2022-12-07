WITH stg_products AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_products') }}
    ),

PRODUCTS AS (
    SELECT
         product_id
         , name
         , inventory
         , price_$
    FROM stg_products
    )

SELECT * FROM PRODUCTS