
  
  
  create or replace view `flight_db`.`raw`.`bronze_flights`
  
  as (
    SELECT
    flight_id,
    origin,
    destination AS dest,  -- or the correct column name
    airline,
    arr_time
FROM `flight_db`.`raw`.`flights`
  )
