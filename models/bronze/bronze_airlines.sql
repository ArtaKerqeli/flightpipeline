select * from {{ source('raw_flights', 'airlines') }}
