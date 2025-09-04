
  
  
  create or replace view `flight_db`.`raw`.`bronze_airports`
  
  as (
    select * from `workspace`.`raw`.`airports`
  )
