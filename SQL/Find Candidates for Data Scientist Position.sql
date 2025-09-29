
select candidate_id from (
select  candidate_id, count(skill) from Candidates
where skill in ('Python','Tableau','PostgreSQL')
group by candidate_id
having count(skill)=3
) as ranked
order by candidate_id 
