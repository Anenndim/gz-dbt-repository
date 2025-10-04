SELECT
    s.date_date,
    p.products_id,
    ROUND(s.quantity * p.purchase_price, 2) AS purchase_cost,
    ROUND(s.revenue - (s.quantity * p.purchase_price), 2) AS margin,
    {{ margin_percent('s.revenue', 's.quantity * p.purchase_price') }} AS margin_ratio
FROM {{ ref('stg_raw__sales')}} AS s
INNER JOIN {{ ref('stg_raw__product')}} AS p
    ON s.products_id = p.products_id

