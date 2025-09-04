
  
  
  create or replace view `flight_db`.`raw`.`silver_airlines`
  
  as (
    select *
from `flight_db`.`raw`.`bronze_airlines`
  )
