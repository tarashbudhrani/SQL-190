select manufacturer , count(distinct product_id) as drug_count ,ABS(sum(total_sales-cogs)) as total_loss
from pharmacy_sales
where total_sales<=cogs
group by manufacturer
order by total_loss desc