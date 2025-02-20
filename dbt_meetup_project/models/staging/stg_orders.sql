WITH sales AS (
    SELECT * FROM {{ source("dbt_meetup_project", "orders")}}
)

select
    sales_key,
    ordered_at,
    order_date,
    ship_date,
    product_key,
    customer_key,
    sales_order_number,
    sales_order_line_number,
    quantity_total,
    quantity_average,
    price_total,
    price_average,
    discount_amount_total,
    discount_amount_average,
    product_cost_total,
    product_cost_average,
    revenue_total,
    revenue_average
from sales