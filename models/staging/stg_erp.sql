select
    erp_id,
    customer_type,
    customer_status
from {{ source('raw','ERP_CUSTOMERS') }}