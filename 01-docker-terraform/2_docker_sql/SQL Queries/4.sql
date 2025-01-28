SELECT DATE(lpep_pickup_datetime) AS pickup_date, trip_distance
FROM public.green_taxi_data
WHERE lpep_pickup_datetime >= '2019-10-01' 
  AND lpep_pickup_datetime < '2019-11-01'
ORDER BY trip_distance DESC
LIMIT 1;