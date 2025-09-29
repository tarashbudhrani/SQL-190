select salary as second_highest_salary from (
select employee_id,salary , DENSE_RANK() OVER(Order by salary desc ) as ranking
from employee
) as result
where ranking=2