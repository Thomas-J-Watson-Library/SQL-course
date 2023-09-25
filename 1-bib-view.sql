SELECT
id, record_num, cataloging_date_gmt as cat_date, left(title,50) as title
FROM
sierra_view.bib_view
where
cataloging_date_gmt > '2022-10-01' and language_code = 'spa'
LIMIT 10
