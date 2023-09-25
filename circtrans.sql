select DISTINCT
transaction_gmt,
application_name,
id2reckey(patron_record_id) || 'a',
id2reckey(item_record_id) || 'a',
description as ptype,
i.name as inst,
r.name as role,
d.name as dept
from 
sierra_view.circ_trans c,
sierra_view.user_defined_pcode1_myuser i,
sierra_view.user_defined_pcode2_myuser r,
sierra_view.user_defined_pcode3_myuser d,
sierra_view.ptype_property_name p
where
application_name='sierra' 
and op_code = 'o'
and transaction_gmt > '2022-01-01'
and patron_record_id > 1
and item_record_id >1
and c.pcode1 = i.code
and c.pcode2 = r.code
and cast(c.pcode3 as character) = d.code 
and cast(c.ptype_code as integer) = p.ptype_id