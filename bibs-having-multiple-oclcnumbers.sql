select
'b' || record_num || 'a' as bib, count(field_content) as oclc_qty
from
sierra_view.varfield_view
where
varfield_type_code='o'
and 
marc_tag='001'
group by record_num
having count(field_content) > 2
limit 10