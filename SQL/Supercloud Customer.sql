with no_of_products as (
select count(distinct product_category) as products_count
from products
)


select customer_id from (
select customer_id,count(DISTINCT product_category) as products_bought
from customer_contracts
join products
on customer_contracts.product_id=products.product_id
group by customer_id
) as ranked
where products_bought=(select products_count from no_of_products )