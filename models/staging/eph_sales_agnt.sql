{{
    config(
        materialized='ephemeral'
    )
}}

with filter as 
(
    select
    *
    from
    {{ ref('sales_agent_incr') }}
    where sales_commision_pct < 0.2
)

select * from filter