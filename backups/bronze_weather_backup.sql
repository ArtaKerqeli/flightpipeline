{{ config(materialized='table') }}

select *
from {{ source('raw_flights','weather') }}

