-- FILE: circulated_items.sql
-- DESC: Identifies items with checkouts or browse counts.
--       Run this query at end of fiscal year before running the 
--       rapid update program that resets year to date and 
--       last year values.
--       Save query output for possible future analysis.
SELECT 
'i' || record_num || 'a' AS record_num,
barcode,
location_code AS item_loc,
name AS loc_name,
checkout_total AS checkouts,
year_to_date_checkout_total AS ytd_checkouts,
last_year_to_date_checkout_total AS last_ytd_checkouts,
internal_use_count AS browsed,
record_creation_date_gmt AS item_created,
last_checkout_gmt AS last_out_date
FROM
sierra_view.item_view items
JOIN sierra_view.location_myuser locs 
     ON items.location_code = locs.code
WHERE
location_code != 'www'
AND
(checkout_total > 0 OR internal_use_count > 0)
ORDER BY location_code, checkout_total DESC