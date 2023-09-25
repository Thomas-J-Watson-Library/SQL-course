select
'b' || record_num || 'a' as bibid, language,
index_entry as oclc_number,
title
from
sierra_view.bib_view b
join sierra_view.phrase_entry p on b.id = p.record_id
where 
index_tag = 'o' 
and
record_num > 2100000
order by record_num
limit 10

