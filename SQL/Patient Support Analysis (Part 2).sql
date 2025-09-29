select 
ROUND(100.0*sum(CASE when call_category='n/a' or call_category is NULL then 1 else 0 end)::NUMERIC
/(select count(case_id) from callers),1) AS uncategorised_call_pct
from callers