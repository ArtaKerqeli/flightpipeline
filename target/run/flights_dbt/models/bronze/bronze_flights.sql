
  
  
  create or replace view `flight_db`.`raw`.`bronze_flights`
  
  as (
    -- models/bronze/bronze_flights.sql
select
    flight_id,
    airline,
    origin,
    destination,
    dep_delay,
    arr_delay,
    arr_time
from `flight_db`.`raw`.`flights`
  )
