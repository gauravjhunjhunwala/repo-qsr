select
    id as customer_id,
    first_name,
    last_name

from 
--raw.jaffle_shop.customers
{{ source('BRAZE', 'customers') }}

{% if target.name != 'prod' %}
LIMIT 5
{% endif %}

