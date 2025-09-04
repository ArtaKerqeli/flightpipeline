
  
  
  create or replace view `flight_db`.`raw`.`bronze_airports`
  
  as (
    select
    airport_id,
    iata_code,
    city,
    state,
    country
from `flight_db`.`raw`.`airports`
  )
