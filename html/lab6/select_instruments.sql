SELECT i.instrument_id,
       i.instrument_type,
       s.student_name
FROM instruments i
LEFT JOIN student_instruments si
    ON i.instrument_id = si.instrument_id
    AND si.check_in_date IS NULL
LEFT JOIN students s
    ON si.student_id = s.student_id
ORDER BY i.instrument_id;
