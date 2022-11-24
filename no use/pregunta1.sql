WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'users') }}
    ),

PREGUNTA_1 AS (
  SELECT COUNT
        (distinct user_id)
    FROM src_sql_server
    )

SELECT * FROM PREGUNTA_1