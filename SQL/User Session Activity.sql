SELECT user_id,session_type ,
RANK() OVER(PARTITION BY session_type order by total desc) as ranking
from (
select user_id,session_type ,
sum(duration) as total
from sessions
where start_date>='2022-01-01' and start_date<'2022-02-02'
GROUP BY user_id,session_type
) as ranked 