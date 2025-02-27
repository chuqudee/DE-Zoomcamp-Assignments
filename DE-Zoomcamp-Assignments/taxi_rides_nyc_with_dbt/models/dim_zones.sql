{{
    config(
        materialized='table'
    )
}}

select *
from {{ source('staging', 'zones') }}
where borough != 'Unknown'
