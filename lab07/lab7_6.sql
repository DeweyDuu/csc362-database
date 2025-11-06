SELECT DISTINCT gr.grade_str
FROM climb_grades gr
INNER JOIN climbs c
    ON c.grade_id=gr.grade_id
INNER JOIN crags cr
    ON cr.crag_id=c.crag_id
INNER JOIN regions r
    ON r.region_id=cr.region_id
INNER JOIN owners o
    ON o.owner_id=r.owner_id
WHERE
    o.owner_name='John and Elizabeth Muir';