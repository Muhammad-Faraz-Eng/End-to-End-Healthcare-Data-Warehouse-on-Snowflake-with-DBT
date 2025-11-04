{{ 
    config(
        materialized='table',
        database='HEALTHCARE_DB',
        schema='MART'
    ) 
}}

select
    insurance_plan_id,
    plan_name,
    provider_name,
    coverage_percent
from {{ ref('stg_insurance_plans') }}
