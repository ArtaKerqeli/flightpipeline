
  
    
        create or replace table `flight_db`.`flights_dbt_bronze`.`bronze_weather`
      
      
  using delta
      
      
      
      
      
      
      
      as
      select *
from `flight_db`.`raw`.`weather`
  