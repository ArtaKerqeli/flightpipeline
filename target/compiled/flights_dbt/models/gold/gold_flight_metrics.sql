
with f as (select * from `flight_db`.`raw`.`silver_flights`),
al as (select * from `flight_db`.`raw`.`silver_airlines`),
ap as (select * from `flight_db`.`raw`.`silver_airports`)

select
  f.flight_date,
  f.airline,
  al.airline_name,
  f.origin,
  o.airport_name as origin_airport_name,
  f.dest,
  d.airport_name as dest_airport_name,
  count(*)                          as flights,
  avg(coalesce(f.dep_delay, 0))      as avg_dep_delay,
  avg(coalesce(f.arr_delay, 0))      as avg_arr_delay,
  avg(case when coalesce(f.arr_delay, 0) <= 0 then 1.0 else 0.0 end) as on_time_rate
from f
left join al on f.airline = al.airline_code
left join ap o on f.origin = o.iata
left join ap d on f.dest   = d.iata
group by 1,2,3,4,5,6,7;