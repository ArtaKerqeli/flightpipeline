
    select
      count(*) as failures,
      count(*) != 0 as should_warn,
      count(*) != 0 as should_error
    from (
      
    
  
    
    



select flight_id
from `flight_db`.`raw`.`my_first_dbt_model`
where flight_id is null



  
  
      
    ) dbt_internal_test