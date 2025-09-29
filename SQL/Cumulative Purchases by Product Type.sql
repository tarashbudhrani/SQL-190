select order_date ,product_type , 
sum(quantity) over(PARTITION by product_type order by order_date)
from total_trans
 ORDER BY order_date;