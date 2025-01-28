SELECT 
    COUNT(*) FILTER (WHERE trip_distance <= 1) AS up_to_1_mile,
    COUNT(*) FILTER (WHERE trip_distance > 1 AND trip_distance <= 3) AS between_1_and_3_miles,
    COUNT(*) FILTER (WHERE trip_distance > 3 AND trip_distance <= 7) AS between_3_and_7_miles,
    COUNT(*) FILTER (WHERE trip_distance > 7 AND trip_distance <= 10) AS between_7_and_10_miles,
    COUNT(*) FILTER (WHERE trip_distance > 10) AS over_10_miles
FROM public.green_taxi_data
WHERE lpep_pickup_datetime >= '2019-10-01' 
  AND lpep_pickup_datetime < '2019-11-01';