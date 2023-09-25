select name, count(*)
from 
sierra_view.patron_record p
join sierra_view.user_defined_pcode1_myuser u on u.code = p.pcode1
group by name
order by count desc
