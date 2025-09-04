select
    flight_id,
    airline,
    origin,
    destination,
    dep_delay,
    arr_delay,
    arr_time
from {{ ref('my_first_dbt_model') }}

