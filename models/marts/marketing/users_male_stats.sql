with 

users_details as  (

    select * from {{ ref('dim_users_details' )}}

),

users_male_stats as (

    select
        count(gender) as male_count,
        avg(age) as male_age_avg,
        avg(children_amount) as male_children_avg
    from users_details
    where gender = 'Male'

)

select * from users_male_stats