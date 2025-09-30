SELECT 
    date_date,
    camapaign_name,
    SUM(ads_cost) AS ads_cost,
    SUM(impression) AS impression,
    SUM(click) AS click
FROM {{ ref('int_campaigns') }}
GROUP BY date_date, camapaign_name
ORDER BY date_date DESC