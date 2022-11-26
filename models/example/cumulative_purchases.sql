{{ config(materialized="table") }}

select
    o_orderdate,
    sum(total_purchases) over (
        order by o_orderdate rows between unbounded preceding and current row
    ) as cumulative_purchases
from
    (
        select o_orderdate, sum(o_totalprice) as total_purchases
        from "SNOWFLAKE_SAMPLE_DATA"."TPCH_SF1"."ORDERS" o
        group by o_orderdate
    )
