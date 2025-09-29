with demand as (
select datacenter_id,sum(monthly_demand) as monthly_demand from forecasted_demand
group by datacenter_id
)

select datacenters.datacenter_id,(monthly_capacity-monthly_demand) 
as spare_capacity
from datacenters
join demand
on datacenters.datacenter_id=demand.datacenter_id
order by datacenter_id