SELECT DISTINCT cb.climber_first_name, cb.climber_last_name
FROM climbers cb
INNER JOIN climber_climbs_established cce
    ON cce.climber_id=cb.climber_id
INNER JOIN climbs c
    ON c.climb_id=cce.climb_id
INNER JOIN crags cr
    ON cr.crag_id=c.crag_id
INNER JOIN regions r
    ON r.region_id=cr.region_id
WHERE r.region_name='Miller Fork';