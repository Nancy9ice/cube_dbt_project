WITH products AS (
    SELECT * FROM {{ source("dbt_meetup_project", "products")}}
)

select
    product_key,
    product_name,
    product_subcategory,
    product_category,
    "StandardCost",
    "Color",
    "SafetyStockLevel",
    "ListPrice",
    "Size",
    "SizeRange",
    "Weight",
    "DaysToManufacture",
    "ProductLine",
    "DealerPrice",
    "Class",
    "ModelName",
    "Description",
    "Status",
    sell_start_date,
    sell_end_date
FROM products