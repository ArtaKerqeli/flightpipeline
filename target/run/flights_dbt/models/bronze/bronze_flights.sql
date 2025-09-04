
  
  
  create or replace view `flight_db`.`raw`.`bronze_flights`
  
  as (
    select * from `workspace`.`raw`.`flights`
  )
