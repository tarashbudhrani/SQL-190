select app_id,
ROUND(100.0*(sum(case when event_type='click' then 1 else 0 end)::NUMERIC/sum(case when event_type='impression' then 1 else 0 end)),2) AS ctr
from events
where timestamp BETWEEN '01/01/2022' AND '01/01/2023'
group by app_id