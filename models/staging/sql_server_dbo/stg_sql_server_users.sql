WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo','users') }}
    ),

USERS AS (
    SELECT
         user_id
         , address_id
         , first_name
         , last_name
         , email
         , phone_number
         , created_at AS date_creation
         , updated_at AS date_update
         , _fivetran_deleted
         , _fivetran_synced
    FROM src_sql_server
    )

SELECT * FROM USERS