with
    renomeado as (
        select
            orderid::string || '-' || productid::string as pk_pedido_item
	        , cast (ORDERID as int) as fk_pedido
	        , cast (PRODUCTID as int) as fk_produto
            , cast (DISCOUNT as numeric(18,2)) as desconto_perc
	        , cast (UNITPRICE as numeric(18,2)) as preco_da_unidade
	        , cast (QUANTITY as int) as quantidade
        from {{ source('erp','order_details')}}
    )

    select *
    from renomeado