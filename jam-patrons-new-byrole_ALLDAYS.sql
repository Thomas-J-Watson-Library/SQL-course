SELECT
-- This query counts new patrons created within a date range by their role (pcode2)
-- It connects patron_view and the table that defines roles
-- and another table that has record creation dates.
--
-- if you want a label on total row
COALESCE(name,'Total')   AS patron_role,
--name as patron_role, 
count(*) as registered
FROM
       sierra_view.patron_view 					patrons 
  JOIN sierra_view.record_metadata 				dates on patrons.id    = dates.id 
  JOIN sierra_view.user_defined_pcode2_myuser 	roles on patrons.pcode2 = roles.code
WHERE 
ptype_code='6' 
and dates.creation_date_gmt between '2023-06-01' and '2023-06-30'
GROUP BY rollup(name)
order by name