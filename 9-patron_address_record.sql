SELECT	
id2reckey(patron_record_id) as patronID, 
addr1, city, 
region AS state, 
postal_code as zip, country 
FROM 
sierra_view.patron_record_address
WHERE 
city = 'NY'
limit 10
