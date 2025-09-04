
  
  
  create or replace view `flight_db`.`raw`.`bronze_airlines`
  
  as (
    select
    airline,
    name,
    country
from flight_db.raw.airlines
  )
