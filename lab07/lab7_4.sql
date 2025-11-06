SELECT c.climb_name, gr.grade_str, tr.trad_climb_descent
FROM climbs c
INNER JOIN climb_grades gr
    ON c.grade_id=gr.grade_id
INNER JOIN trad_climbs tr
    ON c.climb_id=tr.climb_id;