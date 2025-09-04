SELECT
    flight_id,
    origin,
    destination AS dest,  -- or the correct column name
    airline,
    arr_time
FROM {{ source('raw_flights', 'flights') }}

