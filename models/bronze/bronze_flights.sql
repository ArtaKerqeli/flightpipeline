-- models/bronze/bronze_flights.sql
select
    flight_id,
    airline,
    origin,
    destination,
    dep_delay,
    arr_delay,
    arr_time
from {{ source('raw', 'flights') }}

