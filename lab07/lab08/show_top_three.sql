SELECT
    CONCAT(cb.climber_first_name,' ',cb.climber_last_name) AS equippers ,
    COUNT(cce.climb_id) AS routes_number
FROM climber_climbs_established cce
JOIN climbers cb ON cce.climber_id=cb.climber_id
GROUP BY cb.climber_id
ORDER BY routes_number DESC
LIMIT 3;

