-- SQL4LIB
-- 4. phrase_entry
SELECT
record_id, index_tag, varfield_type_code, index_entry
FROM sierra_view.phrase_entry
WHERE record_id=420908838869
order by index_tag, varfield_type_code
limit 20