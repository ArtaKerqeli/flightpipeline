
  
  
  create or replace view `flight_db`.`raw`.`my_first_dbt_model`
  
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
