select 
publish_year,
left(best_title,50) as best_title,
left(best_author,50) as best_author
from 
sierra_view.bib_record_property
where publish_year = 1700
order by publish_year, best_title
LIMIT 15