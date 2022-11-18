with
    src_sql_server as (select * from {{ source("sql_server_dbo", "order_items") }}),

    objetos_pedido as (
        select order_id as pedido_id, product_id as producto_id, quantity as cantidad
        from src_sql_server
    )

select *
from objetos_pedido
