select count(policy_holder_id) as policy_holder_count from (
select policy_holder_id , count(case_id) as count from callers
group by policy_holder_id 
) as ranked
where count>=3
