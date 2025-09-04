-- models/bronze/bronze_flights.sql
with source as (
    select *
    from raw.flights
)

select
    id,
    flight_number,
    origin,
    destination,
    departure_time,
    arrival_time
from source
where id is not null

