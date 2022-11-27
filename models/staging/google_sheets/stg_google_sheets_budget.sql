WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('google_sheets', 'budget') }}
    ),

BUDGET AS (
    SELECT
        _row
        , product_id
        , quantity
        , month as date
        , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM BUDGET