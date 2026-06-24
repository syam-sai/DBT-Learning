select
    account_id,
    account_name,
    city,
    country
from {{ source('raw','SALESFORCE_ACCOUNTS') }}