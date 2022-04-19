{{
    config(
        materialized='incremental',
        transient= false,
        unique_key='sales_agent_id',
        incremental_strategy='delete+insert',
    )
}}

select
    *, current_timestamp() as sys_entry_time
from {{ ref('stg_sales_agent') }}