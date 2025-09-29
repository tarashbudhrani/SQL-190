select product_line ,sum(amount) as total_revenue from product_info
join transactions
on product_info.product_id=transactions.product_id
group by product_line
order by total_revenue desc