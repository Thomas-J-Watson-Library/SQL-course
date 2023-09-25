SELECT record_num as patronID, barcode, checkout_total 
FROM sierra_view.patron_view
WHERE	barcode LIKE '2062000%'  and   
		ptype_code = 6 and 
		checkout_total > 49
LIMIT	10
