with filter as 
(
    select
    *
    from
    {{ ref('sales_agent_incr') }}
    where sales_commision_pct < 0.2
),


sls_agnt as 
(
    select
    id as sales_agent_id,
    name as sales_agent_nm,
    city,
    sales_commision_pct
    from filter
)

select * from sls_agnt