{{ config(materialized='table') }}

with source_data as (

    select 1 as id, 'NC' as state, '2020-03-01 00:01:00.000'::timestamp as updated_date
    union all
    select 2 as id, 'CT' as state, '2020-01-01 00:00:00.000'::timestamp as updated_date
    union all
    select 3 as id, 'VT' as state, '2020-01-01 00:00:00.000'::timestamp as updated_date

)

select *
from source_data