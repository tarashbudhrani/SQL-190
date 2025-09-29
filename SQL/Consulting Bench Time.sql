with final_table as(

select employee_id ,staffing.job_id,start_date,end_date
from staffing
join consulting_engagements
on staffing.job_id=consulting_engagements.job_id
where is_consultant='true'
)
select employee_id,365-sum(end_date-start_date)-count(job_id) as bench_days
from final_table 
group by employee_id