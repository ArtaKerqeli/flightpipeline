select
    airline
from {{ ref('bronze_airlines') }}

