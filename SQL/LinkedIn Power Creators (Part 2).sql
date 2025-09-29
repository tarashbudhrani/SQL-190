with final_table as (
select personal_profiles.profile_id ,employee_company.company_id,personal_profiles.followers as personal_followers,company_pages.followers as company_followers
from personal_profiles
left join employee_company
on personal_profiles.profile_id=employee_company.personal_profile_id
left join company_pages
on employee_company.company_id=company_pages.company_id
)
select profile_id from (
select * from (
select *, DENSE_RANK() OVER(PARTITION BY profile_id ORDER BY company_followers DESC )
from final_table
) as ranked 
where dense_rank=1) as final
where personal_followers>company_followers
order by profile_id