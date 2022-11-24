WITH orders_users AS (
  SELECT user_id
  , COUNT(distinct order_id) as order_number
FROM {{ source('sql_server_dbo', 'orders') }}
group by 1
)

SELECT
  CASE
    WHEN order_number >= 3 then '3+'
    ELSE order_number::VARCHAR
  END AS order_number
  , COUNT (DISTINCT user_id) AS users
FROM orders_users
GROUP BY 1
ORDER BY 1;