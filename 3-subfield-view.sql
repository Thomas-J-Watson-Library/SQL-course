-- SQL4LIB
-- Exercise 3 subfield_view
SELECT
record_num, marc_tag, tag, content
FROM
sierra_view.subfield_view
WHERE
record_num = 2043861 and marc_tag between '245' and '299'
order by marc_tag, display_order
