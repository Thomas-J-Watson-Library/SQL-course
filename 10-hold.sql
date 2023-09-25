select 
id as hold_id,
id2reckey(patron_record_id) as patron,
id2reckey(record_id) as item,
placed_gmt
from sierra_view.hold
where 
placed_gmt > '2022-12-20'
order by hold_id
limit 10