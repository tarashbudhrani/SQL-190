with average as (
select title ,ROUND(avg(salary)) as average_salary from employee_pay
group by title

)

select employee_id,salary , status from (
SELECT employee_id,salary ,
(CASE WHEN salary>(2*average_salary) then 'Overpaid'
WHEN salary<(average_salary/2) then 'Underpaid'   end) as status
from employee_pay
join average
on  average.title=employee_pay.title
) as ranked
where status IS NOT NULL