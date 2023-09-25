-- The joined fields are different data types
-- use the cast() function to treat cpde as an integer
SELECT
record_num, barcode, pcode3, name as Department
FROM
sierra_view.patron_view P
join sierra_view.user_defined_pcode3_myuser C on P.pcode3 = 
cast((C.code) as int) 
where	
barcode not like '2062%'and pcode3 != 1 and barcode like '%321'
