-- All active licenses for 136-174MHz and 400-520MHz frequencies 
-- (Baofeng UV-5R frequency bands) within 1km of The White House 
SELECT * FROM fcclicenses WHERE ST_DWithin(
    geom::geography, 
    ST_GeogFromText('POINT(-77.036575 38.897663)'), 
    1000, 
    false
) 
AND (
    (frequency_assigned >= 136 AND frequency_assigned <= 174)
    OR
    (frequency_assigned >= 400 AND frequency_assigned <= 520)
)
AND unit_of_measure = 'MHz.'
AND rollup_status_desc = 'Active'

--------------------------------------------------------------------------------

-- Count the number of active HAM radio licenses
SELECT COUNT(*) FROM fcclicenses 
WHERE radio_service_desc = 'Amateur'
AND rollup_status_desc = 'Active';