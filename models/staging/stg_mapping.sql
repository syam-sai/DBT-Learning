select
    master_id,
    account_id,
    erp_id
from {{ source('raw','MASTER_MAPPING') }}