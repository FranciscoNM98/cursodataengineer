WITH src_sql_server AS (
    SELECT * 
    FROM {{ source('sql_server_dbo', 'orders') }}
    ),

PEDIDOS AS (
    SELECT
          shipping_service AS servicio_envio
        , order_total AS coste_total_$
        , promo_id
        , tracking_id AS seguimiento_id
        , estimated_delivery_at AS fecha_estimada_entrega
        , delivered_at AS fecha_entrega
        , order_cost AS coste_pedido_$
        , shipping_cost AS coste_envio_$
        , address_id AS direccion_id
        , status AS estado
        , created_at AS fecha_creacion
        , order_id AS pedido_id
        , user_id AS usuario_id
    FROM src_sql_server
    )

SELECT * FROM PEDIDOS