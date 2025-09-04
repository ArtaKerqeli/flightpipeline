select
    airport_id,
    iata_code,
    city,
    state,
    country
from {{ ref('bronze_airports') }}

