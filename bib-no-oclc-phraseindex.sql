-- This query may find bib records that don't have a corresponding
-- entry in the phrase index table for index_tag='o', OCLC number
select 
id2reckey(bib.record_id), index_entry 
from 
sierra_view.bib_record bib
left join sierra_view.phrase_entry oclc on bib.record_id=oclc.record_id
where
index_tag='o'
group by bib.record_id,index_entry
-- I think the following criteria will find null, space, or bad values
having index_entry < '0' or index_entry = '' or index_entry = ' '

