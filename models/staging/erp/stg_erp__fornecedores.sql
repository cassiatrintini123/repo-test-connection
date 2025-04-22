with
    fonte_fornecedores as (
        select 
            cast (ID as int) as pk_fornecedor
            , cast (COMPANYNAME as string) as nome_fornecedor
            , cast (CITY as string) as cidade_fornecedor
            , cast (COUNTRY as string) as pais_fornecedor
        from {{ source('erp', 'suppliers') }}
    )

    select *
    from fonte_fornecedores