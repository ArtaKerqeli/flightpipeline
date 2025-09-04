
  
  
  create or replace view `flight_db`.`raw`.`silver_flights`
  
  as (
    select *
from `flight_db`.`raw`.`bronze_flights`
  )
