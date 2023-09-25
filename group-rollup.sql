SELECT
material_code,count(*)
FROM
sierra_view.bib_record_property
WHERE
material_code in ('s','a')
Group by rollup(material_code)
