{{ config(materialized='view') }}

-- Bronze layer: just expose the raw airlines table
SELECT *
FROM flight_db.raw.airlines

