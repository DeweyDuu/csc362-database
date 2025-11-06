SELECT
    gr.grade_str,
    COUNT(c.climb_id) AS `Num Routes`
FROM
    climb_grades gr
LEFT JOIN climbs c
    ON gr.grade_id = c.grade_id
GROUP BY
    gr.grade_str
