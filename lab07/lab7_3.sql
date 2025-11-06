SELECT c.climb_name, cg.grade_str
FROM climbs c
INNER JOIN crags cr
    ON c.crag_id=cr.crag_id
INNER JOIN sport_climbs sp
    ON c.climb_id = sp.climb_id
INNER JOIN climb_grades cg
    ON c.grade_id=cg.grade_id
WHERE
    cr.crag_name='Slab City';