with sls_agnt as 
(
    select
    id as sales_agent_id,
    name as sales_agent_nm,
    city,
    sales_commision_pct
    from {{ ref('eph_sales_agnt') }}
)

select * from sls_agnt