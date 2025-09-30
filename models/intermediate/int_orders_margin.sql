SELECT orders_id,
    sales.date_date,
    revenue,
    quantity,
    purchase_cost,
    margin.margin
FROM  {{ ref('stg_raw__sales') }} AS sales
INNER JOIN {{ ref('int_sales_margin') }} AS margin
USING(products_id)
ORDER BY orders_id