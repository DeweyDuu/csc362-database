SELECT c.climb_name,
     sp.sport_climb_bolts,
     GROUP_CONCAT(cb.climber_forum_handle, ',') AS `FA Party`

FROM climbs c
INNER JOIN sport_climbs sp
    ON sp.climb_id=c.climb_id
INNER JOIN climber_first_ascents fa
    ON c.climb_id=fa.climb_id
INNER JOIN climbers cb
    ON fa.climber_id=cb.climber_id
GROUP BY
    c.climb_name,
    sp.sport_climb_bolts;