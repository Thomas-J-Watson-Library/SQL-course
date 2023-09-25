SELECT
b.record_num as bib_record_num,b.id,best_title as title,best_author as author,
i.record_num as item_record_num,barcode,location_code,item_status_code
from
sierra_view.bib_view b,
sierra_view.bib_record_property r,
sierra_view.bib_record_item_record_link k,
sierra_view.item_view i
where
b.id=r.bib_record_id
and
b.id=k.bib_record_id
and
i.id=k.item_record_id
and
b.record_num=1643071
and
location_code='off'
order by barcode