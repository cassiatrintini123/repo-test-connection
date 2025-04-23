with
    fonte_funcionarios as (
        select *
        from {{ source('erp', 'employees') }}
    )

    , renomeado as (
        select
            cast (id as int) as pk_funcionario
            , cast (reportsto as int) as fk_gerente
            , firstname || ' ' || lastname as nome_funcionario
            , cast (title as string) as cargo_funcionario
            , cast (birthdate as date) as dt_nascimento_funcionario
            , cast (hiredate as date) as dt_contratacao
            , cast (city as string) as cidade_funcionario
            , cast (region as string) as regiao_funcionario
            , cast (country as string) as pais_funcionario
        from fonte_funcionarios
    )

    select *
    from renomeado