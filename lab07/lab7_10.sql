SELECT
    gr.grade_str,
    GROUP_CONCAT(c.climb_name, ',') AS `Route Names`
FROM 
    climb_grades gr
INNER JOIN climbs c
    ON c.grade_id=gr.grade_id

GROUP BY gr.grade_str;
