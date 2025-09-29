with customers as (

select customer_id from adobe_transactions
where product='Photoshop'

)

select customers.customer_id , sum(revenue) from adobe_transactions
join customers 
on customers.customer_id=adobe_transactions.customer_id
where product!='Photoshop'
group by customers.customer_id