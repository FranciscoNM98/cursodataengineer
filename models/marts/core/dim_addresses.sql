WITH stg_addresses AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_addresses') }}
    ),

ADDRESSES AS (
    SELECT
        address_id
        , country
        , state
        , zipcode
        , address
    FROM stg_addresses
    )

SELECT * FROM ADDRESSES