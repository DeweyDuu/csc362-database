SELECT
    c.climb_name AS Name,
    cg.grade_str AS Grade,
    c.climb_len_ft AS 'Length(ft)',
    cr.crag_name AS Crag,
    GROUP_CONCAT(DISTINCT CONCAT(cb.climber_first_name,' ',cb.climber_last_name) SEPARATOR ', ') AS 'First ascent by',
    GROUP_CONCAT(DISTINCT CONCAT(eq.climber_first_name,' ',eq.climber_last_name) SEPARATOR ', ') AS 'Equipped by'
FROM climbs c
JOIN climb_grades cg ON c.grade_id=cg.grade_id
JOIN crags cr ON c.crag_id=cr.crag_id
LEFT JOIN climber_first_ascents cfa ON c.climb_id=cfa.climb_id
LEFT JOIN climbers cb ON cfa.climber_id=cb.climber_id
LEFT JOIN climber_climbs_established cce ON c.climb_id=cce.climb_id
LEFT JOIN climbers eq ON cce.climber_id =eq.climber_id
GROUP BY c.climb_id, Name, Grade, c.climb_len_ft,Crag;