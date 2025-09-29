select DISTINCT(employee_id) ,(CASE WHEN total_sum>quota then 'yes' else 'no' end) as made_quota 
from
(select sales_quotas.employee_id ,quota,
sum(deal_size) over(PARTITION by sales_quotas.employee_id ) as total_sum
from sales_quotas
left join deals 
on sales_quotas.employee_id=deals.employee_id
) as ranked
order by employee_id