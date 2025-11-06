SELECT
    cb.climber_first_name,
    cb.climber_last_name,
    gr.grade_str
FROM
    climbers cb
INNER JOIN climber_climbs_established cce
    ON cb.climber_id = cce.climber_id
INNER JOIN climbs c
    ON cce.climb_id = c.climb_id
INNER JOIN climb_grades gr
    ON c.grade_id = gr.grade_id
WHERE c.grade_id=(
    SELECT MAX(c.grade_id)
    FROM climber_climbs_established cce
    INNER JOIN climbs c
        ON cce.climb_id=c.climb_id
    WHERE cce.climber_id=cb.climber_id
)