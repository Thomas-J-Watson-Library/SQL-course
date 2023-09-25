-- SQL4LIB
-- 2. varfield_view
SELECT
record_id, record_num, marc_tag, field_content
FROM
sierra_view.varfield_view
WHERE
record_num = 2043861
order by marc_tag