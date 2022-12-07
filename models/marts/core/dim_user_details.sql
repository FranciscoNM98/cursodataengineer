WITH dim_users_details AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_users') }}
    ),

USERS_DETAILS AS (
    SELECT
         user_id
         , age
         , gender
         , civil_status
         , birthdate
         , work_status
         , current_work
         , salary
         , children
         , children_amount
         , vip_user

    FROM dim_users_details
    ),

SELECT * FROM USERS_DETAILS