with
    fonte_produtos as (
        select
        cast(ID as int) as pk_produto
        , cast(SUPPLIERID as int) as fk_fornecedor
        , cast(CATEGORYID as int) as fk_categoria
        , cast(PRODUCTNAME as string) as nm_produto
        , cast(QUANTITYPERUNIT as string) as preco_por_unidade
        , cast(UNITSONORDER as int) as unidade_por_pedido
        , cast(UNITSINSTOCK as int) as unidade_em_estoque
        , cast(REORDERLEVEL as int) as nivel_de_pedido
        , discontinued as eh_discontinuado
    from {{source('erp','products')}}
    )

select *
from fonte_produtos