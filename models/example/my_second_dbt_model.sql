{{ config(materialized='view') }}

-- Use the `ref` function to select from other models
-- Test again

select *
from {{ ref('my_first_dbt_model') }}
where id = 1
