select
    f.flight_id,
    f.airline,
    f.origin,
    f.dep_time,
    f.arr_time,
    f.arr_delay
from {{ ref('bronze_flights') }} as f

