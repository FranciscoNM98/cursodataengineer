WITH stg_users AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_users') }}
    ),

USERS AS (
    SELECT
         user_id
         , address_id
         , first_name
         , last_name
         , email
         , phone_number
         , date_creation
         , date_update
    FROM stg_users
    )

SELECT * FROM USERS