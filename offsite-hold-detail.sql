-- hold detail
select 
barcode,
h.id as hold_id,
id2reckey(h.record_id) as item_id,
placed_gmt as request_datetime,
id2reckey(h.patron_record_id) as patron_id,
last_name || ', ' || left(first_name,1) as patronname,
id2reckey(k.bib_record_id) as bib_id
from 
sierra_view.hold h,
sierra_view.item_view i,
sierra_view.patron_record_fullname f,
sierra_view.bib_record_item_record_link k
where 
h.record_id=i.id and
i.location_code='off' and
placed_gmt > '2022-12-22'  and
h.patron_record_id=f.patron_record_id and
i.id=k.item_record_id
order by hold_id