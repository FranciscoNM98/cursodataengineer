WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'products') }}
    ),

PRODUCTS AS (
    SELECT
         product_id
         , name
         , inventory
         , price AS price_$
         , _fivetran_deleted
         , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM PRODUCTS