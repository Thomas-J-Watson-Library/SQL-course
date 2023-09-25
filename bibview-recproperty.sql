select
record_num,language_code,publish_year,
best_title
from
sierra_view.bib_view v
join sierra_view.bib_record_property p on v.id = p.bib_record_id
where 
date_part('year',cataloging_date_gmt)=2021
limit 10