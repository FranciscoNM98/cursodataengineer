WITH stg_products_details AS (
    SELECT * 
    FROM {{ ref('stg_snowflake_products_details') }}
    ),

PRODUCTS_DETAILS AS (
    SELECT
        product_id
        ,price_type
    FROM stg_products_details
    )

SELECT * FROM PRODUCTS_DETAILS