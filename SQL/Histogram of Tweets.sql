select tweet_bucket,count(distinct user_id) as users_num from (
select user_id, count(distinct tweet_id) as tweet_bucket
from tweets
where YEAR(tweet_date)='2022'
group by user_id
) as ranked 
group by tweet_bucket