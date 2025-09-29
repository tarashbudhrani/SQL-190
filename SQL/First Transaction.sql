select COUNT(DISTINCT user_id) from (
select user_id,spend,
DENSE_RANK()OVER(PARTITION BY user_id order by transaction_date) as ranking 
from user_transactions) as ranked
where ranking=1 and spend>=50
