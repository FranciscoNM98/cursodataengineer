WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'addresses') }}
    ),

ADDRESSES AS (
    SELECT
        address_id
        , country
        , state
        , zipcode
        , address
        , _fivetran_deleted
        , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM ADDRESSES