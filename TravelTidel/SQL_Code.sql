-- How many customers (unique user_id's) are in the customer segmentation cohort data set?
-- Cohort >= 2023-01-04  and session_start > 7 

WITH this AS (
SELECT DISTINCT u.user_id, COUNT(*)
FROM users AS u
LEFT JOIN sessions AS s
  USING (user_id)
WHERE session_start > '2023-01-04'
GROUP BY 1
HAVING COUNT(*) > 7
)

SELECT COUNT(*)
FROM this
 

-- Using the Haversine formula, calculate the distance between LAX and JFK airports in kilometers. 
-- What is the distance, rounded to the nearest hundredth?

WITH from_lax_to_jfk AS (
    SELECT DISTINCT
        u.home_airport_lat AS lax_lat,
        u.home_airport_lon AS lax_lon,
        f.destination_airport_lat AS jfk_lat,
        f.destination_airport_lon AS jfk_lon
    FROM users AS u
    JOIN sessions AS s USING (user_id)
    JOIN flights AS f USING (trip_id)
    WHERE f.origin_airport = 'LAX' AND f.destination_airport = 'JFK'
)

SELECT 
   6371 * 
        acos(
            sin(RADIANS(lax_lat)) * sin(RADIANS(jfk_lat)) +
            cos(RADIANS(lax_lat)) * cos(RADIANS(jfk_lat)) * cos(RADIANS(jfk_lon - lax_lon)))
       	 AS distance_in_km
FROM from_lax_to_jfk;
