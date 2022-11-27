WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'events') }}
    ),

EVENTS AS (
    SELECT
        event_id
        , user_id
        , session_id
        , order_id
        , product_id
        , created_at as date_event
        , event_type
        , page_url
        , _fivetran_deleted
        , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM EVENTS