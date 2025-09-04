
    
    

select
    flight_id as unique_field,
    count(*) as n_records

from `flight_db`.`raw`.`my_second_dbt_model`
where flight_id is not null
group by flight_id
having count(*) > 1


