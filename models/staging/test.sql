{% set event_types = ["checkout", "package_shipped", "add_to_cart","page_view"] %}
WITH src_sql_server.yml AS (
    SELECT * 
    FROM {{ source('sql_server_dbo','events') }}
    ),

test AS (
    SELECT
        user_id,
        {%- for event_type in event_types   %}
        sum(case when event_type = '{{event_type}}' then 1 end) as {{event_type}}_amount
        {%- if not loop.last %},{% endif -%}
        {% endfor %}
    FROM stg_events
    GROUP BY 1
    )

SELECT * FROM test