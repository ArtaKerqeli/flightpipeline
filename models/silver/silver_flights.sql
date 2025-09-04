create or replace view `flight_db`.`raw`.`silver_flights` as
select
    f.flight_id,
    f.airline,
    f.origin,
    f.dest,
    f.arr_time
from `flight_db`.`raw`.`flights` f;

