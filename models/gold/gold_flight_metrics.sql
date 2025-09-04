select 
    f.flight_date,
    f.origin,
    f.dest as destination,
    f.airline,
    o.city as origin_city,
    d.city as destination_city,
    al.name as airline_name 
from {{ ref('silver_flights') }} f
join {{ ref('silver_airports') }} o on f.origin = o.iata
join {{ ref('silver_airports') }} d on f.dest = d.iata
join {{ ref('silver_airlines') }} al on f.airline = al.code   -- match codes


