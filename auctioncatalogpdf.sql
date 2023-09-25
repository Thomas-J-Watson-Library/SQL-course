select v1.field_content
from sierra_view.varfield_view v1
join sierra_view.varfield_view v2 on v2.record_id=v1.record_id
where v2.marc_tag='799'
and
v2.field_content='|aAuctionCatalogPDF'
and v1.marc_tag='110'
order by v1.marc_tag

