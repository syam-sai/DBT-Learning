with mapping as (

    select *
    from {{ ref('stg_mapping') }}

),

salesforce as (

    select *
    from {{ ref('stg_salesforce') }}

),

erp as (

    select *
    from {{ ref('stg_erp') }}

)

select

    m.master_id,

    coalesce(s.account_name,'NA') as account_name,

    coalesce(s.city,'NA') as city,

    coalesce(s.country,'NA') as country,

    coalesce(e.customer_type,'NA') as customer_type,

    coalesce(e.customer_status,'NA') as customer_status

from mapping m

left join salesforce s
    on m.account_id = s.account_id

left join erp e
    on m.erp_id = e.erp_id