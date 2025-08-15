
-- 1. Total revenue per route
SELECT a.city AS origin_city, b.city AS destination_city, SUM(t.price) AS total_revenue
FROM tickets t
JOIN flights f ON t.flight_id = f.flight_id
JOIN airports a ON f.origin_id = a.airport_id
JOIN airports b ON f.destination_id = b.airport_id
GROUP BY origin_city, destination_city
ORDER BY total_revenue DESC;

-- 2. On-time performance
SELECT status, COUNT(*) AS flight_count
FROM flights
GROUP BY status;

-- 3. Top 5 passengers by loyalty points
SELECT first_name, last_name, loyalty_points
FROM passengers
ORDER BY loyalty_points DESC
LIMIT 5;
