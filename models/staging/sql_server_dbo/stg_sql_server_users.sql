WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo','users') }}
    ),

USUARIOS AS (
    SELECT
         created_at AS creacion_usuario
        , email AS correo_electronico
        , last_name AS apellido
        , first_name AS nombre
        , updated_at AS ultima_actualizacion
        , user_id AS usuario_id
        , phone_number AS num_tlfn
    FROM src_sql_server
    )

SELECT * FROM USUARIOS