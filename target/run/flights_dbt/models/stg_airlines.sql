
  
    
        create or replace table `flight_db`.`raw`.`stg_airlines`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select
  1            as airline_id,
  'Test Air'   as airline_name
  