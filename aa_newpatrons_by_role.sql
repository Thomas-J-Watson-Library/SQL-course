select name,count(*) from sierra_view.patron_view pv
join sierra_view.record_metadata rm on pv.id=rm.id
join sierra_view.user_defined_pcode2_myuser udpm on code=pv.pcode2
where
ptype_code='6' and
length(barcode)>6 and
rm.creation_date_gmt between '2023-07-01' and '2023-07-31'
group by name