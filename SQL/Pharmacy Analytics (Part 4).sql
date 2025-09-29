select  manufacturer ,drug from(
select manufacturer ,drug,
DENSE_RANK() OVER(PARTITION BY manufacturer ORDER BY units_sold DESC ) as ranking
from pharmacy_sales) as result
where ranking<3
order by manufacturer
