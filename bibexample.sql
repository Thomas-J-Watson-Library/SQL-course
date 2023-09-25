--alias version
SELECT 
record_num,
l.name as language,
t.name as type,
f.name as frequency,
p.name as pub_place
FROM
sierra_view.bib_view b,
sierra_view.language_property_myuser l ,
sierra_view.user_defined_bcode1_myuser t,
sierra_view.user_defined_bcode2_myuser f ,
sierra_view.country_property_myuser p
WHERE
cataloging_date_gmt > '2023-04-16' AND
b.language_code = l.code AND
b.bcode1        = t.code AND
b.bcode2        = f.code AND
b.country_code  = p.code


