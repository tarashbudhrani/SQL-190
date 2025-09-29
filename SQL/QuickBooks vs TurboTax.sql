select 
sum(CASE WHEN product like 'TurboTax%' then 1 else 0 end) as turbotax_total,
sum(CASE WHEN product like 'QuickBooks%' then 1 else 0 end) as quickbooks_total
from filed_taxes