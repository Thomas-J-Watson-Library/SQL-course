select 
id2reckey(C.item_record_id) as ITEM,
id2reckey(C.patron_record_id) as PATRON,
id2reckey(K.bib_record_id) as BIB,
P.best_title,
H.id AS HOLD_ID,H.placed_gmt,
last_name,first_name
from 
sierra_view.checkout C,
sierra_view.bib_record_item_record_link K,
sierra_view.hold H,
sierra_view.patron_record_fullname N, 
sierra_view.bib_record_property P
where
C.item_record_id = K.item_record_id
and
K.bib_record_id = H.record_id
and
C.patron_record_id=N.patron_record_id
and
K.bib_record_id = P.bib_record_id
order by
last_name,first_name
--limit 10