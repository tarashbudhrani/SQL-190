select user_id,spend,transaction_date from(
select user_id,spend,transaction_date,
DENSE_RANK() OVER(PARTITION BY user_id ORDER BY  transaction_date) as ranking
FROM transactions
) as ranked 
where ranking=3