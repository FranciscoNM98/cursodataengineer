with 

users_details as  (

    select * from {{ ref('dim_users_details' )}}

),

users_stats as (

    select
        avg(age) as age_avg,
        avg(children_amount) as children_avg
    from users_details
)

select * from users_stats