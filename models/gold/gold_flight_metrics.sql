-- models/gold/gold_flight_metrics.sql

select
  f.airline,
  al.airline as airline_name,
  f.origin,
  o.city as origin_airport_name,
  f.destination,
  d.city as destination_airport_name,
  count(*) as flights,
  avg(coalesce(f.dep_delay, 0)) as avg_dep_delay,
  avg(coalesce(f.arr_delay, 0)) as avg_arr_delay,
  avg(case when coalesce(f.arr_delay, 0) <= 0 then 1.0 else 0.0 end) as on_time_rate
from raw.silver_flights f
left join raw.silver_airlines al on f.airline = al.airline
left join raw.silver_airports o on f.origin = o.iata_code
left join raw.silver_airports d on f.destination = d.iata_code
group by 1,2,3,4,5,6;

