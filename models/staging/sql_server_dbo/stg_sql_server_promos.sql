WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'promos') }}
    ),

PROMOS AS (
    SELECT
        promo_id
        , discount as discount_$
        , status
        , _fivetran_deleted
        , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM PROMOS