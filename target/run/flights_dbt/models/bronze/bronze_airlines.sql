
  
  
  create or replace view `flight_db`.`raw`.`bronze_airlines`
  
  as (
    select * from `workspace`.`raw`.`airlines`
  )
