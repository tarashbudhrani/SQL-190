with final_table as (
select user_id ,emails.email_id, texts.signup_action from emails 
join texts
on emails.email_id=texts.email_id

)
select  ROUND(sum(case when signup_action='Confirmed'then 1 else 0 end):: NUMERIC /count(email_id),2) AS confirm_rate
from final_table