with final_table as (
select activities.user_id,activity_type,time_spent,age_bucket
from activities
left join age_breakdown
on activities.user_id=age_breakdown.user_id
)

select age_bucket , 
ROUND(100.0*(sum(case when activity_type='send' then time_spent else 0 end )/
sum(case when activity_type='open' or  activity_type='send' then time_spent
else 0 end )),2) AS send_perc,
ROUND(100.0*(sum(case when activity_type='open' then time_spent else 0 end )/
sum(case when activity_type='open' or  activity_type='send' then time_spent
else 0 end )),2) AS open_perc
from final_table
group by age_bucket