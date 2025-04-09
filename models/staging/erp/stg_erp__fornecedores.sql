with
    fonte_fornecedores as (
        select
            cast(ID as int) as pk_fornecedor
            , cast(city as varchar) as cidade_fornecedor
            , cast(country as varchar) as pais_fornecedor
        from {{ source('erp', 'suppliers') }}
    )

    select *
    from fonte_fornecedores
