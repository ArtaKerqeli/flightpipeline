
  
  
  create or replace view `flight_db`.`raw`.`silver_airports`
  
  as (
    select *
from `flight_db`.`raw`.`bronze_airports`
  )
