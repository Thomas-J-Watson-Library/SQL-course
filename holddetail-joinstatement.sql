-- hold detail
SELECT 
barcode,
h.id as hold_id,
id2reckey(h.record_id) as item_id,
placed_gmt as request_datetime,
id2reckey(h.patron_record_id) as patron_id,
last_name || ', ' || left(first_name,1) as patronname,
id2reckey(k.bib_record_id) as bib_id
FROM 
sierra_view.hold h
--SECOND FIRST SECOND
JOIN sierra_view.patron_record_fullname f on h.patron_record_id=f.patron_record_id
JOIN sierra_view.item_view i on h.record_id=i.id
JOIN sierra_view.bib_record_item_record_link k on i.id=k.item_record_id
WHERE 
i.location_code='off' and
placed_gmt > '2022-12-22'  
ORDER BY hold_id