SELECT c.climb_name, gr.grade_str, c.climb_len_ft,cr.crag_name
FROM climbs c
INNER JOIN climb_grades gr
    ON c.grade_id=gr.grade_id

INNER JOIN crags cr
    ON c.crag_id=cr.crag_id

WHERE
    gr.grade_str='5.9';