select
    airport_id,
    iata_code,
    city,
    state,
    country
from {{ source('raw_flights', 'airports') }}

