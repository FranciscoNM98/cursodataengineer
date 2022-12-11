WITH stg_users_details AS (
    SELECT * 
    FROM {{ ref('stg_snowflake_users_details') }}
    ),

USERS_DETAILS AS (
    SELECT
        user_id,
        age,
        gender,
        civil_status,
        birthdate,
        work_status,
        salary,
        children,
        children_amount,
        vip_user
    FROM stg_users_details
    )

SELECT * FROM USERS_DETAILS