select unique_queries ,count(employee_id) from (
select employees.employee_id, COALESCE(count(DISTINCT query_id),0) AS unique_queries  
from employees 
left join queries
on employees.employee_id=queries.employee_id
AND query_starttime between '07/01/2023' and '10/01/2023'
group by employees.employee_id
) as ranked
group by unique_queries
order by unique_queries