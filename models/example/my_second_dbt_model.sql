{{ config(materialized='view') }}

-- Use the `ref` function to select from other models
-- Test

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
