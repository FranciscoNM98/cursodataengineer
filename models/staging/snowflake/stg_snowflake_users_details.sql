{{
    config(
        materialized='table',
    )
}}

with snowflake as (

    select * from {{ source('snowflake', 'users_details') }}

),

USER_DETAILS as (

    select
        user_id,
        age,
        gender,
        civil_status,
        birthdate,
        work_status,
        current_work,
        salary,
        children,
        children_amount,
        vip_user

    from snowflake

)

SELECT * FROM USER_DETAILS