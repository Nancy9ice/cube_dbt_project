WITH customers AS (
    SELECT * FROM {{ source("dbt_meetup_project", "customer")}}
)

select
    customer_key,
    name,
    birth_date,
    marital_status,
    gender,
    yearly_income,
    number_children,
    occupation,
    house_owner,
    cars_owned,
    phone_number,
    date_first_purchase
from customers