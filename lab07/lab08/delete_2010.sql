DELETE FROM climber_first_ascents
WHERE climb_id IN(
    SELECT climb_id FROM climbs 
    WHERE climb_established_date>='2010-01-01';
)

DELETE FROM climber_climbs_established
WHERE climb_id IN(
    SELECT climb_id FROM climbs 
    WHERE climb_established_date>='2010-01-01';
)

DELETE FROM sport_climbs
WHERE climb_id IN(
    SELECT climb_id FROM climbs 
    WHERE climb_established_date>='2010-01-01';
)

DELETE FROM trad_climbs
WHERE climb_id IN(
    SELECT climb_id FROM climbs 
    WHERE climb_established_date>='2010-01-01';
)

DELETE FROM climbs
WHERE climb_established_date>='2010-01-01';