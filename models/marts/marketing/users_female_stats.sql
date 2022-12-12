with 

users_details as  (

    select * from {{ ref('dim_users_details' )}}

),

users_female_stats as (

    select
        count(gender) as female_count,
        avg(age) as female_age_avg,
        avg(children_amount) as female_children_avg
    from users_details
    where gender = 'Female'

)

select * from users_female_stats