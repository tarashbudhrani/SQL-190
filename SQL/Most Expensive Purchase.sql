select customer_id,max(purchase_amount)  as purchase_amount
from transactions
group by customer_id
order by purchase_amount desc