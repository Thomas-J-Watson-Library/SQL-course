-- identify bib level holds
-- probably triggered by placing more than one hold on an item
select
B.record_num as bib_num,
H.id as hold_id,placed_gmt,
barcode as patron_barcode,ptype_code,
pcode1,pcode2,pcode3,last_name,first_name
from 
sierra_view.hold H,
sierra_view.bib_view B,
sierra_view.patron_view P,
sierra_view.patron_record_fullname N
where 
-- H.patron_record_id=481036477985
-- and
-- the record id on the hold is for a bib, not the item
H.record_id = B.id
-- join patron information
and H.patron_record_id= P.id
and H.patron_record_id = N.patron_record_id
order by placed_gmt,last_name