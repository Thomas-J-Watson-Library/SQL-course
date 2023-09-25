SELECT
record_num, barcode, pcode1, name as Institution
FROM
sierra_view.patron_view P,
sierra_view.user_defined_pcode1_myuser C  
where	
P.pcode1 = C.code and
C.name like '%Museum%' and barcode like '2062%14'
