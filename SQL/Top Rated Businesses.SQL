select SUM(CASE WHEN review_stars>=4 THEN 1 ELSE 0 END)::NUMERIC as business_count,
ROUND(100*(SUM(CASE WHEN review_stars>=4 THEN 1 ELSE 0 END)::NUMERIC/count(business_id))) AS
top_rated_pct
from reviews