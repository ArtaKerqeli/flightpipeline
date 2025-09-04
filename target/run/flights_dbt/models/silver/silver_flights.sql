
  
  
  create or replace view `flight_db`.`raw`.`silver_flights`
  
  as (
    select
    flight_id,
    airline,
    origin,
    destination,
    dep_delay,
    arr_delay,
    arr_time
from flight_db.raw.flights
  )
