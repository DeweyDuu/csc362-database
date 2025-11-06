SELECT
    c.climb_name, cr.crag_name
FROM
    climbs c
INNER JOIN crags cr
    ON c.crag_id=cr.crag_id;