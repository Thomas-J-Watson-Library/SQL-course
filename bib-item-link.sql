SELECT
b.record_num as bib_id,
i.record_num as item_id,
barcode as item_barcode,
field_content as item_callno, 
location_code as item_loc,
last_checkout_gmt,
checkout_total,
title
FROM
sierra_view.bib_view b
join sierra_view.bib_record_item_record_link k on b.id=k.bib_record_id
join sierra_view.item_view i on k.item_record_id = i.id
join sierra_view.varfield_view v on i.id = v.record_id
WHERE
b.record_num=1115022 and varfield_type_code='v'
