WITH sessions_hour AS (
  SELECT
    HOUR(created_at) as created_hour
  , COUNT(distinct session_id) as unique_session_number
FROM {{ source('sql_server_dbo', 'events') }}
GROUP BY 1
)

SELECT
 AVG(unique_session_number) as AVG_SESSION
FROM sessions_hour

--

WITH sessions_hour AS (
  SELECT
    HOUR(created_at) as created_hour
  , COUNT(distinct session_id) as unique_session_number
FROM {{ source('sql_server_dbo', 'events') }}
GROUP BY 1
)

SELECT
 AVG(unique_session_number) as AVG_SESSION
FROM sessions_hour