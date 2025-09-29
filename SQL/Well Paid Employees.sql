select e1.employee_id,e1.name 
from employee e1
join employee e2 on 
e1.manager_id=e2.employee_id
and e1.salary>e2.salary
