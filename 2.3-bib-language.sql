SELECT
record_num, title, language_code, name as language
FROM
sierra_view.bib_view B
join sierra_view.language_property_myuser L on B.language_code = 
L.code 
where	
name like '%Indian'
