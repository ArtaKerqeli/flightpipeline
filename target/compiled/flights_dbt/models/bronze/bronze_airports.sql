-- models/bronze/bronze_airports.sql
select
    airport_id,
    iata_code,
    city,
    state,
    country
from `flight_db`.`raw`.`airports`