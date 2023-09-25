select id2reckey(item_record_id) as item_no,call_number,call_number_norm,barcode
from
sierra_view.item_record_property
where call_number_norm like 'nd20%'
limit
10