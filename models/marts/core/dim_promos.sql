WITH stg_promos AS (
    SELECT * 
    FROM {{ ref('stg_sql_server_promos') }}
    ),

PROMOS AS (
    SELECT
        promo_id
        , discount_$
        , status
    FROM stg_promos
    )

SELECT * FROM PROMOS

UNION ALL
    SELECT
        'Birthday' as promo_id,
        15  as discount,
        'active' as status

UNION ALL
    SELECT
        'VIP' as promo_id,
        5 as discount,
        'active' as status