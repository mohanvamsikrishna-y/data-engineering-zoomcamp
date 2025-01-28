SELECT 
        z.zone AS pickup_location,
        SUM(g.total_amount) AS total_revenue
    FROM public.green_taxi_data g
    JOIN public.taxi_zone_lookup z
    ON g.pulocationid = z.locationid
    WHERE DATE(g.lpep_pickup_datetime) = '2019-10-18'
    GROUP BY pickup_location
    HAVING SUM(g.total_amount) > 13000
    ORDER BY total_revenue DESC;