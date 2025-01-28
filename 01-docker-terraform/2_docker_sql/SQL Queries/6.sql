SELECT 
    z.zone AS pickup_location,
    MAX(g.tip_amount) AS max_tip
FROM public.green_taxi_data g
JOIN public.taxi_zone_lookup z
ON g.pulocationid = z.locationid
WHERE z.zone IN ('Yorkville West', 'JFK Airport', 'East Harlem North', 'East Harlem South')
GROUP BY pickup_location
ORDER BY max_tip DESC
LIMIT 1;