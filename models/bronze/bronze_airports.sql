select * from {{ source('raw_flights', 'airports') }}
