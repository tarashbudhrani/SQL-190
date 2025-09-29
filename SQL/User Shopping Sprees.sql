
select DISTINCT(t1.user_id) from transactions t1
join transactions t2 
on DATE(t2.transaction_date)=DATE(t1.transaction_date)+1
 join transactions t3
on DATE(t3.transaction_date)=DATE(t2.transaction_date)+1
order by user_id 
